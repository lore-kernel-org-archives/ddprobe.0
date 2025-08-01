Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29A4B360
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754006994; cv=none; b=izf0mV95APD/peo3u7hNA4BY3jkAmAmGGRGnd5Zx1vdcDVmKu6A6ZXPalZYsOM9tL9r0pXnJItfhiOv1VaGkNBPR/+sGF8/pGZtTTwNp9Q8AAYHpC/aK+IE8RaKk7nRVTHz/2Ywf+DcP5a3j6gq7XIijm+7JDGvtiZNZMV7XJ1A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754006994; c=relaxed/simple;
	bh=5ibmMUkl6Ov/P8HXjDmXoaY6FBAODdnfmrAnR7lawgM=;
	h=To:Subject:From:Message-Id:Date; b=DEVzhCTVLVuYyrRQI43hNwGnKGGNprb6nQ3TUjhj0EubpcLs6pXbp8/6lDYr0g+WfU6YUVpbpeB5iHu+o1OSUo2qj/PcEyf3KYGlCBYiACKQUApsQ7KoDp1zUt8IpRLGMzaxd0BWWlJttjxysbIvSwQDd/MGjZDgydZf9ICbyK0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ufXkat2k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ufXkat2k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E9A5C4CEEF
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754006993;
	bh=5ibmMUkl6Ov/P8HXjDmXoaY6FBAODdnfmrAnR7lawgM=;
	h=To:Subject:From:Date:From;
	b=ufXkat2k+ysV8yqAjTlhtHkYNMVp/qTdR0P0nLa4xZXDDstTa7PjoiB7H3rFdYFQj
	 W0La65pHWENFOmpFuC8h8bDZLbRzZL4GY4kJb3qmKSCDnfu+F8ou4Q/sGqrBEhKRyH
	 IqU6w57i+zfa6jgq3jhDpFXL7FEUliROCKJ+wyF2eJDihp4sJCuiWW+W0GKdtlOvbX
	 nSvX0wQ7NRlOEX3Q9t1Lt45BnPIeNjHmdBrC/af7MnXVvmz+ktVPWiXrYhjMCv5y91
	 isYEn0IKZVDFCH9NykSdFWPGMlgb2g4m6xvgdKu78GNnb+iX+aDFr5waFPH71XtF9Q
	 fV8WdvOvYznpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F3A5C87FD3
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175400699357.21775.3965276103933099205.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13dcd7f99dd375cf005dada2301d96af5ce71c8873834e567c4be0c0a11b4532
Date: Fri, 01 Aug 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754006993
