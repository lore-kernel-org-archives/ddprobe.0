Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36FD7196
	for <ddprobe@lists.linux.dev>; Tue, 19 Nov 2024 00:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731977154; cv=none; b=D/KZOqOsGfTryDOMSBJDP9BI3tYY4aRLXv9peErDPhHoSBz1Oumb2zeynXZGVRNERJz5eWp2gsBuluqK8IQFrHJ7T5ot3uuQUVbFxjpaYDJC+lt0iEsJ4CW9aJ7Zb2kP5HC2FNgLPLcAkeBVVYw4Wis5ehCtRhv4NkF0uXjYvKE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731977154; c=relaxed/simple;
	bh=G1uiAnKsBDOprXzlGcMyVYbp9acxor6Yp9NAE/0Biyg=;
	h=To:Subject:From:Message-Id:Date; b=DhQA2sipmkTogRpmWrJL7FHp0Ay/fatth3L5ZNAdV1KBDLRdbMiftvQlV7wy/lCNcBBfcMFTeHIP3rPGCIgkBJ3lCj2qflB3hYdXABYKFbK4iPIVFulwOxn1UkhUAHUqtvBNtIeA9ELkpi+U+OqpUW3gXq2bGxfmyULnylCujBU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mf15CR1B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mf15CR1B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8E39C4CECC
	for <ddprobe@lists.linux.dev>; Tue, 19 Nov 2024 00:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731977153;
	bh=G1uiAnKsBDOprXzlGcMyVYbp9acxor6Yp9NAE/0Biyg=;
	h=To:Subject:From:Date:From;
	b=mf15CR1BXCwWs5k1QFXIXFgW/FzaD/HakWkQkrQXUmp6HfLOo1Zqpvwavr7b/OuwT
	 ppyp0dlCgqZBozmmWmZgTn+fgIQG4FT2JHKOS3OxBxT0OatsA/WFsEWYM7GoFnsB4e
	 0/ISantejswEvbWpNeElF2N+wOOrv9zJhBYnjNZIxbY8NURWC4i9HAFB9QDE3Sjdsg
	 XB/PaEVGKNFERK/WCltIj0ZvkOho6Nty5GFiv4NdB1P61ChT6tFw47HesRGAnJOl4u
	 tUtkaNnVH8xmZm51MiMi183nDB7BbAMrR8eCu5JGlTnFzpEaTR34wf2ynG5ehXgHPP
	 fO4WOl6XwBmGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94656D60D03
	for <ddprobe@lists.linux.dev>; Tue, 19 Nov 2024 00:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173197715359.520.12378678434237671318.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a5f01aec030c6f4ed24294d9a2363c51e060abe189411f598c621567c448005
Date: Tue, 19 Nov 2024 00:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731977153
