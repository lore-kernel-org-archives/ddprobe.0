Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21AEA314D21
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 15:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777390054; cv=none; b=eFK5l3vWnDaJswFgqqA5OkvavoxcmycpPDJ5B1lhulqhmC/yhO4PtpODPU/y7ODVYmxJSlBXFjUPeJffqdu25XRJqGmBwE9HaZG1yRKNe+BnT3jHMg96AK7/vH3zrIb81/toiyMWeUtPZgOzvKz1sK47hs2LdMgW3vuch2hrlaI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777390054; c=relaxed/simple;
	bh=zWNsT1Lh5DiSi9R2fpnJVNdiMtt02QxMbAjFnX/BfTg=;
	h=To:Subject:From:Message-Id:Date; b=h16Ar4gWsMgFgKgBJEx5L5biSpp16n98tM3OB+Z14lWcst1qj3zXXIF6SXCqPTL4QMsRHlFDkznD4skp41MIvjisCpBbRQQgGRvZ1RxNcX6k0uQe0PzP0jfodRb3lZB4Zlek39DeaTbk1Bie+cWv0Vc6EqspAVcpBQkMoKRn+F8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cE32EIyX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cE32EIyX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA02BC2BCAF
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 15:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777390053;
	bh=zWNsT1Lh5DiSi9R2fpnJVNdiMtt02QxMbAjFnX/BfTg=;
	h=To:Subject:From:Date:From;
	b=cE32EIyXe2BxZh12X5lPrg4hISpWSMiZmwSnN87r9wEUDvcR6kZTxxGMQj7VS/vFH
	 NTfym+TkaM/szk6Qi3anFMC3D4MKtMTTU4+vN9uVbJLj75n+7DMpPOuPaYXN0vuVq9
	 5R+8ZCtPpDnjR7v5OVAj8l7rNAfeAdZdkzZQHx4cJpYylCajAoaOeXBHsKCGAikSXk
	 NQqIJlLNrWJNKVKJmdcMzzllhUps54Z5TpBI3i+Wnmj0CMs8hWu153MednYLh+n8N/
	 t4n8xWmYYiwekxos2g3fJ6qbGwutx+YNuXUqNoxU+OcwL3qziAIFA13oPsDazn50Ll
	 IxeyfKyTa62Yg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A974FFF885A
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 15:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177739005368.9942.14570552991183639127.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 478bde90f77d26dfbc34cf4a40be8ed43a58a2ed423d31b623ef74520d9d2bf8
Date: Tue, 28 Apr 2026 15:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777390053
