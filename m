Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 095EB2264A3
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 15:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769442834; cv=none; b=stQ5s+Cgv2bvfPKJK7TwK9+aE7T5G0TR7fQ+QBk3it804seh47+0/dwmFIHk8Ijl3UTJmuOuu3x/lWfqnwLpSzQnkr/02Kuxsag1wGaoWhx4HuBDtQ+oQZsrQxnf11n5/Df63Bs+T1BwqG///FJAa98k+9cv/x9KH5KgIdWU/Ho=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769442834; c=relaxed/simple;
	bh=B3j63RNaBziwo7Q/53V63Ho6NAtEdSjRS0iw70XJwTI=;
	h=To:Subject:From:Message-Id:Date; b=erQIm11glagSapktUNDXZwBRr641LbVp8lvIkwoougVPZylQnzqYyVarJMRYoD3nFdFBxxmrBO2QdnwkgZE4e+KWhaY7/GM5FvR9GfmeYOz9CcaroYUKfFoNZ2OdxWia7zZCNT0NAljFP09lPCT092xN+rGjrKlr4E0cMFl4Pkc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cg5zqp+m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cg5zqp+m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A49AAC116C6
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 15:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769442833;
	bh=B3j63RNaBziwo7Q/53V63Ho6NAtEdSjRS0iw70XJwTI=;
	h=To:Subject:From:Date:From;
	b=Cg5zqp+m4Qvonl0kHDzTw1eVpyjc3RInKeJfhyF8b12cDXPDAiKAzIFVmAWL7yTdD
	 j2PV9CgzTYvmhvAgzlQvQWfrdAiwn2gWtEDeAHFlpjPEXRpd68ZHlyaka8maFV3Noz
	 iL9XgM6Zfz6nKix1Lcfc0aRmY/ErMY4QsuAf2H3BSDvPgEhVZ1d2wmCSdlmL+nqSdg
	 cB+zns+CScJp6OfWglh9itbH51OVJ8ea+JIvKioIpnarDxgcUsnsM2u3jmIvNzqCTH
	 VJojoT2ussNGAmRJStH7CDftW3VVo0gRkgtbrckiTfttaKx+NcLKTMalPyCK5tV5+o
	 SYkVPWSheCuZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95C33D13C3E
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 15:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176944283360.4746.10704284622829183102.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b46dc714002e27a1e6f20d52c6188765aafa9c9bca79b78274c5e7520c652ba
Date: Mon, 26 Jan 2026 15:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769442833
