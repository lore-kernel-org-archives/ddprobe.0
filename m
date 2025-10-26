Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28CBA28E9
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761473994; cv=none; b=cC9SKE+6ABC3Pv2yUhLaaL9y0RcZNc67bLPLxu8QeO5ekbx60B6lDSYM+iPPGp49z3GSwh0O6unVtSViL+u7O6N7jx5CUAVEE4OB0ZuIqtzynLLL5K5rn+kHuCdpodyaskrMBZUjLLeS7v8t5VLFEmOelTTirgxYHhoBfMMaFq4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761473994; c=relaxed/simple;
	bh=pPSBpf4dHX5AY/GINTtF52Y9eBHUQ3VLKAVnJqJJ3eY=;
	h=To:Subject:From:Message-Id:Date; b=AslZS8nvOEoU9P0ZTlcWMmegtiyOAWL4z7Vx8Zyyx1kdlr8UF+qLjk4pE/aKh/vj3fPGGRJE6NaadDVfFbosmMs7gMXcgRVn73YpGHHa7Y7YlZ5x8rPBnSiVIY67EXIES8t2JRP7APGvEugeIu4VQCgXSWrajxaXzw+yhrHfabQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pFyRdsqA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pFyRdsqA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A861CC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761473993;
	bh=pPSBpf4dHX5AY/GINTtF52Y9eBHUQ3VLKAVnJqJJ3eY=;
	h=To:Subject:From:Date:From;
	b=pFyRdsqAnLwF9zF2pNcjwENsL82LiGk3u5qJCNkCE1EI4Zby9H3+HMpTU8l/ks9cR
	 wICK9E3Ntps1TGy6egJ4Pn7N3sjk/+THo4NJpbNwAZnUGD5coLO1jTMMPcjiFeBMzb
	 G+icxUUzdPvHBPKvkEL0oN+uoquHtn/2isdQ9s/BoZdmNpKtm8d04YDjyVGDHOF/E+
	 XJYU8uwX7FWDUhBQANOWkMnkx0HwZpddm2/cPa2LAPbYLMNhMipP7n5jpKUg8oFl0Z
	 oIuuh+mtbhXfe82iiF4pBq+k4wH6CWdt3rADX2VzY6ma1LL7dgMcuTxlay0L8nJquH
	 e+FarJxz+3Ueg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 939C5CCD193
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176147399358.18960.15379637380534285782.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60ebc33cc29b047c8ce0a9d637c4b0aa7344433bf803e0e2251398233d144ece
Date: Sun, 26 Oct 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761473993
