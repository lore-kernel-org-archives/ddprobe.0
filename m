Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58924339B3D
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 23:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790724634; cv=none; b=Nykw1AgIeXSiFVG3lhnxPTKqOQSDZDlzdIpfhsM2ONchjaCvrsTRftSVol1P75S0NKxc242Kj3vC5otJ6wc46XMWFEylsKjABqBr0iU9LmsnFC4fOExSeeQ+l0HoTaQfrAgFIDHl0LFS2zsQKQ3rto7MetZc2ireRmPhTeAduY8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790724634; c=relaxed/simple;
	bh=2/3f57Pl9lfUZZ1GrrdAVsmddlBHvAhwfKeHAGxGY7c=;
	h=To:Subject:From:Message-Id:Date; b=csmJUE15GQ2oIK47HplmZxkmOtYm1x7fb0FyUN51zrv0ETITRLRRx1a5BANnTbTRb+iZmLG/XpiRWU5PSdc335HVGi9z6CCsfHTLfu7LjduZNLM+S4fP7nNZXzWLZnNpzPpvBjtbJuntGt2cmGlPC6eOeTcHJG0pcCbsxlJkA7E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OUMpWSPE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OUMpWSPE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBE53C2BCF6
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 23:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790724633;
	bh=2/3f57Pl9lfUZZ1GrrdAVsmddlBHvAhwfKeHAGxGY7c=;
	h=To:Subject:From:Date:From;
	b=OUMpWSPEEehI5W6Gf+KXFfy/BnMN2ibqV1Nq6esmNiaM3ASJib+vRgsCf4RHJY430
	 3npA/Y7idtpJb6O0VXmpMm7KO7Od2PWGIMeNXVk4a27nQa6Cd/51rEcrJof1ZVmzAc
	 SqJDvYyp/dfPC05gflpqrPOM82kEXw7pib3GeMxWfD4RjBxszaFSukORcQp9cd7jPr
	 YJ6IpeMm6f9IEurJRsOXO36xpOJxxojuqfePegx/hHzI1jVvYaO+DDfxjbnjwM9KWh
	 tjAA0oAFnv4HvwG2JbVRBbGDeZUNcucmTXcLIdDDv69XfvIOJJcAx2WPpIlhr8CcgM
	 nFBHDeR5rrJNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9816CA5FAD
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 23:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179072463368.28946.3108699899460297833.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba38efeb7a871760771d81282af382ae807234949f0a26d4ec9ee7718e62be93
Date: Tue, 29 Sep 2026 23:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790724633
