Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C3462C15B8
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759458594; cv=none; b=BMiNUiEv5uVTtbnLt8oGwQDN/h+Vdf1nlx/UYY03LMInsY1aBowgTgxPEK438d4ryBk+/UjO/iLNWNHOZw2pIOtwMwoOJeTRS2zn8gO1OKIiKYArKarxmH0r03vtfyAHDEjywQCtccJuijDD65Ae3F2cSNPG8wapyx/rxpvszIc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759458594; c=relaxed/simple;
	bh=0TbQ/EUKeiDBo3nF2m2uKHlj8zd00Zvx7JaBOnKS/uQ=;
	h=To:Subject:From:Message-Id:Date; b=RONCY9lgPNPtVUVcuAedkE3lJlTCLVb9903qClSkwKscwIwTI90HOVO6+qZOHyVOE90LTqt+w+bbKCMwLd4O6Vu7VMupcR09ZB82CZt0TDdE0rhCA2nmaJ8RKfcMEH4vNJNQYysT3d0hnrEnCH54jrL4KZeiIf+sZ4eL/76Df7M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sKS71C3T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sKS71C3T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A333BC4CEF4
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759458593;
	bh=0TbQ/EUKeiDBo3nF2m2uKHlj8zd00Zvx7JaBOnKS/uQ=;
	h=To:Subject:From:Date:From;
	b=sKS71C3TG20tkmNaRiEF8SvLy2ihcE2tSKEFERu7eBTqAa4nHXgXFuPO4aZmfuXGK
	 +Ik378fjhHUIOXcFMA7hQPnep0oak+fkba6kvELp6WzbKYFCpC232leqWkr8CLxJQH
	 p3ktPKHvyYSR9QNVKFokjq0P3ogBKEBxbPEC3m+h0+Eoikxv4T1SQFRZMSpktqi70Z
	 LimjO97p7z2eAkIx2ridflAp5WDcXTIgAziLDecTXIL9AroRHVI8FMvCDjEz3CxeFB
	 pDkUfUl5WfMKQOyvktcwAUy4HSzL/4A0Yh1mxLTFQFAVcgBcgTdD0jedwe7kpFuD0x
	 E24RRHXbPf60A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A1DCAC5B8
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175945859357.3637.7343391402715516184.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e0542b559ca5cbd195ffea49027eac819d925103fb5b22b86ca5f490b422b23
Date: Fri, 03 Oct 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759458593
