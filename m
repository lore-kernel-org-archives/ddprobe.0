Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C0A4143C60
	for <ddprobe@lists.linux.dev>; Thu, 18 Jul 2024 16:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721319954; cv=none; b=dX3SQNcvEdFe7rOMzAbWdFcfAQMOpVkP+vzrpHFofKUPy7wcE69Q2VqLRetvbsfJOigcLlLv1YMxQfYisrUBxA59uUfVzBgTFdqSUFp3WhpGs7ZDUXfQDw/IEEnOygRn8Msb1BaT3fV2Q+bapI05EKArbbzpBomMX4wo4P4Ce0o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721319954; c=relaxed/simple;
	bh=NnKrXq6KhypsxW9zjwBfLsd18tunMVr6z9qsPkUUt2E=;
	h=To:Subject:From:Message-Id:Date; b=jtpZ1N6lxCJ4oy7ib7We/sNBzwjd1ad9+AeH2AD2j2SWFnRqEFjChbk65oSoU+0r9IAik5Vd0vuvKqBTX253ZxiaoBpVBSrOyiwEFiAVjLMRCHVWYzatBPfedfFZkQQBJ0rGCMMFOPsVEbbtWi071uV2uW2cVRULkLzzyM28V0s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pBbjJdsV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pBbjJdsV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1B9CC116B1
	for <ddprobe@lists.linux.dev>; Thu, 18 Jul 2024 16:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721319953;
	bh=NnKrXq6KhypsxW9zjwBfLsd18tunMVr6z9qsPkUUt2E=;
	h=To:Subject:From:Date:From;
	b=pBbjJdsVQihYjfg970MMMgku4QmfFzgUjHOpZiB2KYFFaIyxqNxJU/lnFN2zzJnYH
	 cpOoy8UeRKE9hWDFnBuACwtwKwym2JhiSVtt6syOgNa6pY0bEhFwOwFKSVGpfVSN6I
	 sJ+mqW23O4m8aG9WXdS5XP5cmi+RZ4yZRPL6BxhoaYc1X7EXLzNeJRc8u1Es/IBSGI
	 CAwuZzqdTybyP9hIghUwLiK3GS3gop64/DVjIjXdAiwangYFNoANP9gMfFf/FKuoan
	 T6/zzWQlmEKVLNJUPPlSdQDZ7qW1Y07PzIXTLwbp7CtZ6MjyMDntaS4QTXNE1vCNhM
	 ji95drHHJvacg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E47AC3DA49
	for <ddprobe@lists.linux.dev>; Thu, 18 Jul 2024 16:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172131995362.14482.17572464201155251046.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 607712704b13ad7912239c0c91b266a66b9849a49cf785b329258939462b12f2
Date: Thu, 18 Jul 2024 16:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721319953
