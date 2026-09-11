Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 393D0366054
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 18:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789152034; cv=none; b=sp+0vasR4aN9uhalFxkgPsE8vZD3T+3gd8owhRDxW3t1GVL1Ve4iam9cgY3xjc5iHA1eFY9k8LjqnAlltw0j2kCzSfe34NMQBrxpFOioYorN6HgVRqSiWMJ5IdvlhichMu+sVoalmlYsufZ3j34kqSYcaRYWCxRBHf3phuVeM10=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789152034; c=relaxed/simple;
	bh=hSK5l3PFUn13BjOyIu2xVcr/ahiOeGyrRKBAJK1HHLI=;
	h=To:Subject:From:Message-Id:Date; b=m5GIBbLhyFKeENcAqrFAR2rVsRNYpCha1unp/pF+4Bkyx3bpd2xxdtZiwHV9glcw5wpkQz2E+TjkqvylGtOfnpXtf/gaxNmPjt4LDVDr/lYqOyqx27EoyMqVns+QXHx+iXCYrYLnFzgFxMtK6fS1hXSSONrpwckAAB3OErcS4D8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BFhzRy+P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BFhzRy+P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5AB8C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 18:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789152033;
	bh=hSK5l3PFUn13BjOyIu2xVcr/ahiOeGyrRKBAJK1HHLI=;
	h=To:Subject:From:Date:From;
	b=BFhzRy+PGWHrZran2jTI1hOVCmwxwb89V6ehXKs9BZLILSVm9HSftM6tplTlPBVs5
	 a59Cy7qpbENJ5YD7VeUnTkb5c/Rx1yYRpcTcIzYZxirdnw3tSYwhrtVe/XOiScpzRp
	 mfM/GeybxhhkHtziKN6hTELtyQi+Xc5RLdPgPS6GTEPVTVvcx5geu2U5xz0A856751
	 TV6zlJlAotxF5ymL9PHQkJzlNNi3pDU//EvdDmbYgEbUv52PmykkFWntMUUwqEAhK9
	 dOr98aFAZ195rKYXFWEpG5CS4qGKmh8jkgFVrg+Aovvqc9YuXkpU+8itl5XMlBk1lc
	 ngRagqzX6Gxgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFDBBC88E53
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 18:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178915203370.14071.153215606114147181.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 627cdf2ff13163e0d6740711d5720a2b80ab4812dc9f9a2bcdcc61afdfbbc875
Date: Fri, 11 Sep 2026 18:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789152033
