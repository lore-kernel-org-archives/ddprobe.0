Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FB4016CD07
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 15:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721661954; cv=none; b=N9mcHBftnHUl+G3HPqjtpN+OXIL4NHe4muWP774fWnUgd1Oyu7mcDqo++C8wzRymyB8hHMiI+tA7KimSh9wGf/Zkdb3vPinuEgN9oRmaH4yDi9X40LOOwTn6GscneESPEd5zZaMjeoGxnNaBklqJfGMzch4pQE35THQWuPorpbs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721661954; c=relaxed/simple;
	bh=G41glKnkDbIMOMYrln1ChIdPZgbs9gLSM3OfWxCdnE8=;
	h=To:Subject:From:Message-Id:Date; b=RNDjdZGVY0yT2oCozUqHYIgAsW0Aping81qzhyct7GUtM7Mn4MfRjfy6Qz05i3Md2cWRQxtc489cRCF6h5/3qkiqPQkOrPuxYpTU2Zv/eiWZp+o1/xHtUD2WmjPFTvJLGUhigcNatYYM7VkBAIjpvPU5zcQpkRGMN8qv9tYKGJc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dyz+I1z6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dyz+I1z6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A79AEC4AF0B
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 15:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721661953;
	bh=G41glKnkDbIMOMYrln1ChIdPZgbs9gLSM3OfWxCdnE8=;
	h=To:Subject:From:Date:From;
	b=dyz+I1z6xZTe6UQRuAask5xrxH6/9aWjnGvEwUelG60LvxFx1l6o09N7Qo6Pq9SxA
	 9NoYalle5qmqNgyCcgndmbKSFeIaRdrZS0RdMnOPMQr9IteuLMJIksImcNbzpUDVpN
	 r4X9MXjCmmJtF9xQsZDLKb+XmOULFgoR4cMzCt8MWLOuhc5qSKuVFhYK71J8disP51
	 PD/sy6h057V9zBCP/PVDzNxNbs4+FXaAz4WNymn7SjIgWSzH7HlCcUaolUSIHxmZb8
	 +hu3k0czvnX/Ac9Uj7XJWMMgSS8yw8eTn26svq4fJsCcpOTsXfb1nrjc5uKVh/Z/Kv
	 WklOgxAuRC3gg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95F8CC3DA59
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 15:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172166195360.27628.17730575059935934096.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee526c2b8695234adbf90a1313a7309f40628bab613cee78849a29e6932b2f1d
Date: Mon, 22 Jul 2024 15:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721661953
