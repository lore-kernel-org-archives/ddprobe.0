Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 040802EC083
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762344594; cv=none; b=MsiFYLBSslgDtr+ljjeSrL7zFp7vbg4Hd65TqnID/ad9BsDEM/WG+707OxurJM9qdITgQlxiZTWXz4XWcZYFGmudkFiMYH0nZJmT5wSvAn0f23888DYqyedbT4G0BwkLqC5cbBvmjtwMMYBSQS1Bxc9518O+o5knlq1bG4VA1io=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762344594; c=relaxed/simple;
	bh=x9INfFJ9qpXy2j/v+auj1gH24SPGRkMVWIBxa8Wq4EE=;
	h=To:Subject:From:Message-Id:Date; b=WXKcmwUj/AR+T0jJJMDqLTIU+nyk0U1tDw5Y6sb2NaA/CC4aLYz0AoPP7DDoZTDMF0kyuDRFSV6AMdY2CZikS4ZItYCtW3WkjuanphKS8PvPHGt4cFPkKdxD9Mstl8dtL07dCFfTTk/o/7Kkrzbdz09wut+71lPYeTIBTxPKkAU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bhd3Fx7Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bhd3Fx7Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACFAEC4CEFB
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762344593;
	bh=x9INfFJ9qpXy2j/v+auj1gH24SPGRkMVWIBxa8Wq4EE=;
	h=To:Subject:From:Date:From;
	b=bhd3Fx7ZkYwSKr6BoyGKB5n7UQCdGrrT5S0IE7oyFB/CC52+V1Vi7XViES8yuckAX
	 KR14n9BUXSIInjAqW65eYraxUmDUNNtTC/hHH/gi/Is0S2EjwruJgU+qr2cCEXXILD
	 /8xtKWigf/nO56MiBBb1CFd/n5D7R0aYYolU3heCD8b/DVzIOLOER0jaxh2obxA4KH
	 ukA+6S2jdqLFFgY4MZz6vl77q4p3h5j5wvpaoXKZkR47gZOUOKeTh7yXYCsz+ac2lx
	 kCxvpZ+l1GJXi95tFueR35ehEWkxcm0TyVqSkA3oQ1RlLB08yjlaLspWY088Sd6BxF
	 hyYw54kBelKNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D34CCCF9F8
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176234459363.17206.5800504649481254012.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 584ec6d79657ae9ac32582bfdb585b2b34fe5c04322c0d78d59545c862409a5d
Date: Wed, 05 Nov 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762344593
