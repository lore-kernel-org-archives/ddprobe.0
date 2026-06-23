Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 630842609EE
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 15:46:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782229594; cv=none; b=EV6eIGeHqXG7y9bbjJLfpLG+ns1VzAefaKFq/Tq+EOzUpKMM9hQn08fN0GkhkuG8UgtnnEk1ow8EvU8BORz4YAuuBMYnsQDnSgoOsCr60ybV1GSv83slwQ0Aje3FwEPIHRItGeZTDkdfoeOxOxD7QFQ78BCG4aK7FSJM7uF+zuw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782229594; c=relaxed/simple;
	bh=C6mjUm9uoAVtlrwDOmusG01wYeZdmvwxWA//ZUuakb4=;
	h=To:Subject:From:Message-Id:Date; b=fVgW7uacvE+CeHNHOt1o3BIY1ooPqxrk/NodX/JAYVV2wXkCaaRAXgLtPwWkO8fYgqm7/6ldm5WWL+jZe1/2cp/NVAJaF0zrOXs2S0py9PcZr1PiLm+YDa4Sh21wvjox78sXrI8gxtvTN26GAGo33hQ90LMxxNmAZMPl9+n1XB8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fGTeKD6m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fGTeKD6m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5B34C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 15:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782229593;
	bh=C6mjUm9uoAVtlrwDOmusG01wYeZdmvwxWA//ZUuakb4=;
	h=To:Subject:From:Date:From;
	b=fGTeKD6mhD+6r0NfxwZt/R4GiJqawacyAbhZPGteF9tk19yvtCn48hDCWSh+nU2FF
	 l1Yby5AA3aQnBMeIxMS08gsNwNtpsdNH/Usytmaw4VL7W2MZTk6DC93FUjf21clrAO
	 06LRiUy6BB6ukmcjCtWljm45OSiBiMzXCvtIJMHNhv3MV7ORvcKk7bP59q2OuMlZrU
	 znlsjgZnJC/TXox//uKN8cjxt0OldhVaq3whrdusfCtIZ6iCv2mge8zaV0G02aKbOc
	 5FuWABdFdUstjVxVH+5uEd69IUroX4SYdNqu8ziRLtD/XEagADCPtJp45MGaOM9mle
	 we9cDw2DaWjSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA526CDB471
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 15:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178222959368.6434.3249759206764347120.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6369cd48c15eaf5eb394004290e9ba790bbb42440e96e916ae0bb160bcdfa2bc
Date: Tue, 23 Jun 2026 15:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782229593
