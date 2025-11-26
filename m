Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 191B31E572F
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 19:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764186774; cv=none; b=WjbK29yyy25UD4hMyJWCA8XYMlBKm/DVWU8lRkjUAOhAHcFAN9mhEPVkIVgiZ9yrScjwn7OAuf0DrFNx/oSZYuS4pRg0KMvWyUb3u1a2BkkErPBaxnTt+urqgk4IbvXusA69R/yp7NV+OJOGS0F2vGh/ysK3UYatGm79tcwqEFU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764186774; c=relaxed/simple;
	bh=ozP8CnTsPUoOaBzl0wxMhPBcZxl0XPJ02NU1izKicvQ=;
	h=To:Subject:From:Message-Id:Date; b=EHXYKB248aPZXsS3ALlyQwqH1hPx6KgsFEP3jSV6fX843flRFG5fjsOJUAGzFBFY0E7QVEV3Qh8PS4dsYz1OXAYDmXlWmo+DhNm57HYHJp8cSHsCQ2p/7XVhIjuzghVgy+TZUofLuC9LAbAip1CuLuH2wvNpuDM64ZLzhGRo0pU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lg2gFImw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lg2gFImw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9B9CC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 19:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764186773;
	bh=ozP8CnTsPUoOaBzl0wxMhPBcZxl0XPJ02NU1izKicvQ=;
	h=To:Subject:From:Date:From;
	b=Lg2gFImwMHAf6KV3yfUE0MFGolHci1JQ/S/j+lFRoT2IMBoF7bBeZx+CEX/ZmAJ35
	 6SkrlcgsRBLrrbZjuKjGzk/GjxP/R0aNgYh15byA0Li7uFuvmCb6oHXpVKS1MGfw82
	 m8QclrJDzvFjDlH5OFaLFHXv5Baimwyy9r5L8gcxPh07J0TVACjzwA/ArsgBDx9O0j
	 fxq1FgPllbdkxJQbQnaXbOwoj5/idKMBu2rLXKMYiNUnmk+MgKTFMU2tL/RYOWW2sy
	 JCAGCMN976qrRPTl/C5pAGZDHR00gZ4jzAeciQkgf2CspDWWCMB8acjQbDgETuM4cL
	 j1rwcOOxICqUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9498ED1118E
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 19:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176418677359.10510.4234275933934780886.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f09c1e7556ee1d31cc5d4be0ec010bf63f73aa8a3b154e40810e2ddab33315f2
Date: Wed, 26 Nov 2025 19:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764186773
