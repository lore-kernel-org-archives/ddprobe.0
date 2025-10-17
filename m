Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CFEE223710
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760739594; cv=none; b=uAWE6J+U5rQuwxTEZT6KpQPU8PLEwNxbnUfvfucZAfadeMJUXovQfEZashxK7BPY882xDYr9hHhfbMRlo1h0VtDWxSofzEvEfCVjHzTh3SGMsAlQrCWeRgtDlZVWdSiH640EA4jdzmeduaum814PMaaO26baJjSV23ux0YouFqs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760739594; c=relaxed/simple;
	bh=z6+/v3gwYgxx1z8TAMxnd2r3PyR7yjgJaWPLG16ZnVY=;
	h=To:Subject:From:Message-Id:Date; b=QE4K1KQpepeCFsl8uI2W0Rqi9G/cufYBf/p7M07nYP2JRZA3lnBtKrgQbLiXECh6jcV8MabMlckF7EA9avRNSrA+PXdNwUrx9oekqlFncAr3xRk/neVWNZlpEa553tboWim3DGwipjsJ9p+RsM9wnjbZYzyA3Vo71gEDIjRr2QQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZDgYOLNm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZDgYOLNm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A31B8C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760739593;
	bh=z6+/v3gwYgxx1z8TAMxnd2r3PyR7yjgJaWPLG16ZnVY=;
	h=To:Subject:From:Date:From;
	b=ZDgYOLNmmQC8VqJRKgadhy16IfUaniAbLvyIT5vMF42MxcvXOx+tp942Vg9/Y3lJD
	 Pa+1XV5YyC/vd4d5Z1Z0nnFrHN7fZYf6QUAQuPp3i0tHm2LgB8CznoyR+/XfRgQ3+F
	 sBwNbe0o87hZNDJe5wLhhr02f9mokcF+C+SLQWbexlBvz4EamGWaPVJFT7TwNLfpcT
	 2zSEsMZfAGfdA4IAWGYSg/jMJFNltYjimgOTloYsWDCW6nzuQhk4T8dMXCItbZF0OO
	 03Rz/a6Cx2VDFkdoo3ZQIR858ovBmALgrYCgpvncwBdHuMOvsnBVB1PvP/a3NoufWr
	 N556LpFSgTXWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90562CCD199
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176073959358.5234.4688832870264200915.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d343442f279d51a3fbb9c941d0f8a048c016e36ecb943bc10e90702f7dfbd627
Date: Fri, 17 Oct 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760739593
