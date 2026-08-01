Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D0FD359A6F
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 09:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785576034; cv=none; b=F90dqTkS1gHGT2OOCqHPJkxei07vSw1SiVojB2salUqqCcDaQ0z/baShguz3iIwfz//5gD3hI+E7yhh1drTPq7R8M+/R9jRTf75AwYqAnwWotOMGfuwEkmknksNsxncVLjqDZW7rU8PQCBt0s9F7UJ1DYuD2d1Z93H5NcQYhkhA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785576034; c=relaxed/simple;
	bh=S6VdWj6uYdPxeb85Se0JPEIzowdg6iMX9orh4AIO34A=;
	h=To:Subject:From:Message-Id:Date; b=nYxBLgS8SNU97DZAm6wtIHtmHYI23U7LES3gCgnQQdFG2a2GBJt4oRkrK3dTxrWsie/plZ+O06Y2JWbZNo3aGNL55FtMG7u2OZsD4G+LyLcs/ndoEPygFskYNLffZ/PPbOuyBAuepXbIyEQNXieZlUu4HMZU51S1kBDCsaoxux4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZPEBd9uR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZPEBd9uR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C94CAC2BCB3
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 09:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785576033;
	bh=S6VdWj6uYdPxeb85Se0JPEIzowdg6iMX9orh4AIO34A=;
	h=To:Subject:From:Date:From;
	b=ZPEBd9uRoJH178WlrvjUlKI4DJYcU2DaFDI4SETourXF0cUMoukBPrjMQ/0q5F7Ri
	 yqYMtOnkP4qPeAdfzoAtkNeoTd+uL6SJIFhNybHeI7jKmHnWuMyRZdUI+HvB3nMF+o
	 ZrASBLCsKZnwUCykgWi+t0DRfhJTW7BieGjuQr6pgGq6S7IA9jzLZ+ERgH1KdH/JQl
	 iakYbgeq5SYfgjR+vXcqm8bJBw0uiQlWELrfsm7R1wNe9Ogo3a7wFWwS3ZY58P+oQs
	 x0WX4N1DYxpG7OtHxnOS2trdMQpH5Pw5oB93yUAgPQSZxLdGgvm5TCeksqJdHvxVm8
	 +wxK7rfkaIuoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8AD9C54FCD
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 09:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178557603368.24875.5942896890820753625.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b9c5556a48fdd729b0fa491717f9acd5b301bf22586ff5f3a50e5cea6ff0364
Date: Sat, 01 Aug 2026 09:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785576033
