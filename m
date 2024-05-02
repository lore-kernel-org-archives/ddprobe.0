Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74A881DDC5
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 20:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714682543; cv=none; b=pqtsMzIVT7clNFCSPPGKGbiuiBxSarXU5ylIxmeAzrWWpKocHR3dGg/ESHJ8beLiWqYrYgginoizM/OBOcyLJYioHQ10CwZB1lptyDshMRecAMbkN/WS1i97Cbw/226jbHogrGIDf9OtMHYz8r7SRr8zjnSHIlcUHTJN0JwHD68=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714682543; c=relaxed/simple;
	bh=4rMUHILtd20DCjCcXul5iZD2qnLrTj7G+10kGTguuVI=;
	h=To:Subject:From:Message-Id:Date; b=W0H6HGArFowcuQslpfJ2sOeC7rfKrBcWOy60BXur+XfrIsuDcDPTU2QeMUmOZovpxGBy6/lllwBE/rbFq2+oIaoIYi7x371Dul0p+rCtiZjG5gCkpTsqDmyzu4FBcTOctYHbkm1z7ylhrZoDDPSluxffXc/kW8pCqwnZQonoAg0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F2Gk4vzh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F2Gk4vzh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA94EC4AF14
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 20:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714682542;
	bh=4rMUHILtd20DCjCcXul5iZD2qnLrTj7G+10kGTguuVI=;
	h=To:Subject:From:Date:From;
	b=F2Gk4vzhaZfILiWofBEOg/dXfxlQYLlt66Apuc5qGQauFIfwM8Z4bckYwMP+rZ+4h
	 pkZRjBnPmyIdMSTie8k2211TmVa3jJV8igJ/RmsAtg/e7KBMx4TS/cYeaPkqY1knlO
	 FMzEL+zwCjRW0MXK8DQE1kDp5SVlYzN4qtpe/yeLDWzzBKHJaGe07IJ4wphqfolQPU
	 CpKdaKhXMnMQS3ppaDmP55c0TOzf8bAL1UfZBNuFaqiv6RkWLNI6E98eSuSrIdWuzS
	 c+Hy1PfYBo+07ddziRYgjzU3IXTogZjcZUEeDqn6ygdC+mks2WjL6HQN9kD2EX64Ea
	 NoEef5qMtGGtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C517CC4345F
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 20:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171468254277.24274.6872791097079021769.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9ca84c20e79f768e0a5615786540e93828b540f7318386c386f8f1457dcdae7
Date: Thu, 02 May 2024 20:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714682542
