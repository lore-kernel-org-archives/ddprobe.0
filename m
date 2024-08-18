Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45F9143AA9
	for <ddprobe@lists.linux.dev>; Sun, 18 Aug 2024 23:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724022954; cv=none; b=T1oT14QuiyHRHpC/jntmQ3wnCof15CqLoHApvZV5dxlss9+D/8VTCAbraUYAnnd1LSLktAzalORvCkunTRpuJeuoOfJyhtZoJTqvA8T7vbNoL7uHrAgrI0JpFJc0SatUl9D1LiDCR64pcqFjfYUihtArprxtD9LUDFXyZaGRO1Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724022954; c=relaxed/simple;
	bh=oyv3r3v1L64s+oGYdfjov7O9nZn36A40RfJAshleO70=;
	h=To:Subject:From:Message-Id:Date; b=VZyC3LRsQez+COlFJYNNONSdgGMr2WtzrojQjwtu4BQNcbhcS2b2ZRXyEyowrNYPEiLhvHekdQUh+LZjcmzmgN4UfEbgQHi2uNqktRL+CeUP0cJ1xfTAFRlR7CoHXmeAVQmgVhBvUNt5HvoMvxuI3fR2KPmBTWjMLLl2ccHPzF8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sqVGaZG6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sqVGaZG6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2BE1C32786
	for <ddprobe@lists.linux.dev>; Sun, 18 Aug 2024 23:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724022953;
	bh=oyv3r3v1L64s+oGYdfjov7O9nZn36A40RfJAshleO70=;
	h=To:Subject:From:Date:From;
	b=sqVGaZG6hr8OaTCkoeNvlUqKdJEBHHaJS2TLUhfDR9fQ4nfoYOk+XsFThkJbe+PFQ
	 yzKzLL7VBP3ton+i9YW+GKuH447BiI/y2XGq7DQbdPLrd0QWVJFO6Gn/H1VX1if1nk
	 4rfQd6i9jVfnmHghGAGxzz7gKmJZsm1J38sEEJtzL+kpfLqd72pXLlcR9wIR9dZDeG
	 ELTEIcnbbIC4FfC9GlFpuCY7fNt0BFaGBch9m7PC/z1Z1fUdwHChJVD4oQyJGIpz3t
	 9WFXJ0N9i1zN49W8oFptjW71y/SAbVkf3iqOkkKye5HFiWvgDDmGX8OPqYXROF91cS
	 Mvd/rg2dzPUaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A4C7C52D7C
	for <ddprobe@lists.linux.dev>; Sun, 18 Aug 2024 23:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172402295360.32349.42122919637330891.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b81caf1ddcedd2b37d512897ca1854d12b326d92979bc0007c203148e9ca15a
Date: Sun, 18 Aug 2024 23:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724022953
