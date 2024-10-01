Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C30351B81DF
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 04:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727757353; cv=none; b=otEKSH4f3Nd3kb46SrSITpf9R9JnrR8tGwrOXYN6GJchyh0GOe41Vyd3jtBMG2eZ8BCHzN1nbYAYvphBbXdFAWceCWPPGXBCVLWly9qvivMgpKWdWG/9ZMbPKhR+PC0y2DjFq2ljfm4PEUyu/zQZ5Vlw8SAJRmYP3tPyrjr8NhA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727757353; c=relaxed/simple;
	bh=sl9odrzuRCbJxSX04s4RlZkD87CagGCi3jHanhnT/k8=;
	h=To:Subject:From:Message-Id:Date; b=WxF9xh3QD/mmFaQ1WxrJok+kbXrpPAqYZWDlCxOmpv0Ms97Fp9NE/19REn/B+h3xFcef+OBIjOOXGLwrW2NfQLNL6JdA2wPC00rAB7RuTcRZxxGO43qzeOnIjMosUafuvsFJ1AIxY+d0ihhHi/cfGZhfVZpBjcCdOAsPrC+gQvQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lg3O919K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lg3O919K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A71E8C4CECE
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 04:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727757353;
	bh=sl9odrzuRCbJxSX04s4RlZkD87CagGCi3jHanhnT/k8=;
	h=To:Subject:From:Date:From;
	b=lg3O919Ka4n6tc7f70Ies3pnD0RtQXaWUAcO/LdHuj6GHtMUoSAZ8jCUnsAY7gkhy
	 cmyF0RfwScy1KLJnu9FjygFrQmIRBfp5pqAgYji3xHFCBJ2lkCTx6/p0gSbS1rCgTf
	 /d5A1UvFV2C868FnhEB9Fm/yjQrQATXpoN8yViJiBysD7ju2pdLWj0mRSMPX/XkLfE
	 783+1WUjOSBE7Upn9PMTtNeH5p+PjW6fAYAkRZ7kEavhkwdC1mioi+U0H9a5bjvBwo
	 nKYUz0JWRThmkMTLAKfBxG6Qc+Nmu/xmHTArt7qy1Ws/zqWFbsSd2FETtyvQA25WZT
	 hms2YNrJEe4qQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92F10CEB2E3
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 04:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172775735359.22924.15294911439454652900.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 440ef72e7a888a426ba6788658bddb69c7f68e7cb75f458327e9c0594da74e8a
Date: Tue, 01 Oct 2024 04:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727757353
