Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F19FD149E1E
	for <ddprobe@lists.linux.dev>; Wed,  7 Feb 2024 22:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707346097; cv=none; b=BbKuBRYkDlzISnmwoLugNYNURTMbVUNmjRncT9Uni3mwxdsjFUeVUFoH21UAQrNWqW8KefgnSCk8bO02MD4B2OdXDYDPEIGPuVAfs5sIVCPyucm58vqV+WmhkAdNMeGkiR4wwR6OmV0Jp9ooVVb3DJKNMBWtTEX3VGxNm9XWud8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707346097; c=relaxed/simple;
	bh=P5dq4VJT7+eacwoZ5ai0yESrm8nYgMIzg8Us/zhaRmA=;
	h=To:Subject:From:Message-Id:Date; b=WOeycOpbQIu7GZWcwjw6d9S+Z/3RZEG3Vs4vPUy/K8dOQdn8tvf+3uKwUqOBZ0eS4ItrXZnI4GBQWjUbuXm7xzjjpH+LB5zyxr91OLePVdgjGAhfwiJK1WsZgVHgZFxMLC8Uhq3GC+Adj/+diH4lVifedp8ZGKTKC3ZNmmC1xak=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rcw/HtMt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rcw/HtMt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7FBB5C433C7
	for <ddprobe@lists.linux.dev>; Wed,  7 Feb 2024 22:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707346096;
	bh=P5dq4VJT7+eacwoZ5ai0yESrm8nYgMIzg8Us/zhaRmA=;
	h=To:Subject:From:Date:From;
	b=Rcw/HtMt7InNn/ss6/nAPeVP4oAP59MqEDsYAzppfSWl6w/rAqmxAYIs+DN2ZbT8y
	 ncGdONUuJH2v6cl00D6XhcQxI2v3heoE/0wzcfQdA+L+L8MtFVe4ZyXr2s7DqRZkyt
	 gvXJPCCQT3HCskdtpanSp+B6CYFzs5wHTzRLEeY6hjSM/QlyJ058nSnBhvOHiTu2y6
	 8tuZpPcyZN7BQ0aXPG+JTDieHe9b8nenlNp61i+HZrcQKZO1M4DqN2K5gJKo/SqGXP
	 3rxFw7ETLRhCG5ARnAInyiutX2QgZAFbD4HRfWPNhfkol8dcdkjJE/gFZDZ/7+FfVT
	 j3ptGqsDt552A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64344C4828D
	for <ddprobe@lists.linux.dev>; Wed,  7 Feb 2024 22:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170734609640.715.16073779659714826688.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1eefe498a55f362da037b40b02b8a600ad3116ba42f87a916483eec52af2a0aa
Date: Wed, 07 Feb 2024 22:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707346096
