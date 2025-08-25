Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08CAB23958D
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756108794; cv=none; b=JZK4lp3g4SdLxAGYJVZP8hzBsAL7wbPCKohyt6E7e4ILvxJ+Kooe/KcN6sr/YXbkVMO5xG99GQfz/twAorrJCS5eOmTBMoW+Bto3AR3C7E62UrNqXwHTMUkB53jX+K/5oVyem5p0ZRNaPoqvbagZ77temNU+HZq7HuUu2zXCVcw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756108794; c=relaxed/simple;
	bh=xMWRc7S9JhI3XhNCViD3whJ0tHr6QRHVFDNSSVsdSOw=;
	h=To:Subject:From:Message-Id:Date; b=ChduA9FcQROzyRJBu5YXqQrTpmGjdHXe46leNTllOrPAFJzUHNIso4Aj+9whzX9Y95A2UXprLaki+BZ3QHFmHsJhBPCvH82JMNomLkepNtRhlzIR61Ozkm8L3zV6OCHT2GeEJhfUKknhePa31eKxtMTFVvF6GRnc8g9hweUv1ks=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SyiouGIO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SyiouGIO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CDDFC4CEED
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756108793;
	bh=xMWRc7S9JhI3XhNCViD3whJ0tHr6QRHVFDNSSVsdSOw=;
	h=To:Subject:From:Date:From;
	b=SyiouGIO4fy7sw/q920FCLAvxc/y9bgGobi6v6hPUvcKFtb1uD2y6EGRg0r4EKifE
	 LLbai4RC3iiaMj23Wknnymu992hcQUm2SZwfIFvI7TwQ6at9cDWtH1pZaCdHRACI5+
	 edFK467FIJdQnuUgPMSty47ggPOuQ2dXS+YplcjrvsjGkneFrMAGhTt+w+Q5ozczV2
	 Zf6IJ9yzHRSMWgNAT7yT/IiVFQu23Iq2Y/0K1JC21xRPh4+eLVmU0DLn0t2GxOJp4N
	 n2Qr2VY1bebFTpk8gIcJw0RYWKGfHjKml4vIATv3GuHC4YQseir1TpUV2o8L5cM3TI
	 z9Kj7pBEjRwwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E596CA0FE1
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175610879357.19360.15091387264620640552.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ff3bc013ba02a8f223f977089afa0258bb1d2393174a82b5c6161b27831e0ec
Date: Mon, 25 Aug 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756108793
