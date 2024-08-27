Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3500A146590
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 18:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724784954; cv=none; b=fTyxhQ9BYbjxpeufDRYPQ0gi9mYPbi3g0blhOlEPr95Mv09DDrSX9Ny671LX6LBVr+Me6R2c1jYcFEe/JH7SjJp5F+x1V1ig8nU4lHHaBS9uamzULA3WOTyEq7F0HOSz8nLLK3ZKKgyUspgyBet614gNifDqBXqsxCfYeN4yr9w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724784954; c=relaxed/simple;
	bh=vYNpBEC199/X+bv1k1yHSjnU+tO8io5QQhPetXACZkU=;
	h=To:Subject:From:Message-Id:Date; b=kFqLEQNxlFN+d/Yy8z9+g698l95B9K68RYNkv8H9jcWNSc3xV0YHjNgSPNM3HFAkI36/HlE562ZV3AtTeao8uxU6k+XhjCSRJbNHjaK50GZracH4kKvAbYl8l8HSD6sx5cILeg87ENydXEHSA8/U4aEN5RWMt2j5FoTLelqdtUY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dhm3s/Lj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dhm3s/Lj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B460FC567D1
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 18:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724784953;
	bh=vYNpBEC199/X+bv1k1yHSjnU+tO8io5QQhPetXACZkU=;
	h=To:Subject:From:Date:From;
	b=Dhm3s/LjnJHE1F78vJqXHiTDcS3gPgkcu7do3LRmBsHMtx23ycZpXimUFE11NB2Rf
	 HISiEIDqd41xHjGiM3fXa9w1F68/Nq9HGybt+7Vqm+edZERRqjk6jY7zgdM32wxfMG
	 HdMbLHKO7h9P7jK6sdhODbYPJ2ffTSVoU3xGoAETXnRYcnhsKCXGbS1BKeyRBvBnnp
	 lDyADqq/kiMGO5EXWihTSyWxR7idOXOfFF8qThv8C3kxZdSO6HXCNZar/RGJclbLkM
	 jLnIgUmHxkLYOEmex2GvmXLoZ2X0LrHiX85Vo9r4SzBrTqyvzWoFtvd52IIh0h+O9h
	 Wrxs51O4tfLJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A0D5C5472F
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 18:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172478495361.9744.5503561187738374367.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07736923282efefa0121dfece4a1ed66f23d97364c8fb3107608c207ddc509d6
Date: Tue, 27 Aug 2024 18:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724784953
