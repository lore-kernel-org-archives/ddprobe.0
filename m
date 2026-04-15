Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3334331AA87
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 20:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776286654; cv=none; b=QRkklxYjKdYmT9DQmRwrsYzChPpqSFB27mLR1ceCJgYqW53guFomryVvr8aMZEPmMvHINSsCYjSpbMdb7TeUaassdPRKjjU6WVCk+jOPEBghbfnW1z6cxrbgGY7VCwdUhlfuZKw0SniM0SZSem96gI8UmFYM7PECQ0gmEgd8FSo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776286654; c=relaxed/simple;
	bh=DGnx5yzwTs4uu9rvYdE8Ovv4020eYJi3lKrrIE0YX5o=;
	h=To:Subject:From:Message-Id:Date; b=Ft9wMi59ZGRPxszKRm4qkoVW/MPj31kvBUDKWoXzz61WzZFHzstr1y65fZUjPyxtPxi6NajLl9cL3HaM2Hjb5xCydWL1JTKMNQkRM0hck2ikj6MRxwD0MzvAJr4GwvIamMcxz8imZvXY7YMCkSTJPpIC3QS/DW/6IRwZnJvhz4A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f6rz6lj1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f6rz6lj1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B97D1C19424
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 20:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776286653;
	bh=DGnx5yzwTs4uu9rvYdE8Ovv4020eYJi3lKrrIE0YX5o=;
	h=To:Subject:From:Date:From;
	b=f6rz6lj10Jsx8t6d6KsUIigQkXCXf74vTl3AELc4u8hsp3cjmHyJDQaRycrh2QJnW
	 rAdv/9YA1zx4/iECSNt0dsWObhXIS2ibyC3T6aZSlKZzc8aZ3zQh7O0yvZghDFpUhD
	 /z/+tuZ7jw+37Q/J1can7oIzwTRUu18vdaAGcI1tS9FJkeIE7jNLQMchK/uf9SdCDz
	 m9GfEva1QfuoKoy1wUtl0uYrnjwmy/2zaMsSlSDvboxgl0m+n7Q0JCaaPbFS93DT0p
	 HomAwol6G+gQnTxLMu/71zSyQbby3IuBTwK1lrflfTySn0St2ZuhUdLxbiaCyUK4qr
	 pKXm+KsDUI7wA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA76AF428F6
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 20:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177628665368.9972.14149671411960792136.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed6361f71effe53fb2c56d1dd269b3545f993b31c3469c847e9ebbd192c1401c
Date: Wed, 15 Apr 2026 20:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776286653
