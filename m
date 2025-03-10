Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BCB81DE3D2
	for <ddprobe@lists.linux.dev>; Mon, 10 Mar 2025 22:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741644535; cv=none; b=q+VXBCoFDlNBn9RCtMMGBql9o+/9sT0yM4Fd26qSUGOWPJcx1eqsZlMBEH0028UC927XPjl/txNFvaRBWdOyfu6vIDDywsVVI497DppW8+fVVPoPe0V6HKLTb+68FHw5IfKJ+GjHDdL1ebHy4ucKJcp7EhlT+ymltl4zHcyjK18=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741644535; c=relaxed/simple;
	bh=l2k0UsO3/Q4uuoBZvIwBOIvKGzqx4evuPs5sgLIDwGc=;
	h=To:Subject:From:Message-Id:Date; b=NOEdSv2Qg4Qvvelih/CPJBmyZ8eJu/j9eQhsqz1W0nsiyuaFp9WbPplq4iTHIVjed7LYOlFKrvHhLTR7mVYbZKIve+9+NE9NIHT1nBWKawytWy5WzNA/vOnqHOb8Z1Jkjw/NmknERcRFjx818yiFBPZHLPE9OSiMNZRGXBovx1Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VC33qnxc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VC33qnxc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5A91C4CEE5
	for <ddprobe@lists.linux.dev>; Mon, 10 Mar 2025 22:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741644533;
	bh=l2k0UsO3/Q4uuoBZvIwBOIvKGzqx4evuPs5sgLIDwGc=;
	h=To:Subject:From:Date:From;
	b=VC33qnxcHaSilpch90z7bWxA/9FSXn5RUOMQxDmwlrpB2ZQoowhzDssTyLGlrHTRo
	 ZgipJsabYZ2tytH6aO5T9UAC4zJXbriIbD3TJFFlr+yCQpb90aSIel+vMzldfJDklb
	 DlwIwfUeuBK/dt5NpjEiT5RlLLYv9iBhO/5kTQTmx1Kqi5ybvoKML/1O9tjWfj0Uq9
	 u6uBkE+fQyl3m5OzGvHdNPXlH8deatIjP8QopIAu8pmNm/Dkv4y178UvzY8cUkO+v2
	 Qv4v5jPv6scKvigntkmGTyLitKU5rkMdA1VrSvVOOIPNWUVcBScfHAWaiCDptu05hm
	 JiCzZWsjHtX6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9949DC282DE
	for <ddprobe@lists.linux.dev>; Mon, 10 Mar 2025 22:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174164453361.18590.14575041273355944851.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3cb560bf6d382d33c73d36dca918c1b00e944725586734ba0cc90c48b120c94
Date: Mon, 10 Mar 2025 22:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741644533
