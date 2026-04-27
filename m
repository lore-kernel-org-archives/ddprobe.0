Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 196CB30E0D4
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 11:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777289854; cv=none; b=GSs4heD1MihJatVxfscqMsZm2ySQrUo6YNS9B8C0Y7kdLAiVWHHz8p/C4M4Fz7i5bwcaQlo0atF3ykSrXpKkEdYwIfNO5fkpgA2BcfHrNMxqMopUkYopFfWpNvHpST9BFZgpMmAB0kCfxJ122ZsHI3Lo5AsAffIunHolazyROro=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777289854; c=relaxed/simple;
	bh=TNp8RhCRqPodG6DKbONtwqTurF3Yguj1xMQqiTLjVhc=;
	h=To:Subject:From:Message-Id:Date; b=HuxKoroAcEG5BtKNGaI36vlnkbQ9fn9ycqe4SF+mBMjsMnAAPFsTWkfkRb0aoWgMuYh+eyP9LYr82UaZXIvNjGRlAvkIg9FpFRZQuL07fh10xcESVLBT8nMmMD4N/ltOvN0MCcXfLw+QUBfQa7z83Ck9Uks/J5OgLDbv7ACt0ok=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vHmeh8od; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vHmeh8od"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC1E6C19425
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 11:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777289853;
	bh=TNp8RhCRqPodG6DKbONtwqTurF3Yguj1xMQqiTLjVhc=;
	h=To:Subject:From:Date:From;
	b=vHmeh8odNvq354GPoCZ1lHLpHcDL93p3Mb6rp9vzkvjkmvqSTSTBVcPNYIWPhBbX/
	 /VvZC2vqvIOFspgRqKLwHZ8Y6txRMZqMRPgnj09bD/C8x2RkMmizr07q1Jd3r+PkZi
	 i76oDWLmXmAqNaNAXtZZxaX0dQ4xBFluwX4kIU42ZQFHUCWq02Dh94rh0mCpPE1CP1
	 gUnuOrxKAvB8aiFjjnjbs2CpkqvF1ZvQY5Xr4ITq21m39eTnjl/L1Za7tux+CmYbYp
	 R5ZBjNIAS3Nlxv36eTUYEnpVoVCFGdXH/Q9ns/MUCVPO3ofDdA7AN74K7BawOOsm+5
	 OmLr1o4fPyT3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC356FF885E
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 11:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177728985369.18019.5525396323816374834.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 249172547662d07e3104ea970d365ec91056731d501010ba92eab84656a79f78
Date: Mon, 27 Apr 2026 11:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777289853
