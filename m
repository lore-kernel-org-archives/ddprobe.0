Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2806217A2E8
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 21:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766610234; cv=none; b=dVU4/SZe7aOPnaiicDA6R7LTc2i+8F4oFohpeu0TXNtGsF8eCGvstzl8IRzLjD+SS3WfoXhVrA0zr3OFeqeqceRGssQQhihw4FlnumLE/PDz7OaP61bRf47tY9zgy5Y9RWT7sT25VBYpzQOPFaieneTB7c78+o4D8L9TEeCA6qM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766610234; c=relaxed/simple;
	bh=KS2Om9Evybp/+NStk+VFE8inr0o9hlpPkK019lQLQw4=;
	h=To:Subject:From:Message-Id:Date; b=d3WkULKO1QnurWNqm0lNmQLPBmP2DpdALT1UcoIyKGkdJ+Kq7v8zZYAUbly4p4sOYUh0HOa3Q3099svmLOl46L1F1iTLNn4Oq8b7uIESWc0/VfYTfymyhGPzhyfvoRit65XoYTDxISCPEUqmpfpMb3/DsZerJJQDIuD8RtS+6yI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hq4kWGVn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hq4kWGVn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6EF5C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 21:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766610233;
	bh=KS2Om9Evybp/+NStk+VFE8inr0o9hlpPkK019lQLQw4=;
	h=To:Subject:From:Date:From;
	b=hq4kWGVno/M4hUCBBhnskYV4pfnmoZxgFo7jOL2u5pdFlF0u1F++FVYZ6+z3wmkUV
	 A2shjMTs3cjBCRQ08Bjw0zwLooUXgp+iCydu/22Q2raAqUmtjA+Ym4+X/3eDjBZY//
	 E8ZX/WDBvU+10iandCULPt46H+bVJ+r6sWHGWdBXw0fQEkLmyhXkMWRw0eD8jnRGtn
	 IEC1KiJFf7FSo1vUtAlpQFclLp1Ie5YVWTOBXSVgKuwYS7QhiBAb6K2QBwSYnC1KAg
	 3fM/sOOIpkOuBg8pAn9ufMSsbvR15G/5a1eImFeJlnPB+BYUtQgImp10KtVDTmgdSC
	 WqXhsVKpL6atw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92F34E78491
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 21:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176661023358.15687.5779097043667979496.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f62b67c151945c1cc7cf25d8227ed7834c3f1b68de4167023ddebcf0ae07fddd
Date: Wed, 24 Dec 2025 21:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766610233
