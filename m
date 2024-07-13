Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F1D21E86E
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 13:50:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720878623; cv=none; b=grwbjFixn1Xwmxr8gEltld+wkGsujXK510eqcjqXFn4OM1jcrVk9GHYtxgFkw5+oHb/SPRvcNFXTYt0V0Sm2iEFxOvoPNFCLkli25PqCXjvQLO5BPcb0z/N3eRRN1/mYUAh93YXy0WwhWklUh38oCA+hadCKz7BLFR8tvaYvMVo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720878623; c=relaxed/simple;
	bh=uVFRcuElkcnYW7MpedF2Qnp5Y8QTFyrqcy2U9WwO6iA=;
	h=To:Subject:From:Message-Id:Date; b=C7rttGzAeG5QKX0bLWiHVezaPH1Co+kfHrkKGAa5vKPsO4UJoR28GVO2LmxiSagK+kZlLWGz1KcNVSDrsxuc/LNeGi5zcTO7EWXdP0XxesQVWYvLLih60ZMs+4ICv+41KiccKfY9bOfU/J4tCrodNKuhfiGsq4DkN5Ks5JusYEU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ccBYrLh2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ccBYrLh2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3A93C32781
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 13:50:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720878622;
	bh=uVFRcuElkcnYW7MpedF2Qnp5Y8QTFyrqcy2U9WwO6iA=;
	h=To:Subject:From:Date:From;
	b=ccBYrLh2bnfRG40q3k5On1HchgTrvufEgarctZnLUZ55gYHvFssKLRis0KxQ6TAZI
	 mzJee7naWrY02WgSUrrIPSVOjgEYj+uBs291UnuJTFfhQ/+qWGRFf3z+8hqDXRbdUJ
	 k57bAmCuzJZ2JLM1EJlyJ4m2NwPQTNKhir8HnC+CmuhDdtAYxrX5r1t2RYxtFMycye
	 R2ardnLoWT4AQm/Y4eTF20jnK0AxehN+rvhryxJPvsv7OmXD4dXv6P11pi8As159pB
	 ZM/lUDjlggfE1hrJy2ttWhrW00viHew23tBHNpyA/dvSDi1z+BpQunPB7OZhFJEEdY
	 M1pdiboOJkdTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB2B1C3DA42
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 13:50:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172087862278.20877.16168822240546001212.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b163c9e794be12861cb7af6c3539a8c4c395fd5964fe6901cc5cf493576dabce
Date: Sat, 13 Jul 2024 13:50:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720878622
