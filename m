Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35A988479
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 09:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727084754; cv=none; b=g+6wpgDOThTHyDIPeVV511ckyzSceKn8YkTTC6EgtfzEpTJi9LLp8sUqJOQYWQEyo7Ps1eCTLEors85ceQcxEhxWH8H6EbQyK/vUdjoMu/w7QR9h1CVjdmOyYLgc8aRt3uVCyR2Gr1a/1HiWvu2/SMtT5fclQ9Sub8PwKEAEuXQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727084754; c=relaxed/simple;
	bh=EgrimWCUxCIJwY2ksL+KQIoGkEMAVTdqHlsiLP9D45w=;
	h=To:Subject:From:Message-Id:Date; b=JobnKU5no+AqsIHDp+Kp7WeL9uWThaFILVZOD1oplBeZ7Iec/0r26H2/+A5l9nQ2mIYxFUyKoW+bIKEfVQqwwNdeqPGF8pVR1E6HEXDu/CEZGTZFLf7svCCQ3zLyZ5Em3te5CoR+07Qj3MdaCfWKQxiuXwq/313eanTVZnp4oLU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IsFpiqRV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IsFpiqRV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8EF9C4CEC4
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 09:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727084753;
	bh=EgrimWCUxCIJwY2ksL+KQIoGkEMAVTdqHlsiLP9D45w=;
	h=To:Subject:From:Date:From;
	b=IsFpiqRVIxBxSG4KrIE620Az/m9Dsf2xJW2GI1mtj9WlE89QFOWU+IpMP99U7SGUr
	 TnZSbcMuJ1bcyiIWoFY6xAkbmV88MAw1e7fRQULHR3Jv6wzBRSq0SUv8IMDzfCJyy3
	 ovrE+wRas4GgmkKtaFnKk2jUsXMEh/YrrnmbMIV/dq4cFNG3w30OgLw2HZXzpXf7M/
	 Jh+1nIxSkwkePEGN0+TEDDngnVz0j6/Kdl6dkterMgITqzOsmVtgjltfwhp60rvGKp
	 1KMgVh9ottBd0Qo08353XuKatb723AMPo4q78ql+auTY2gUjjAtbY6Vx07eCwK3D8t
	 UbG4IElsMqucg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90573CF9C5B
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 09:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172708475358.5434.4295436930858748259.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e8a20dfcb97b865a34cacf06731a7c49a2c5468095f7f3b674f45d8b88ad3b2
Date: Mon, 23 Sep 2024 09:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727084753
