Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C5953A1D7
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 04:33:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716525203; cv=none; b=sYcKCZ3hbrzzBD/rUFvIRnUUCbsadv+60v3IX75tHGY48Nja6e/ifkE6kDiJptGaEM+4+fqg1WzASWB78aDDSa3Jdn1mIogk2DW+gokHGvDSY774dYj7eThN0WWsnrgW2AKvnA/lWVAjMbgwtGRe9rDUgSvt/AVBjAup1LCZDrs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716525203; c=relaxed/simple;
	bh=v8GTnUFoBW4WTJNmezNTFDmd8/97M8dyhOTmUUIkNjk=;
	h=To:Subject:From:Message-Id:Date; b=tIwCkdrOmrSa5e1LYoEtkaX/gZg/koCreyDcBTEmKeID9kXixMxy9AWR/DtJwy5oHEkpTaXEQoxzQQuUyJy6lR4rQ19hzedTYjB68QZ7fuVxl20+cFhOAP/P1xVr+CNGYW1D3skBj8/hM3eANjhBrCXB7/YNPOMmDEoLVtHq2S4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M5ETAco4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M5ETAco4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EBBB7C2BD11
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 04:33:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716525203;
	bh=v8GTnUFoBW4WTJNmezNTFDmd8/97M8dyhOTmUUIkNjk=;
	h=To:Subject:From:Date:From;
	b=M5ETAco4l8HfE+sZD3sIGlcKNLXC6UDvuys2bcqgWk+aJbIpbdYlMfO7rARIm09XK
	 uJrhbDCe4JDVCVaZPBL8y2QscwAn46+kq5toWuHc0j5379fn8xdeeVrGyCjZxJi/Xo
	 yunvB94CA+NpyBkaDmKSFdI4BlXOzTA2uRwCn+ld3yv4mnnqYCIhbkn+SUe8cykBp+
	 5dzoPucUs7YOIGG1qMidff+nyCf0eegAnewtHp3EaKk5cekNgnOi6pi8JUMu+HL6qP
	 GcL95f8Xs0Sxaa6J+TMxgUcGjFPRUDMH/W9ug/Qbuoz752EnB21rrQ0JEdDLCaBnD9
	 Fvs4qphO2Jgtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D1E8CC25B74
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 04:33:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171652520283.21485.9666640458270340668.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: afcde10ef272b0384493750f0a8281e7850463104d976c4bc578bb3ae7df448c
Date: Fri, 24 May 2024 04:33:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716525202
