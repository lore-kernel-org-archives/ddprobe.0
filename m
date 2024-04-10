Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04B30523A
	for <ddprobe@lists.linux.dev>; Wed, 10 Apr 2024 03:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712719697; cv=none; b=hOckrIB1jntXTsKwyLPgiQWZ+8Pi1aP1i1t+QHTzlge0xiMv40o8FGufIc69+PNAlC/lfrNZIrnbGijq4j4tOAB378IApspnTcs/ZToWoocrnmHyRE7F/e1izFCyPyGCTMVNG9gFj/tHe/FUmPkt3GY9rFZCtiq9Js98j5Sitrw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712719697; c=relaxed/simple;
	bh=qc2uxnh+jSm2Lbnj7Jnqnh27keF2f/axiyuD0ptmWCc=;
	h=To:Subject:From:Message-Id:Date; b=U6DwF/EpUKwXqftECJ3YlLmmkgC6iogIHaVXuWZP/z/zHgJWd0kvxVbqrPrSBMBzAapwufM/3dhgHHjmeISLHzrEdX5gWT6z2NumUhll5+y0Bb13LeH0y5sWdHvpj5i+w4HaTqsDjSpkE4J6VNHL2JgMJC0Chh/mAZAkZ7mHA+M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t91LmmGr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t91LmmGr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8C5DBC433F1
	for <ddprobe@lists.linux.dev>; Wed, 10 Apr 2024 03:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712719696;
	bh=qc2uxnh+jSm2Lbnj7Jnqnh27keF2f/axiyuD0ptmWCc=;
	h=To:Subject:From:Date:From;
	b=t91LmmGrt/gVke5BCO2oknAYiVZFvPjUiyqBRud84CAy5QudW9I4vBY71Fk6bqDCJ
	 w4n8oRYl+MOB1rhLifKHNc6IV62/q6PU+2aliUodfanD0FAtW2m289PcMLvmIi0JYm
	 3eahyHuCQxjQphXFxvcuNrQkCfVs/JAevnKlZpr09WfoArOds1iWtSaGELhmAxEdQe
	 m00WxTC1a9g64QLmngJfKZvnEQb5ec32iwKJL90mCVhG60ob2pnZ+gPFvo5xDhQ38K
	 TCJuVQlXF7VgL+LP9FbCKCHArK32xuqty27akdiyS1r0t51h7QM9nd6Pvju2nbDAd5
	 JXWqYMy0Bq+5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7361DC67861
	for <ddprobe@lists.linux.dev>; Wed, 10 Apr 2024 03:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171271969646.15838.9734500930146644238.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0df26e3b89461fbfb8d5d694c95f2cd12ab5fa500ea3874cef0692011a0e693
Date: Wed, 10 Apr 2024 03:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712719696
