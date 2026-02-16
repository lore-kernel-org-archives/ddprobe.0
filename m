Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38B4C26CE1A
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 00:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771202694; cv=none; b=f0ljrhckGBQ9JZJckqCEMJ5E9QtP+7CsQ709zkr/COaxwkor8zY5uAfh+KAqMn050BoVoD/BVryoVhbfiV4zry0JezYUuy5qcf0Wa51tTZT7I4jzuReHmRbExpEsddj4i5oaqzBXbC2k943hAELa2Zput7+NfIrmkDPiAUWTgpU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771202694; c=relaxed/simple;
	bh=WwCQsJs19Y6c6UpF6dLO3nK16l+9tiqGIKxcaAKlOGk=;
	h=To:Subject:From:Message-Id:Date; b=Ogx5diXuO4mdWQjg2alBB5OjQdpfghXlnksggMqz6XBIg+L1sjUnCix47EWYdtchbhTj5t7fEMtV3DLLIRl87KSe4aEMYxRKsmddtPGclYKc8bFQPJvFWjDA1yL1UaPyy69USCWKKL8tyKnZKd7AyOBooiMoNIIjcKSe3/g1zIw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EWGVY2VC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EWGVY2VC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCAC1C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 00:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771202693;
	bh=WwCQsJs19Y6c6UpF6dLO3nK16l+9tiqGIKxcaAKlOGk=;
	h=To:Subject:From:Date:From;
	b=EWGVY2VC/CRyMT8BL4a9+OfLHGMRFUWcuJrhRViiHMCP2xnDI97EN95bfmUGMdQtO
	 H3Za7Au+2Aft8gO6q9WXtJbl1o1HYi67feoT1GwuNjSklZmFKD4+0jq7+aP3vxDG0+
	 rU8pPbrnz44C/vPGd1KM+VKiiRbcHwaxkDJZ7+tEY3/QvaN/+I6lynZUW/gMspZpl4
	 /JSLr0P4SqZVaASnPEdwYUPN8dwK9dmNL6td9pLoVtRNd9zs4T+WMJOQrWEWe8kh4I
	 tUovpWQrrbfzYD93BbsKwGJ+IW+b+8i8GIhh2TqS4qDLMU9UZc/IfmRzoqhdGcVmqL
	 qi0dtP/rHwYew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3F52E63F1C
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 00:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177120269363.25473.13356934686003067950.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8082f432ced98b44a48e4c6bf5be2e47d0c9774691346a476fe914c1f4ee768
Date: Mon, 16 Feb 2026 00:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771202693
