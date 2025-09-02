Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E8E330AABC
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756814994; cv=none; b=W+k6O9OisAVRnwTALY2rAoeF1E2Kvi9OhjKqxp3PiMlX+5JWy1Na0nG/Dr+FeJBGa6v7zeUhJrvkvsbpxkG/r+FFmotLkkIu/2Ou+Wxpqk6WaqqJKMydLIG29aIlfmd+D77K3Ny4y/0dhslSUyVTU/cBg0kSBVPyWlh4jNonkwE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756814994; c=relaxed/simple;
	bh=lhUKq/8N0n9IQrn2hnrx0j8BMRtCZ6qXlXrDxkRC034=;
	h=To:Subject:From:Message-Id:Date; b=iGQGHPdjI01xc7NQfJwjwyeGF5yNw8gijVVSuQuNVGjfjMKwcibtlzlb68ntK0zate1ss+1NLE+RQ7H7nHkvVcbU/nOizX3tv2FydIKJcQ/0KzsYhIXNqeZ38Q0UK1Mj3iPTcYNolsmb7wQnx8PcMV2PN239QOd5BD56MsgbtFY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NEW1EAjL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NEW1EAjL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4E4EC4CEED
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756814993;
	bh=lhUKq/8N0n9IQrn2hnrx0j8BMRtCZ6qXlXrDxkRC034=;
	h=To:Subject:From:Date:From;
	b=NEW1EAjL0dMlnczdrMipD18tldfwQQr2sQtXL/2leWOrjh4jsWfMcJ8LHvon2S1GT
	 wq/8k29SMWoPDNKF6oNAcY1xlKhpG71eBOXnddLR3LADKpWVTFLuT/RO9zEUi9OYSn
	 rsCHsP++V/5vy2VLQ6opie2v8n0McHBn4vvjTVKGdsTvwaWMl4ZX63u1vL+czMoaZH
	 vxij1YPDfyFEOjJow5ueIcdtZij2D3zxnNajsYAjbgPqny0cmmhbDwCa542IA9a4fY
	 zrKpLfs0TLK59+aagmoemTilEc7fwcFVXNlVsyu2upaLkbZZuFxpXG12zbmRGNQvNS
	 2PQ2hQePiKknw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F9B9CA1005
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175681499357.6088.14495856404928906301.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 802a56826b328e7450644bba3124bd28936360e0a2cb4a52a7c5af2e8db2d486
Date: Tue, 02 Sep 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756814993
