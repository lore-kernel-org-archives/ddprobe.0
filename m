Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 530352836F
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 04:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786767034; cv=none; b=Ba7kW3PXXjeAlVqoz+XMgmzDChVQqahjRFwy8wanIncT9lI2lknyr+Kh7sK7EgOGeVMpqqoio5D/3GXpcn3H7i3qyQibpkqcBDHoVg0eit1s2U4FMzhxpH9RuLaNZAByXncwgZUQhpoqpnQuqvivULiZWHdWLwQruxKMIeAmlUk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786767034; c=relaxed/simple;
	bh=CWHyyDODZWbU+pgHgIOWoCpEeKunvOqN8fFf15bVjoE=;
	h=To:Subject:From:Message-Id:Date; b=Sf+EVD2/LUH7s3EtmDHPXrJaTmjemTtkviAM5LfXJ0ujIKLGJBIfCSwh8ZKzeynf2TYrRpfKSB79v4raS2dVkz5Nwal2J23PnhI1f8HCHzuiB4zSx5REKpAgEC3p1YjLsZXEWlRcenCGgPwrosAX2n/2Z2qzOCSIVUQoZ4X+PwE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tu0lLshj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tu0lLshj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D755AC19425
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 04:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786767033;
	bh=CWHyyDODZWbU+pgHgIOWoCpEeKunvOqN8fFf15bVjoE=;
	h=To:Subject:From:Date:From;
	b=Tu0lLshjOi1hNZv6onxdRvkFRpaAZ2znahM41vidRmKSM/clQEQlKjaKDV6a9w5uf
	 ScPtogLs279g+1raZNdge5khnRW3vt8MIs9/Oiel2RaWAkEg8yGL3wtxZilI0RjGI3
	 zeovBKCTDrigrc546hdUlsfAL5agTk/BVLUGpOCTN3ZjqCxwi/m/Y0C5YLYwT2k5ZS
	 H0Nc2TSPSZjyCah5A4CWwfv5+KzXwAGkpDNbQWvTqEvPu3wcG6sapeH1VLFuCEf7IT
	 6dE0ETMzfausIsmTVjnhzZbaAV72DpBWV745tqQtGvKee78ITAOk9rzZ/VoapReODR
	 Yeb4f3s4XZhxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEDFEC5AD5A
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 04:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178676703368.25549.1323415339574732246.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e44ee615e9319905b76951417d50b184d160176bd23faeb856889daac7b1e64
Date: Sat, 15 Aug 2026 04:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786767033
