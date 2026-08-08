Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 621C52EBB8D
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 23:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786230634; cv=none; b=q7nRHog/helRybsjpEWptm8b3Omp24yGpug3axTzKx/ao1F+JbdMOKCxN3yLfHZ1QCuoapK2gTvc6Frt05wVfLLOH5nmEnNNSmkBGrW86Nn5908xrOuLD9lg9FenAgvbf1M7ht2aWwEpEs3/0d4T2mgDbSomT70hFMnUVpLTGQQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786230634; c=relaxed/simple;
	bh=ij1bptK92XwrzhWMGFl2BpjQZIZI3jVIx0bKQoBlNiA=;
	h=To:Subject:From:Message-Id:Date; b=uVINA0VgEeKpbtYZGURAf3AG0vxiLxzNibFsNHEDSstYJ7ZitCorM/p55393LLd8K8GCiA/UEOi+8EG86LknXThFfWe9ynEwhFt6xmNboQvPx+KhZ2BOBU0OLwPBMKihQb1d7jGZMWmBGrTpTGLdbDBdmHYR59uWHxNzFGSchUQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NNybd04C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NNybd04C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA6E2C2BCF5
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 23:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786230633;
	bh=ij1bptK92XwrzhWMGFl2BpjQZIZI3jVIx0bKQoBlNiA=;
	h=To:Subject:From:Date:From;
	b=NNybd04CC4Vm7qAGAwBXcZvtXujnSIr6HB2rPJ5UzLAOSW+51o+wWBw+ksM1SRQCC
	 kIBUxrCkI32Iz3SnHnJ+cTVhJxc9f991HWw6w1X+De+/DgSTWULxSS+WOhfpHQbzF1
	 8uh2UNtOf7qR1IDZcmktDrSLQiG48ZICoxvhwfQFANl9hjH/5y5N9IwhlQ/OyGrhiA
	 NzjslG/++AUFeLpmHDpWZHRZj33Ov6lzSGvhotBwOLGY9PgWFn1xPy8e9a4rFk/Upk
	 NFjebhhOtvlEfi4W22ueYSiykTJgz3cyqhZ9YcE1pb+Vje2FwWsV+uaNCS0zZoDnSv
	 baLwbY3F9AQvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0390C5AD48
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 23:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178623063368.30766.17589007533587468714.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 444709d50ceef3b29c487ce021b32d059950757adb0cbe7b6303a48945992722
Date: Sat, 08 Aug 2026 23:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786230633
