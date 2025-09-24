Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37BA72343BE
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758726594; cv=none; b=NNAtqE1wOd/8jlF4drrrd05cwxg0FtYaVeAWyMbyK7ghluO4fJmQBHV82XLW/KMX0gu5x2xo0pKNA4HWIoYNl6Qc+z6hzXJ5ReH9IM561WuHk4xxCUQLjv7IfUYTaAsJXKzZKMF6ItIkxs1zjf2CtBXVBI2ICRW98CXCWgL287E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758726594; c=relaxed/simple;
	bh=/z1frFVNoOyUAhLPPhXj76BRT7ml/XsC6lbO7fMub8Y=;
	h=To:Subject:From:Message-Id:Date; b=jeiMCtcHI06GSkWZok3XGs3aggLEsYp1k3I5XNvZC7fLU9g6wgYpzFMBM7pSZxirgXx/VCKhS/u2x7NdrEDv4vWq66f6m5jSkFnCtwemHB7f9RcVXmWK10ukNJsYRTpXwXieKzt6GJaSRbh3+QJHpmM8Msj0wxXzsdegFrcYDf0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i5VkFW/M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i5VkFW/M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7845C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758726593;
	bh=/z1frFVNoOyUAhLPPhXj76BRT7ml/XsC6lbO7fMub8Y=;
	h=To:Subject:From:Date:From;
	b=i5VkFW/MS32hEbqsdT00M/+OzChMxVEVNOHt0QzXy3YIidDC+SRHNFuoLjWzIrIL+
	 XQfRVKnSD1d4nPvJljmiwiGNWccAtzsj0pb2SvsGc90bPjdH59bs6qLm5ZIBvg6tlD
	 B5TgdY2Mn0eBzd3uc0l3vaWOYHi1lyhYroEeFPF3QmIJt4PUKU18byurXQCnt6B4Ec
	 V/Y/zQQVxrNr5LxWK3tn58qX60h7v5hdXpu+BKOZjKwN60rvrLf4B66zr/58cIxM1h
	 tlFsQ/es1jdM+wwTvYf9DnGG8Fpb4bIVrwqc1aiOsEualu7WTDhRuYtpp8aP8frhxZ
	 Wl1pv8a6lF9mw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 948DFCAC5AE
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175872659359.13524.17762314170084438585.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a1ebe27e140bf6fcdbdfe70488884e923be6de9fc75d71366f81afcda172dc1
Date: Wed, 24 Sep 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758726593
