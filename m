Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F099215783
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753069795; cv=none; b=JDCCg1V9VH7d7PX2Z2+6Ra4c6QIj1E2CqNNVGC3rt2D4t1omaMas6RBAz+2E39/GApadZBogT8h68ZmqbpAFKZ0a5HUbSEedNMSz2slbq9prGGgeFB3Gzv21rcwtv/OPCB8O699SVLSDneaNj9h8WKtL/R2LcJJTPV2tN+bqMYU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753069795; c=relaxed/simple;
	bh=NN31/3hjD6Yu4yc8lc/NfkXPBKNqmbE3reOsYukTZ54=;
	h=To:Subject:From:Message-Id:Date; b=e6Q6RopB0tpE3vosLIb/1YN0KcwYssIh6T1HaSVzFSvXrd44XWcXLBImKd8uPni91MTBOUme9tvwuC4PM/sboFlTQ2+WnPymbqjsiWbD8XloDjGBfqAVPWmqzOEN6zcFNff4+X5Bo31oC8Yge/bJqy2dN0AkdIaGrQwht5cjnME=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=acIfGzue; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="acIfGzue"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A288CC4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753069793;
	bh=NN31/3hjD6Yu4yc8lc/NfkXPBKNqmbE3reOsYukTZ54=;
	h=To:Subject:From:Date:From;
	b=acIfGzueeokGJ0SuMohAVQ6fyVjXN/2PKVu4jj6A8owMfhyzrzHiHgpsraS3hSbUu
	 ZSyWUdfXiAS6wraP5klwJtDloSMRPuX1Zzjv06L6/41PDktDjraO2MQrv2yCwA/CAR
	 df6BLsecDtl2ohaE4DN1CYgOpuGLt1X2G4KHg/FwYzZkOC8hgxIFl2Mo33I4gKGnHL
	 6h89TDUtymF64dQ11B9UQY/eOC44p+AYArHhclV3cjDnnh1PCDvugPDmPJeOcTer3z
	 gcqKPWmfSHJpXEWVr0KPif9kE1Jx98Iabtl/kmuToV3HWD+gO4CyHlQCDZ3Cikf30P
	 pxktWZ8/HYT7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 931C1C83F27
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175306979359.18874.733246673740059237.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ce571eff3c20b912c894b177b96ea86a89b1bfc444627253987e9b54cb882fb
Date: Mon, 21 Jul 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753069793
