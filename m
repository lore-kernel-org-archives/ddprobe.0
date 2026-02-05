Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34AF2286D5C
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 15:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770305034; cv=none; b=JZ2DZDJeZ5Pp37YbYadj2DEo+hZbm1uqkVBH1drxZoA5K5aQ9LD5/UDiqEZk419fiW4iZWgHeORfD5sC9xYG/VJjNBplMsmXXmkH3MgkDDyY9oaaBnTnZ4S2DchHaIFRHDZVzBvRXijg4SLVXCethwO0T3jDn5ld14NHtE+Om44=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770305034; c=relaxed/simple;
	bh=kuE3i2MiFmlI2xJiMkFNMrSYXCt6cBk1iCIq0/KCXVo=;
	h=To:Subject:From:Message-Id:Date; b=YTpHzsLEi0rsgQcIkKUCTI9jSXjwCIdBQwQaeGaAoKdNMpdROh5ZzyfxnvNGGTUX5R2q5Qw7KTzT8T1lvdfqUV/JIW8qh15EzXdcGa/hLaw9W0k+SzK5Ea2s+zBC3Pxm8rcsFwh2jxDf0/uuVFmH9efZG4GnA4OAwyvxgoGRm/A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GBeTYiC7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GBeTYiC7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFFACC19421
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 15:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770305033;
	bh=kuE3i2MiFmlI2xJiMkFNMrSYXCt6cBk1iCIq0/KCXVo=;
	h=To:Subject:From:Date:From;
	b=GBeTYiC7FzvFvRbcMDCpNstsUy/jek7m05WXIqLfBC8mRYjcmTQa7gH12zvfIlCLP
	 /LtVC8oVm0vJTcsQ4g+1qs+6d1gamAALcN8XAYUBhYHHD5AMEgmj1iMdP94E/Zpo0G
	 MxmDaHxNF97qsQzNLdF7oKOJiKq2D7TqLuv3/+3TmrObS7p0C0bBbImX0p67QbAmOO
	 JzbxJbppREoxYA0cbWX7Tn5lDndUaXRVY4GTqY2VGHj00TG5tmzac0w+OCgHv+CK72
	 lQG21Q+wgD0P89d9EZFP4Fb2YXM1nSQWp2/BwA+WNBiTBzC1AqkoDJWZxM1L5mUA8C
	 Ojm+DWr/T1/Aw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C996E9129A
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 15:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177030503362.9732.9570529725140704914.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 369c271a407a6591302fcccf6d2f9cb0e0e9cff1238e69adb4523939eea53640
Date: Thu, 05 Feb 2026 15:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770305033
