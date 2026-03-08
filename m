Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27D5217993
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 22:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773007494; cv=none; b=CufatpTY2RY5F2UdMLRUAREkmZVk0ubZ7okEinCKUiGa//Jd+Mvt9IUrLR0LkStXN5vZWeNbfHDQh6UQRlJ5P49YPL2yWXZhgJQMvsOjAZ4BPJgBhlUUDiGvl+NPtNmouHjjhmP0ie2OaQ6criEZvZYwSxakS9Rr7KOqi7hnh0E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773007494; c=relaxed/simple;
	bh=d41zAtDS/k5qU6Mb9kIKuoGZ55uq7go74vdHkn9eVoU=;
	h=To:Subject:From:Message-Id:Date; b=nn+fqyybK7MfAPIdnAgH1rGiMRaeXwIe1JVh85UxVxa3U1RptZRKVFD1SA3GtnU/Qpu88RLXzeijHma7RBZmvRW/WIS6Wkcn0RdmaEL07Ybj08YGB/6jOj6/KbDcxAlrvpINNm9qWUnKaTwv7HNNkiHIy5SGJFt+i8tQxSUki6M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hrcUsmaW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hrcUsmaW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB0A6C116C6
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 22:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773007493;
	bh=d41zAtDS/k5qU6Mb9kIKuoGZ55uq7go74vdHkn9eVoU=;
	h=To:Subject:From:Date:From;
	b=hrcUsmaWGqGN0WjVq1+pR/uSwfzA61dXczYDbtfOS2GgYJHAPPEsT13MNYxCWrNxr
	 wXPTnVtxWS055lvIu291jJFz8wCJ4DtAWf23KqLEv9uYifZpz8p7oB+iELyJH3PxJw
	 xlbOvh9J75zFE24+90SBNG0Bjcg1MhSaylrtkodlBybXwDU1JOPzhtzo6iuXlrcaYq
	 NjNdJcJPqOuOhaH5vqW1865wxLAcN96WO6v+3hcnc1Zndm7htLYCkL+iIObVcOZEU2
	 B6pmNP3/FWWIDWTe4Ux55C8A/GqMvfdA0rmb1wQB1wuI9LJDgoSG688kMRCZ2CX9cS
	 8/ocwBMulxwRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97193EA8546
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 22:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177300749358.31234.2191509875747085150.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4709e8092c09e1560b056b55d08fb8db9e5c74e403368e7cb5a6f8b61a972abb
Date: Sun, 08 Mar 2026 22:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773007493
