Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3633D38C40C
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 13:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784555914; cv=none; b=PMnedKpBhx0Sf5RM7h1rbN9x+1Ir1Wvb8eJBm8WJ/4skdi1TTza/RbaXt3TNS4NgvjVF6NNnlU31a6cpAEW2SR2cp/Ww6gARldX5AWpXvQJ9Goxc46Liq5L92miXxz/2XWbcsofGop7D17Y0RT+YaqKXQeL2mHikJX0QkXjQkH8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784555914; c=relaxed/simple;
	bh=GRcJUxD6aRcjnUygWtcDlOBOuHeeDb0iCvUNeQ7zvh8=;
	h=To:Subject:From:Message-Id:Date; b=Xu0eKJUjy2+325yzs6a7q75LqhyjwekcBHzEo5H1lU2/PlgnUCmZ30Vkdxfu6HI1vJeuiDfYAsYOATvb6yLyI4R0hbZBD8w5qOqpkd2vT0DswSF69bpTxBin7cr9VP+LTw63E/2fWiF+7JePYuZz1tM0GGhK/F7En6Kj61Cwf0U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oY8LLVta; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oY8LLVta"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D684CC2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 13:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784555913;
	bh=GRcJUxD6aRcjnUygWtcDlOBOuHeeDb0iCvUNeQ7zvh8=;
	h=To:Subject:From:Date:From;
	b=oY8LLVtaoda9yv4cTVuB1QBz7ZibyZrPEQWb5mIBA3PKjk80oHQ4VXQsaJnWp3Knu
	 TiR98I4LRKDwPVeHZqxbycJ+VvtSOLb9LR7+eccaaTa2t1PogyODffCdlRzVY98dGu
	 plyuWfklpqYJlbhtLUuHRcNvYfOtwOlI0Zjkq99L5zaNIag3aiA2XWLJEmzDNvj6Z4
	 0f2cs/HsrsZ8iZodYO8/q5/FFoGXFgsibI8f7Zg6cV6K32Ix7UzMdepF8wdFfFCpaA
	 /rhIo0z+yrhiD2k1L0zGl0Vc0mmRQ954JuosrpRQ9wPvNBpTXU3GB+gi/KBwfWcJQK
	 Ld7NyOu/z3MKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A99B7C44515
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 13:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178455591368.20527.5634303176886793469.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dcc79a7a0f37b3fc81b538acdfd622e38f9237e59281125083e5e0688a7e2274
Date: Mon, 20 Jul 2026 13:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784555913
