Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FAB430216D
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 02:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784946634; cv=none; b=KYD/UDW0fwIZuhJuv41FDDEPRq2f/F1mJJUMyDuAuN7bQNjEM4u31QMcZU2H2eXXq787T5kT1l04ansrUfAS+P+rYVmJsiidd5Sg+RcccJkJKwAtS638CqIumnF5YJdP/biS2b3hjrZBedVfmo3RgZaZQ8lPQFpHo7a6zEbLapw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784946634; c=relaxed/simple;
	bh=yh8vLVHRIRWW6QY+mI2PdS573d+ZYgEjtj1bugYwfr8=;
	h=To:Subject:From:Message-Id:Date; b=mi76K+JqI1XdzGK4p4iwa4zb3GP6pG6S+pYA8yWnSok5KYbUpS1rLlSsff5XEChLdmDkjveDL/64aiq+NX9uy+2BgHnRxn4vPKujDYN/Gyc1pNNPngDUbF5OS95cHrIIkQvIFERzj7pDLn5pTgnBViYt4chrE93kpu3QBbNl6DI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rxB/i6V2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rxB/i6V2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFF90C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 02:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784946633;
	bh=yh8vLVHRIRWW6QY+mI2PdS573d+ZYgEjtj1bugYwfr8=;
	h=To:Subject:From:Date:From;
	b=rxB/i6V2kgjstp673EeFqBaYLuEsCvtsu0inogpwYRcLxOBgpz0FiR0QFC3W5EP/1
	 /fbIn+1plVuoq/RcahSQEwiOrAdeJPDatYlsBs2xRfZG0uef2J2rqNTL9DsjanemaZ
	 2cd3gJ42h3wJCVY5K6nZDFEvkRJ9xKdKF48zD62l9S/IgECeibG8C0ZKXBdddNLsoD
	 Gjg2xzQUWGWOZwdPpd2JfU1a2EG/5blep5fUCSooCsjvd/bOdsy9bP97xqjujM7gXN
	 kcjPEYnXRohesjglKTnmTgvUC+kbY252mJaYxgAtrxYHC28leK3i3g6phTJ1s8zTsF
	 4pMQayri2868Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAFA3C531FC
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 02:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178494663368.17998.661694135891160424.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01ab5fd456d3638f098322d4d94284b0f7b9a36d809eb2110063be1e43d0be98
Date: Sat, 25 Jul 2026 02:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784946633
