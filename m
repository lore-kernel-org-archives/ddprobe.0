Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68D293BCD20
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 21:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787953234; cv=none; b=WHB640OtG0TsEpfmPyuL08AxCSlirGtMOgt3i202DRJT1+tesjwP6RNBflP8Ly3J16pJAjOeFHtZIp/VzY+P6CkHzVz0iXqC5jbJIks0QcfwH/hElK7hQFKwdF5v927Q/ATjoV5XAsZ/2jIjsI2sLkAY7yCEi3cBQDJ2PWm+6qE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787953234; c=relaxed/simple;
	bh=NP+qXDDR4R9UkYbtG1t9796Wy17i3ZGW7ovyQPhIa80=;
	h=To:Subject:From:Message-Id:Date; b=Tf1i6UkQ51B8d48JS6CTNQB0COEwoBPM7r62mgDrfyVDjVBo9w0OuZQpD99YceDte7pc+5lNnCVH2M8h0r5d5zeMpdL/ULDiws9dCD+LllKPuPM8arNfCUntPlomWNMR+yTZNq1k1YwdPI3APYX9MgLuJJz17PspE0zTgi4joCc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iwVmkj1P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iwVmkj1P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCD00C19425
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 21:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787953233;
	bh=NP+qXDDR4R9UkYbtG1t9796Wy17i3ZGW7ovyQPhIa80=;
	h=To:Subject:From:Date:From;
	b=iwVmkj1P+nmc9eEtUmTvjBQDWstDv119tG7RNwfFylXwPnhOX7bzxHeTcZOVHWWvK
	 RbXE+0xnyzuZx+cBv1xdURdocXDlEuOZ5sNLCdWfUVDwRDdVLqj/nIK6x6vmZw3mvv
	 EIhMXwbcbDUHYTLXwd+vpkMYTvag6m3zLHLFlrt4Cmgvm1t2uKglA95yAnyzJI4yRx
	 YKe/2RpgYgv0DemOnE78mBNzRS7SKwn3RluHTrsy5KUYA9vwiZdOEIRgyt+aBNMrz2
	 ubDb65C5UC/+fxKeSnXgCNLNlEAciAK/lCJYOD8qG7AttXPSl3Guj1QMVrP1qhz6Ug
	 pcO/XLt2RzrMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7FC4C61DCB
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 21:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178795323373.26219.14217979413961065954.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8a252093d54d232f4443f795fecea84234ad7164733020af3b5b164cddb178a
Date: Fri, 28 Aug 2026 21:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787953233
