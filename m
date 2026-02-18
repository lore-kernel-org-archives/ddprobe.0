Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B2E430DEA2
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 11:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771415094; cv=none; b=Zkj90A/DDNtte13pTS19r/BWTL5FtuQAotOSjEW6PLbR4XeWNchg4GEQwvTsGouK24QRs7CbS1uIREgvBWdO3OCETuWocvYTOlK9zGrAIeuSQOrYKB5rnuvi/xXH7fEUZuoEZYIqkfg5fJfCQJrb7AWQ0SbgrS8UDVmGq1HnIKo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771415094; c=relaxed/simple;
	bh=bsMTuyB2BS76duLuCT8S94CcMUVFVeEP372o/mIAtiI=;
	h=To:Subject:From:Message-Id:Date; b=WcTcw/g1591VGCBOMEizatjKpotUCPAzlce2loo+NmDMTus9qafBkVezdbhAyjY26TEBDtc2b1FN41sApO/BuQllTwdEE+Y/Helvky7fr6AMivAVmoLR/afTPIkVPYUSKP09FhDhzdACEHMosEYZ4phWKATqpSjdFu61vvBxcV0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mNFEE0cP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mNFEE0cP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7026C2BC87
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 11:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771415093;
	bh=bsMTuyB2BS76duLuCT8S94CcMUVFVeEP372o/mIAtiI=;
	h=To:Subject:From:Date:From;
	b=mNFEE0cPsPmLHW3YeWQ05OmtiKDWdpTV02ACRETtE6lZGvVdsd9AAoJ2XKmA6WfNo
	 aHexOSZy2ux8kjJ8oZgKctsARHf5F8atdwMHPHWFsInoWC1EvcsKVMonVCRnOzmTgW
	 6jB/ipvqs5TO7eX1od5ZaQV9mDHx717HHPl2Ep+VJQVraF1q0HSrZR4TVd+/aFd0wt
	 sGsCGt15Ft4dA2e7wzQgGmBQYnirP5dIq5wcJQ08SSGJMSN/11Fupkfs+UkhKs+um+
	 5/XVpiJK9nnP7BWccqsi3Q0H2zWk8fg+vVYal4vTuWbGBrUdfedGHcfMV/ttZKbiXX
	 fXXMFKEBiAGWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92076E9A047
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 11:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177141509358.23853.2366975047093939585.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4bc4cc62d3f85e3d3f2fdafc829dbbaf670f2280551ff059c5c1e4f27481f494
Date: Wed, 18 Feb 2026 11:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771415093
