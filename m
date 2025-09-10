Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18692221FCD
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757523594; cv=none; b=XhGMC3fBFnTe1UEjjReqQswEACqhRgiBUziOwx4blM562LM1r7AAcWT/UshNGGUf4TMHgc6H83jFCcXMcIgEIEnMD7/+oJR30KE3bn/xA/4eeYq2a6We0k7k6mFvbPCU+Mi4AZwy7CCUhXSGREyIcfZTLAsH8jQ3PwP23JdoaLE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757523594; c=relaxed/simple;
	bh=WihmFIqWAYAmZOhtyYOn1aRMUiCiPLWxyGFsj1PzsmA=;
	h=To:Subject:From:Message-Id:Date; b=JYEdhqXmmNCdeBK6a8n2dXUoJ7fUDec/AO6dGXmH8o1HG/AvlhGWXI/VgSols1CMXLwN2YDHmmr5sc+WTSz1ichcudRkERZzmtosK4S6IZ2MdcfOiaGZCWeyu0aFqgtfnV1HIWXCbNejEuWOTUPkAJNRWvkLDdSjJW8SS1UcPZk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h6EAaloN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h6EAaloN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1D62C4CEF0
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757523593;
	bh=WihmFIqWAYAmZOhtyYOn1aRMUiCiPLWxyGFsj1PzsmA=;
	h=To:Subject:From:Date:From;
	b=h6EAaloN4pnIkuz/aF6OI3d+VBDsyCFU5SoyTHsgFTGTAli35ml0BmMgItUZhfVhP
	 Ex3KheUEtjhKK/qwaW0+AegJzR+GSn+l2avEWJ2kU3mcYsZr4F1unNnzHO1Agj1Gh/
	 DzPS+OX1MnIEMbB4vKH1xmxDhm1FzaXzH6Xtfndc4hckKyQfWoyPSnjbPIXeD2Jp5t
	 C2pJJ8A2KN1WDGwMFppFZILPovwfzhMic/50bQ82U5aK22x73EtkEIOwzMLIrcuPRC
	 N8zJUgNZlgLVOzOUIWePtnPUYdD41No7iFyFMOEKJnDP2+r6c31FqO+/VBCVWkI25O
	 CUARfBtx70lig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90181CA0FED
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175752359358.1856.14353341547117899445.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f7152e60dfd908adac4976a94bee2bf8e20d1fbb7b5eb4a66dc6e8e25183181
Date: Wed, 10 Sep 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757523593
