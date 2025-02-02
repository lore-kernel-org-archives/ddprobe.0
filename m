Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63E0479C4
	for <ddprobe@lists.linux.dev>; Sun,  2 Feb 2025 01:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738461356; cv=none; b=ISp4gED9UxGiyW4UroplIAw1J3nGWLuwLoennj6P6jsUPZlw2dnuPp1LqD2SDrIHW/pvvaFzw/wrEN5wwjWtL2EtrAM0Id1ZYNA9/DHbJyNe/DfveXFCCvabFHPnNx/Lf6JDU83MaIXFI4TQQuWukNmcHAlsAtSM/zpJbFS4qo0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738461356; c=relaxed/simple;
	bh=rFBZFxHHsRSm0KicGJb3NyKuJ1CHUy65bB+7dOdY5qg=;
	h=To:Subject:From:Message-Id:Date; b=fon5Nmk5euJR1BWUE8EBn2STcOF5TO6Ydeg7L6u7/1sBp9vMhKlSZuSTP2mAGTO/cB7gUZWf9/miANHF0NZuxRuSvzs+nkkBFN91AagAyIl8DFRjZtGFy6B51evk3V5tC6h9IDwyleXOvqGlasOHS2YSj4qRlJgb5DBlDD2yC6Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l3MFtOnu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l3MFtOnu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE33AC4CED3
	for <ddprobe@lists.linux.dev>; Sun,  2 Feb 2025 01:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738461353;
	bh=rFBZFxHHsRSm0KicGJb3NyKuJ1CHUy65bB+7dOdY5qg=;
	h=To:Subject:From:Date:From;
	b=l3MFtOnuVzrlb8yrfOWd+B2o7q+puR36hK2aA2C3l2YBScdHDuFU1sP8PYLWG3VU2
	 +iBn3lKyGBi74ig4Z1/mO1qrmPQ16gFUKBdXXg3J1zVHHtqX1uuYo6buQHFCaMlWqE
	 62NsbXB4tkeWImA5DjTIiKjwv2UZajNRsH/808QkpAf+OI34aUujedFjWO9n1ItDwQ
	 svMpXWFQQFMn+ovcZ2UWKiefFFMYXoGK+vdky2ynafEN/bmZbXedsJsl5hcNVMtuWQ
	 6Wf5eAk1hF933S2Bqm6KDr61hpbbBKrxVjuQ8vMd9DSD/P7oRka5gLcNUkyLvAWeRw
	 49sE4ynmTQVeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A352AC0218A
	for <ddprobe@lists.linux.dev>; Sun,  2 Feb 2025 01:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173846135360.18014.12855659929144151483.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e650f1874c702bc3527a9ac49ad662f34ae432506b864c1bb7396302116bdd4a
Date: Sun, 02 Feb 2025 01:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738461353
