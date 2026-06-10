Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49DE134B1A6
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 17:46:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781113594; cv=none; b=CCNu6cD2vUFoZR146GKE6YW+URozctGMXI9hW54uNx7UPNSBLCr63UODHgfThLYpCF49YpSg+vOxLlj8ot2nhPJNbbDKdsqW9WMtLog4N6TFv6I/ZWXvCdnEHdb+j9JnoTxZQVSWlOpqS3ocbocloqdho9xf/YunrZmALBoVxV0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781113594; c=relaxed/simple;
	bh=g2Z1d861uJmRU/gZfza5e4KvLQmoDkE3OMBm4/Mg5dE=;
	h=To:Subject:From:Message-Id:Date; b=P3IS6qOF/ibieAte28K93ZSkkOUCIlC/jbgrQmVzJlEa3dSC1MfyL2c8j53Sn856IhtlRGIukeStix6WJkpFglRlKvnKLD/PYpMD0SGvZnExZXGRHfT3TC9hxUtkciD4PSnilUJjI716+l95Beg5riw8UzZbhoHOcBoXaoULSlU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ujdUWTkR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ujdUWTkR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C785DC19425
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 17:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781113593;
	bh=g2Z1d861uJmRU/gZfza5e4KvLQmoDkE3OMBm4/Mg5dE=;
	h=To:Subject:From:Date:From;
	b=ujdUWTkRHB3caHucTuK8wX8F6GOdmv2AykR/ooap2NoI2gzirGiuXEvxhPBYdOCLb
	 gIjsTGgSEXT+cHVoloYzuhtSwmN4u2GMZ8qkvuVHDIDmpi3PX7ylHmP0xzCuKn18D2
	 4YnjaWMv0dXUewNMxVRggMVTHqs00OO7/bq21GqrGUJmh2Vc3AkuZ9o5ZdLjNAIk3U
	 EII748n1XHvtVLxEr1sV84O5SLDXKo8qFMa1VI6Am3MlutHbzeohmUUitfeyXkgZ2p
	 narfzLTJTjsURVl58uvu5DRa3VHIR0druCVJeuWNPPKbEpqvV5yBiRSrhMbR3CbV7L
	 jSE04bZInkv9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE02ACD8C90
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 17:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178111359370.18389.2078781220037143018.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8090e5f0a5ed770f1036bd42bfc06223b3dfcb232dd716dcdd21663ab152d241
Date: Wed, 10 Jun 2026 17:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781113593
