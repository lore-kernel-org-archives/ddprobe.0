Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE563A95C
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 13:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737205553; cv=none; b=ECexnjDEyS6J2/JV2uA5qw0Xha1YIpHxwEGpL0GFd4m3H3/AoxGFxM603/2/tgOEZOpmhWDQvrth5iRMm/EBknx1cos5Vv4fk3mLIIwlp8jdamW8YhNcV8COz+KViPIIgoVC52KJDBHE11u8rwhs/6IrsN60fG6as37zR7xA0ME=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737205553; c=relaxed/simple;
	bh=lC9tyhxizrifQ68V1l50W4sl8k4cGe7ORtv951kaQgU=;
	h=To:Subject:From:Message-Id:Date; b=rNGYezpEWat7pprJIWon3ThxmPmtSe9DkQaYbkCJkoevKrMiiWfhmmlUpuIj7915Bs7a2cI+EFpa825wSQWzLShVzkVaqjOnlXgYPUltXQUqC9yDJYKSmFu0BEAcNX146r218erjB2ynvPJuRSqYIm0zaa3fbjuDuoF18hLLz4Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IxjIf+op; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IxjIf+op"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FEEFC4CEE0
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 13:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737205553;
	bh=lC9tyhxizrifQ68V1l50W4sl8k4cGe7ORtv951kaQgU=;
	h=To:Subject:From:Date:From;
	b=IxjIf+opYxnnFMYuoqatx4f/GWmOu6BQYuVHahaxgjt4LCxLT0RQQawGh/vpx7ofz
	 xHtKKMMri1f+8II34/skOqxV8HCIkXvmbRHbXFRaMxhdo+FLubZG99p4L3GYIrgaKA
	 L66D0fKMsKCoTEC9p4jJEpgvdseJOlY6Tj/9AtVGM5C9IfUykqOwJwT4bhUcn+VIYG
	 9jFZudT2q2UvVcfrauA3KwBYUJIZ9dr2ofLmsrjeEfO2QQQlps1pWEQQBNvG7Tpelw
	 1hNNAFcEZ2bNNA73XalpJ6otb8AsgsNjQ99iL9ZFtrqR3fm/eXboWuWkFNcnFs2VJa
	 INkSI9ccD4R0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FEDBC02185
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 13:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173720555358.1956.6148180526564572725.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b394d1a528ae3eba53bbcacfed183f9a1c56a7e7936149b5d9d2f26d6beac22
Date: Sat, 18 Jan 2025 13:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737205553
