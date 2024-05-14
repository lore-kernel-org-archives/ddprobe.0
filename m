Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55DE31D52D
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 09:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715677943; cv=none; b=Xbvrs3kxubm3+QZ4VNxUGmwS7uSW2bxH2lOhNAFixpTMBkXdETN1j0+0rQcmjp3rj61kLCO7o9t4assiDtn4zzJbdrwRApJsMT95H551lmnkKlz7d/c61mxd9qWqXKgnNMCVVVeL4SeaPClmPAiOQrG5xEMu82TfPigAwVLA4a8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715677943; c=relaxed/simple;
	bh=GlZPsmgYBAiJNgiN4SRc6rQvY249lf/2mpk0UrPRwbo=;
	h=To:Subject:From:Message-Id:Date; b=Dxtj9JXUrKJgygOad2+N7lnf6DGnchzIy4ms1RR0vECzzHr/pQiQD+2sAVAbURHzMv/2Z17CkHCiOB3DHbTvGeeOHUorhXgBLivhfXaDLzxxXdYbgMsWGAal/OGPHUAkkjUwSPBLy+FKBbkrZ1KgsL0cmfkCELHwReYr/Gz2UUE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LN28G9Os; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LN28G9Os"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEF4FC2BD10
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 09:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715677942;
	bh=GlZPsmgYBAiJNgiN4SRc6rQvY249lf/2mpk0UrPRwbo=;
	h=To:Subject:From:Date:From;
	b=LN28G9OsJALzEQ4WQ3URnyUu1RUyA4k+VVBVZZhd5W9MgMRRBsXKTf/ycJ6bYbIWq
	 s+7rWbNejAKU4niqvTpRBrW7r/l/BkqDV12M0F0Rj0ptMxYnJ28qDHSoE98fnDVX5K
	 TXjF1SGNxmHdmA7uU1moCVqKvk7+11Crc/qXRhd2SphLN53I6/e/TdxP+Mm+R9vLtr
	 dpytVag2z0TNYRwjsOjuhCoNKoMrOxeUsXH+PSPCbPbPJtSZnamBebnNfa/XPESIqX
	 2cODY3DGW3kE+ffe4FU/bEqTOmXrfiiFCcg8F0UrvaEBMiRTdmn0pGP474aUNVA1Nf
	 Ij/jJoS6lznLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9762C04FFE
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 09:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171567794281.21755.10085871955567700361.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a642e3cd1eb8660576000e2c31f5db204461fba8ca5923bb5f2df3dbc76d37d
Date: Tue, 14 May 2024 09:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715677942
