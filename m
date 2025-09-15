Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 129582F90EA
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757934594; cv=none; b=kxAonrPZtGGWalMUzSus/ZFcDbZfmCLpB4hQvCbtZLL2IHNanEOfDYNpTHwWddFo2RuAbbIBwcJfl4GpCP/Vd5G+vx54Gp4Asa5p31McFdg5c8HnnEMOz0T6y2AdmJOviblk2mVLt07fA5GpXPEMIAdWL9TA+4Y8+VT1+z58IX0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757934594; c=relaxed/simple;
	bh=l0Hx4Q5Dbd4e1w3JCjphy2bzBbhf14i6ST3q2gAEIGc=;
	h=To:Subject:From:Message-Id:Date; b=qTDMqtzXr3oqDju218SR4gYQikKrUnoW1MIyGqXBe0HMkEdl87FnS0qFOiUhIQMVAi46FzZVO8d10mzRG6vOzgcC8OVHs8lsk990Z35wmtsQMOvLHHTJvy+wly9NYX4n9WmZuWgTapOCF+Fh0HipWrFI5bNpKgZH0RgZl5BHWHo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k5HZvw1+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k5HZvw1+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0196C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757934593;
	bh=l0Hx4Q5Dbd4e1w3JCjphy2bzBbhf14i6ST3q2gAEIGc=;
	h=To:Subject:From:Date:From;
	b=k5HZvw1+/Iq/nsQVfMIlwqLY8F2X7/M0Fo92+MbpPskpREk30Nc8XqjYZqqJfTttB
	 GhD5A3gZNMmL9JNYvZlfpYDdeaudZaVcGjYodo0MJ5AvkFarlJR3loqoUZZjYkRXvq
	 w5TQWiEYcs01zEZhK9YHMROzT/eOVsCitoTYzotxf2xBTDQOt05a2tck1wvlFQuwEG
	 EFqMovGQycYeA8KcZizkr2j1l7kOSWwmoHPGQE0r86WZ7U9L654izXRaZgWZIfrdFX
	 h/rbev/tDUmS/ZALTUEO2VV8M6cwXb5AL7hhlMo0EkrjraFQDigW3Cii+kVy8AixkA
	 3VudNpwHtKRFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB36CAC597
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175793459357.608.17833290648843315438.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3032355dabbbb2072cf5d7c0dca74f3a38ef2f86e14366002ed0e656e3e3b37f
Date: Mon, 15 Sep 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757934593
