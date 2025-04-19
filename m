Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55A7EDF60
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745069995; cv=none; b=qrkBE+wyukimyUYRWdxAc1xBTKNWIVbgdioSgBm3jfSLjHINNY9dnfog9wB2lR+6z0joNeYd31W12Y0fXv0Iv/Ir3LaPB0sKScQGXo9zQzgYGgvDceejJyDikNNa9ibbhTWnTGSxXLwYPrnawhLuMqk/ISna3t/ZO5E4tUEovGg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745069995; c=relaxed/simple;
	bh=f81xS3OPUwGd4WSiU7ktcj7ZKXblzpUFjBvulFCxe58=;
	h=To:Subject:From:Message-Id:Date; b=Ib2e8Y0FTr8Yk8VEUvyT2K+4NBIVKvxqCxxizGFN56tVG3vNEhelzeqdk/w9LOJ4C9ALYq9BGQlFO5zZkw1VMDq6U+IZ62RIqyYm2R9A/26DMzFaCPR7tghQzQY9klApPB6UPehoOIFu9zaTCnIbjao08wmOoQ8M+5jXhPZZJIo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YxF3DNqT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YxF3DNqT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDD89C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745069993;
	bh=f81xS3OPUwGd4WSiU7ktcj7ZKXblzpUFjBvulFCxe58=;
	h=To:Subject:From:Date:From;
	b=YxF3DNqTkP1MApxzWXmpS32BATEx0AgBlXL7BrUCDkwfXPE4sJzZBtaIQM3dH3P7K
	 3uZIu+kx3uN5AY3xCo3piGqYRVLcVtREF3LBL4HUwyRXgKaXqrjhv7fBhnBItbKGy8
	 +u+eq/pKF7HXC/bnHz6x/+fSxfyciPbyPlliR6Yhbnn66ujrvtvotDICLCK7v4u5l/
	 kFC73UmGO6u74WeXaBAQrXVnsevvJBL2ke6euCPew9RtCNhc1JUurhnhzNGWaCHjWW
	 rYhDVxUeRdxt7d9iqboLpfpHgEt90MYeRGJFWcGPvEd+mahuEPG8odrAW1KgDk0UC4
	 k9EN4mPulr23A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7DFBC369BD
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174506999365.28057.16992333480578995321.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 180c10485d75985bffd5534406831da041929d6e84cbc1262b16653f9999894e
Date: Sat, 19 Apr 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745069993
