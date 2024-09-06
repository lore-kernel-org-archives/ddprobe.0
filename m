Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F4831CF290
	for <ddprobe@lists.linux.dev>; Fri,  6 Sep 2024 13:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725630954; cv=none; b=Frxko36uwXu0EpnowhqkGHV4qVHgOyXelmz89iixtPDVB6sOtjoEzNHZE7cZIsQTCJwV34ohx4cHxRqjADFYAF/Pp6nx9qHh2Jgl+/XjB4s2INYQQZnSBKsOGytNryL2VAUy+S14/jxOQEkGbTnPsMDJgWKmZv/obF46J6qIynE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725630954; c=relaxed/simple;
	bh=JmHuPaiyhB9IobF2XhL8ZeTzp0p2h0oebq8pBNXAm3Y=;
	h=To:Subject:From:Message-Id:Date; b=usfR1a+6lGBU4jH6ULmGcj1JgGpcq+iogVfR7PfL9WkRXG9Lu9WOmMrvI5MAo72Hmkx1QniVom1SezwBOnXpt4nN72WN9N0AidbnK8Y9ph1DFfrSAmTI1ZJ2EQoYzZGr31wMMro0AiWMebuPoptJtr7WmfstqdMyDRcfipgy5wM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RtRh+Pqe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RtRh+Pqe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EB0FC4CEC7
	for <ddprobe@lists.linux.dev>; Fri,  6 Sep 2024 13:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725630953;
	bh=JmHuPaiyhB9IobF2XhL8ZeTzp0p2h0oebq8pBNXAm3Y=;
	h=To:Subject:From:Date:From;
	b=RtRh+PqeLkx8beIj4UoZEVmvbEmCBI3Y4nUDwlsyrp8ia7LREFcvaFFbcKiEIUtHv
	 VxKKnxSI9/YSTEtKF1zndy9UsXJ1SeDavgMhPWms4mDF4mpNbAn0U+X1SsnzN46ROZ
	 9mhk+MhNTrxdRMq1aboEF992MgklLnw/Bquhl3KUOmDjwkPYTPxLqwHwoeeDl7lKS+
	 Uq8sNK3Uvzb7JACOYUbiFnjTmWoDl6+aBuKtmjPJBdJR77ndy4HCUOERtbNAsdkrIx
	 JiglNmFINnovLZqoBGpGGch2cy8lxodOivTNkfqsU3zQofPHrKVfO4LrnWZSbE/+/b
	 qmUU3pghODTkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91404CE7B1A
	for <ddprobe@lists.linux.dev>; Fri,  6 Sep 2024 13:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172563095358.7620.1802660574301331543.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16c925d5e9d6918d228b318444cb2d87aabcfa333cc63e24f4fcb525efcf6381
Date: Fri, 06 Sep 2024 13:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725630953
