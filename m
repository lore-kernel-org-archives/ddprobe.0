Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5055E7470
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 11:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714908743; cv=none; b=Bn4VRFSOwvZGgPF1oCKpSSTAUN50CAxO8IuObxWVCAjRXl//NHcgQ+cwgpuSdBR0C9OJwg1kCe70OWPRIPPSGb5SbodL2kEvYgNqnO7eUtKZVgNY5Id92z+qkxMq5Q4eJWsrQvJzgZxsDDK7+bGtCs8A6WTuC9TerNiGUttxr5A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714908743; c=relaxed/simple;
	bh=9Jivras0HLaRDXW2cnFfVLSElb4nYSKjic83PgEAe/8=;
	h=To:Subject:From:Message-Id:Date; b=bb/DIabQPULX3XpbBcD1sUlpBsZ2NasqKMLd50XDih6xBVWt+86x+b8fMrFNE7i3QfWA7grdhyUcwVMaJ9pvTQIXUDEWo8MFWvxQgC061+0WNKywY2Sy1h0G85xWu1yGVn8L44PV/6qYpayNm08h30ZTXcXr2GYiUhWO0ZA8kJA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hoXDWKFc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hoXDWKFc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF822C113CC
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 11:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714908742;
	bh=9Jivras0HLaRDXW2cnFfVLSElb4nYSKjic83PgEAe/8=;
	h=To:Subject:From:Date:From;
	b=hoXDWKFc5H9OMme7PWNOZsrQovGTnuYPy6mBym6xfLCBfTOEFBGvXnpGCJgSnc3AE
	 43+PtKWLyBESBBIonE39OzrHuf2NA6+eZEHCVdZ1KUKSlfaHUkYefoWAE9112c722K
	 R/P86IzWZf2Om8D9QzkV/5jb0jReALNfhzDAEbTXQyiTvci6ctxtkbmb8dxq37zd4L
	 C1NnIRiRGZliDwhgJh5HCw+4qEIUbSdOQLVTH8wM0V6vQRTfzo0jrTJ9ZTzDVGkGY7
	 0gtbBr+fSsSt/zVu0i2AC9agYuobpKXSM7ITP4aT5SoaipbSdNKZ3Ryhoh4hcpTp2B
	 UypranUYRBh0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9C60C04FFE
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 11:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171490874279.29263.3489069998282676189.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c0f38930b8b6a402569c97f061a0487552415d62e556acc6cf0b048383919c3
Date: Sun, 05 May 2024 11:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714908742
