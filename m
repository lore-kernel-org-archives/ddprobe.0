Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 565941DDFE
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 01:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786496434; cv=none; b=t3X3T17ZjfZGahSZGcdsk7l/WLY61VUYD2YzND4RfhEnudRZmjLA/uhdQzhct9dHwcWH4crIYV9glgUYs/P1f7Uj5rW8EPlPY6nyTAnuHlGfStKaXn41PnBdg7v/pAidt0nioO75kP6KzubTwmC1FkLFgoiwJVi6a26aLNsy7ew=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786496434; c=relaxed/simple;
	bh=S6Sx34c/vJ+tk8+nze5tjxY8vSvBpK5PCjl11lElDlQ=;
	h=To:Subject:From:Message-Id:Date; b=gpp/zJHcFGHWVyIttkbxW80P/UTuW59Bk7sAvg0frRGzI6X3tAvfDgEGcWQVB6IVvaLdX3RrdR8JA3cVCGx8nK1LtG4aDL03LR95AnHWjSj1rKtV7f/GPbxy3T1M/A8EOYT4EhL+FQSIQ3/8H++3squCFwNi8Pv3e1nsjsd4EJo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Sux+GpY0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sux+GpY0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D10C9C2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 01:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786496433;
	bh=S6Sx34c/vJ+tk8+nze5tjxY8vSvBpK5PCjl11lElDlQ=;
	h=To:Subject:From:Date:From;
	b=Sux+GpY00sFXryphVI1TQOr4R+Zy61aMHmA4weco29poDQCTHRFvl4OMQ878HiNwK
	 0JG8nIDWaFWowS3d3+Z/z2OaMqSSgQGbL0oHEAL+Zgobi46GhTeq82QugGo3MZ6SRc
	 ERsYjOEfq/6zR8N23gTOPVuJhstVYXZIMG33bO6pX0z9jgUZ0kwG3PIIeR1RJfh4cU
	 JGz76e3L8YDcIN7MX5SKLeda0f31cQncFNONUE5eEWTl3D8CqjfvxN/+AEYgERijy7
	 7kJKFoY8UJ1YQ0EYEOCtCNDf1DXz0/Oib4BHtTSeWT0YF3pzrSRdidp4Gckvb8ySeu
	 CwAjg0R4BBt5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE7F5C5CFCF
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 01:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178649643368.7483.12215653396704658519.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74d4ae547c38c8a61810b8a50e97758d85dcf9cf94f91b9606947d6ec4c81c6a
Date: Wed, 12 Aug 2026 01:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786496433
