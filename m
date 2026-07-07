Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D3653D3326
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 10:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783421314; cv=none; b=Isu2s65uNuUhKaQ63j8zlWpMbh9ESpKGF62f6eOdcPxzQdqYbivxgFuGsHDZ45c3nSOaSR04szJboEI6LvYcCUCDCn3cessLAWLrhuOqwllL7kIU9LbezlO0hDp6TGhWrd7o283Q2VR+Rgj+DEwYKIt5l3wJi2EnSHD08mpENsU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783421314; c=relaxed/simple;
	bh=y94Mt50IIPS406hh5AWiMvFl5hgKjM6yvyMMcwQD1JQ=;
	h=To:Subject:From:Message-Id:Date; b=OInPl2hEI5w/Q4Ty0E/NNEfpwvSvWvTIdsFOfco5LUdgRzRP49TXnCfSYz4zEKJwBAkpE6ti17HcVP9uaNy4XpcyyZeWLybHS9YEV7xMSVbIXrvCcPOcgDT67kQ7gUXexZAeTvqi/PUQEEY/OltfkmRabmnF3d9wuXLB/bNQAow=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LpspLOII; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LpspLOII"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CECDAC2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 10:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783421313;
	bh=y94Mt50IIPS406hh5AWiMvFl5hgKjM6yvyMMcwQD1JQ=;
	h=To:Subject:From:Date:From;
	b=LpspLOIIetecppzr9r4mW8qnZMNcKeQFmAEvA23q+LWYX+0Gwc0At+C/4EsA/UqDn
	 /f8hq7BZvvARg8bB8j4ht47WkzfbhdUbgHpJ3pJWxt6UOO9C5aqCRaPz18Iqmk2f45
	 3zIOoEVqqNk9IfLges1vaQSA7mHtH2pBaZMMyMrkUoOEzJrdcu9UCXPW6aAFX6Wb2C
	 EFKrIpR16jjDcyyaABiA6kniczagwQoEMoiI8rZQNMZ1kAJAPsU6I1jKmvdWK3g60u
	 vX5FhUZm8sQsMGXr0bTQKFdQvBRyuwMhxk1Es9mrmOUq6dyR4XHobDSfzdrKmD4cdu
	 JkmnkZrTatFEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAB4CC43458
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 10:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178342131368.8349.8326274447526931291.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df57cd05f78bef8c5a574603c6354d5eb095e08fd84360b3237754fabe0e80a9
Date: Tue, 07 Jul 2026 10:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783421313
