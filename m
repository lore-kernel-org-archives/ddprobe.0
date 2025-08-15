Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4438B1DFE0B
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755275394; cv=none; b=XIa2qb8SJH/q3JPc51F2lgqsCXLA/+YbKAeVZEyjHLAxG+ahdMo07YxWxn+aIL8WwnRvnnUmDlnS5ni8bzIx0QVWzMPAt2USxpo8laTKPKyjn513E1UsAe5i0hLyaNaYnvo6xOlMRH7C7HRFN89O2+VQaFTo0/NjxPjYf9PU8KM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755275394; c=relaxed/simple;
	bh=QjCh7jzwo2fTWCTwhA+vPO2r6QHQivKWpahdFSHD/Sc=;
	h=To:Subject:From:Message-Id:Date; b=uCcx9+0KVcK7Gj6Fu3Kn5JFTfIQR1cRbFgrMPhDwBaHF2zkfyq+v5SkwBTXDwnJSfEwjnYd+l+LFf6tWsqv99RH6GK1EUQBGRO9FBQNlR2/HylScD/Wa5SDKC/VwZ282BiE9cySesMHPbrDK18/VlbmVJth31J9T6E0aN+HMrhI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U3yhkwXg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U3yhkwXg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6FD3C4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755275393;
	bh=QjCh7jzwo2fTWCTwhA+vPO2r6QHQivKWpahdFSHD/Sc=;
	h=To:Subject:From:Date:From;
	b=U3yhkwXgOGnQCe1doZlIQ9giDDMPV/ofkBuHVt4tSEOquSOIjWXNRStGicRiXUWjE
	 6YACbSKKp79WYYruFWPXrI5l1airuU2rm6DcnOCLAqVu5I8FoJDbU8cm8tN+zXKUh/
	 Sgpt8QKTE/id08IDohhKc2SPHPdpJq6/ak7KJzbKUJVHys6X/sKGwkq6MSXrh5PZD9
	 +WLGDAK3oTeboLSK94cF3cuvd6WFT7OtXoe1DXFuaVkOGO9iRW0wLsnGFhFEH6LtEg
	 JnbEvopMsgtG0EL7cmx7eiKYalt+A/PFnNsSE3jkdpwjYNSC0J+iAyb3c+vff8TqGc
	 28b390dzVDU1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 961E0CA0EE4
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175527539358.13708.3780141549234199211.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a68116ba00fa996e01c9fbca3a854aa23acb3c2ae0a4d966c2a59fcb514140d
Date: Fri, 15 Aug 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755275393
