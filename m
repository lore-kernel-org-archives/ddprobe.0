Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3574016132A
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 04:12:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779423154; cv=none; b=Cn5ORve4nS1sr5dS11vxYZx5M05nAztJVza6MY8Tu9mgKUWfA8AsgNDDnx2EdiSxSr4AObJ9Kf2SpqfxYl1UmcVVCPuWmzWPOPtMGg08oX3QkSYcaVHQty0RKyKfuPqM1MQzg51rpF24mkPQlw3sVQ0hLAmRMhmXna7ftAarzW8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779423154; c=relaxed/simple;
	bh=fkgJuqjIEUp1HSsybYEeLCSlObcolklBq9Q72vID1Ls=;
	h=To:Subject:From:Message-Id:Date; b=oZ3ioFkZhH9Ym249J+dJ73EHH+cGP1TEqx8MjVB23sMMyG9GzdX9XiNoSRCnRk3s2IgMATGDR43mZR3YQESdwrYmAbzOmaP+/sl6yrtfNroAaqqo82EEJH63YiafrtHQ/7AGg12i/SesE8ykcWio4MzDDPuJsiRWd5nwjalM5a0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XuXazMh4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XuXazMh4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF113C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 04:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779423153;
	bh=fkgJuqjIEUp1HSsybYEeLCSlObcolklBq9Q72vID1Ls=;
	h=To:Subject:From:Date:From;
	b=XuXazMh4yG77/GfaRDpKZjEnTwI3mDveKbWZUJgYLvZUXELvxhwayLnFpOOKg48oi
	 OKAg+vgIqlrSya3p0xO5SK0p7l+vQu4LImkzv0aA8A2SMP7dhBOrr1QsOw8/TAucEx
	 +C9C2QBm6nYt+GwyX9jfiSTMw3QHeylptxd6rk+qMMPFhiVwHz1mOsBZWZdyp+XxLx
	 7tmBl0/jZ9nJedoIm5UzAxWSaJSzx6LOG4FdQrNbzkEpfBW/9QKnOAYh2YFiVBE3Je
	 4HBDgOVpCFyNFTIVOARlcE87xLn1+Gd8Ogf/K+NB+5pN3I5kuVJmA0imdN31AcY7FX
	 bUzW+mbK6MZPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A84D2CD4F5B
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 04:12:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177942315368.23360.15567757076668629153.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 512198d87a6dabe99e78c4fcee790b0569e6bebef4ab3d1a260f5fab50958c8c
Date: Fri, 22 May 2026 04:12:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779423153
