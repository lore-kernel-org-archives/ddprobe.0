Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B78F613D
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 00:03:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719446603; cv=none; b=h/ltPsxeEayaNAFFY+AemcEqEqkFycFvwZQH8zBsH5sYOrfEFNcITJETlvRgC2oCi533VzxRwVh63tlMCmrghO6+3el0o/pcvm6XUTCy/LM8HOrMhExX2aQbc0Ga1AFIF2kkGQ94QqkIVeBzJxoukh4HKoHHbsZutkQTQy41o/k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719446603; c=relaxed/simple;
	bh=TU+TJCcJ/bUV/p6eD9i/RQmrXb136pOlDTJkYjnnmlc=;
	h=To:Subject:From:Message-Id:Date; b=o3Tqr+RgtlVSHm+/GI1hHjcNRkw7buymuFbBmoSnmk/rWSvEbpFcYhSRdWZq6hRWk+jWfP27Ucf30+/qUQk7RgKtIE7fvy5qAmr2AhUQKSYyLSd2ajU7hRzUjCvw9MRbklCLesBXdfhxGGTi3Y5+SgpcaJp9kBe11oZmhtfn+hc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U5TBvtCi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U5TBvtCi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D93BEC32789
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 00:03:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719446602;
	bh=TU+TJCcJ/bUV/p6eD9i/RQmrXb136pOlDTJkYjnnmlc=;
	h=To:Subject:From:Date:From;
	b=U5TBvtCi/opQQqcU5ySAHchBOE2N2BG9K+BB9OBDxeqgTM0GzNJWChxJ4ndbb49v+
	 0pLVF2z1Vs9GNFmXpTpzVH2G5NZofJ1ZjTAfGdettSBItJgtg0V+QwZaD7omr30axG
	 WF6M0vuH3QgyHC3ZYll/bxXMXmXZ8Ht0t/KXOaHu3z1BrAwJe8CD/7sA503P4hvjYc
	 NsjFuxCF37pr2DB+FTat6qeJeAlut08/+X3liePV+dEqIJrGaXlBo01UoaaiuoLPEF
	 9oo0HnOrXKySD6Tbw6fTqK3IWNzi5g3AOKLM9TZnLd+uNYSMCj8zhG5Vj6NTdRNjhK
	 lggq5mbnCMjFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C40E1C30653
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 00:03:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171944660278.21078.165538651685270980.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb5aa1cafe3362c2e0121c800987a67f0ac1a624c00b3562c96b80930ea348e1
Date: Thu, 27 Jun 2024 00:03:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719446602
