Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C5F31B3957
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749743995; cv=none; b=q2vNOMdalaz7ETuZCP7kjkmjsdkK0ApjL8e4X24/UAbODOOu9dWy5J0+CkVeyUdkyVBi6KALlZfm+rY+VR1kL1oXss+vf2heLbGzuvgqLmtqvbMRnRBC/PDx9yD+hjvnVsmCo2yDQoS95HQZmRuWHB29gtZ8j83Xw+X4Nq3BroE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749743995; c=relaxed/simple;
	bh=MWPaVvDCmRzLyV5NRsk6msQDgD8s85UFyE+8J/2BM14=;
	h=To:Subject:From:Message-Id:Date; b=neQ/ANCqJI1Dapk71oOoqydjBLjpGL1pCBMV1zhtscEx5EcFdJV83j7XbDFR+4kQ0sqUGT5MT+LqQaY+16qkCxol28jaQS9PnOBjkatmqmEjZqkW81NyMe+0H3h6NHTznWVrhPtb6BRlTdYH01kxXG32rbpWmYBZEwtsDeBvfUg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FBk8/j1Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FBk8/j1Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A385CC4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749743993;
	bh=MWPaVvDCmRzLyV5NRsk6msQDgD8s85UFyE+8J/2BM14=;
	h=To:Subject:From:Date:From;
	b=FBk8/j1YwPzXGVTyUPDJkmTHkdD3B/XylfN+GwNu3T6ozKuEzALrMq8wxqg7K4hrJ
	 xU7TbnWDWueSBaLafpjpc9k2cj8OwxtJkK0g8RhKn+mWEt57THgmi14twQpN8wf4z7
	 cFRbNN72c0bU6FIMHLxFTnpXSJi55c3dYrvdH8Q2kZvBzgDUIlCnAfnJO7zm1I0PcU
	 mQpbRwx3QY6IMgEntZkzMtOka9WNNwyThFuhe8uHQUAz0YmvO10trJ331yW8ze9Jl9
	 NTZmWXzKopeiYBQv97RU9OcyYSwiidndlkupFzRHYeYAeKQj3lzrejIncQZYFiW7kO
	 +PczoaecJVMNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 900A7C61CE8
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174974399358.12283.12365606291620310776.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0031daa603433a0f2a07cd885a3f6addec77c82885fcf623a012a0f920755db
Date: Thu, 12 Jun 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749743993
