Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2630D359F8B
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 13:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767965034; cv=none; b=I2/OTscjtjsgt0lL2uKsfPqoNvNIi3DbRX//UbnJPabo4MX7eaxgitF94RrmghVU790ldc40XTnH845ZAeZiTNoLj3Ed62nakZ7j1L65vlMNnhALSFf0Th5e+ZbvYmFMrNeSnGm2vKSr+ZTb0VxEN/ZTMtFsqKzK93lmPs0rFEI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767965034; c=relaxed/simple;
	bh=2EREnJPmSVerbq+WPYela/EyWVgPc0Km7zSWBoYAjQQ=;
	h=To:Subject:From:Message-Id:Date; b=bLxhGYcNb8eVAP5eIEbFzuAcGz9zVKQLq0xlOmXk3tTi6++VT0+qaF/Dd5SDsCEikA+FGlL3PFH2Jo7tD6Eyc+vUocj3+IJh5JOdqIvjWNe6qRTTCVdEABuxvM+pUxhmW7gx3+IUxhws16D9pYS0uyNe6Cpj+UeNsqycDihOTq4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BuYmjKSb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BuYmjKSb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFC0FC4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 13:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767965033;
	bh=2EREnJPmSVerbq+WPYela/EyWVgPc0Km7zSWBoYAjQQ=;
	h=To:Subject:From:Date:From;
	b=BuYmjKSba/5/9SxpOEuB2RZSzar+Y/qC+PTrGbMWBixBmDFEokZCi4fPDyR7/TWJT
	 +qkr3WVRjA1sTGre2GgjGv2H+R79NoD0EzkcZSeWS16/e8JDimoh9Uqnc0kat5A9MW
	 Gba+RHrptaiD4JxFjl0xWqerl5Z8qRcJnTZF08loo6a2cCB2YPDPkMKBd7/a8ktXmy
	 gOZV3Ge9griQTRBCBJxhcaFS/x5PlCWC5+mCjxgcvGWSAIBm8t29VQzCqX80stEeg8
	 WdZlxSkXJdesJK88IRv9AfCxM1IvPXEIxoThaj+jW7gEsjaT9bnwimV6x91jr8XBqP
	 HHIE4NGmkrk6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99CDAD1A623
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 13:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176796503361.24028.16462386951837594265.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1af23d640fde750d1fbf2bdf421d34fad139165822ee9423dc4cb20745457e94
Date: Fri, 09 Jan 2026 13:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767965033
