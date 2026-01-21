Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C0E9125A0
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 09:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768988634; cv=none; b=RcngXdY8DH7CkwPCPup1tItcpaDGqN8WrLPdJdVPWHXqw6B/HEP4SBBUmoON2L44dl7C6BkcwJiYoqnd8xePXC/BIb7+zVAg4z/Nn91WyqenbwOeCIT/VUwyLaDsf6e1Kt9a2MMrENFCdQba8Ovi9JqnNm7tBxq6qWahad/Hb80=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768988634; c=relaxed/simple;
	bh=lP2Zc65ksdehy7ssRBU917VhF2ZWFf64w90mGDgQzkw=;
	h=To:Subject:From:Message-Id:Date; b=l9ZTc/eRx9wSdDkYDlVZryTe2XR2dCQhTaGW5/VG6B8UM4Gy+X4rV34+QWPVH9AqVzP4PdyhWNBBazpHVzLF6LG1kwWbSxBS72MnYevw75pMUS9bGaLJLnbQQWjPZnrpoLTde5ki2ePJ+kbKxd8RFXNJIwegOA3x0DslUw3KlNQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jmZ2pGZ8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jmZ2pGZ8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1A07C116D0
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 09:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768988633;
	bh=lP2Zc65ksdehy7ssRBU917VhF2ZWFf64w90mGDgQzkw=;
	h=To:Subject:From:Date:From;
	b=jmZ2pGZ8Zk7fTUaqbCej+vyFVOMtbl3Szq/h5dym+nohwdYRxFw2ESDkcoA98hrfP
	 /vOrv32NP7SsZacPkcmlp12J6TWekCKH08Yvk7aSwddj+MkelBOgg9bYG0eVsNGtK0
	 WzZqAwIDDBYDR5t2DSxlceMaJsYFMLe2LRSD3VTe9kR01RbvX2hrawHV/WNxXI33z4
	 YLjVHncUn9tONv34nO3YMJMY4qLg5vhblnsqyuKR4jfD9ayk8RrkfeWjzNyON77V0V
	 KtjG+9BxL6Ys8t+nGsTsWm480aQ7LFn079rXA9JMDuqt3Vl6IKAUVz8xwu1Paojqjk
	 XhYzYIAg1gZnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 917F3C44502
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 09:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176898863358.16672.2378307845802185444.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 451d6c2b69387acb0f36ec7436a1ff36888864263b9d4a40e166a1acdfb2bae3
Date: Wed, 21 Jan 2026 09:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768988633
