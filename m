Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 189F022B584
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 02:41:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763606514; cv=none; b=n4zFVKhxoev+WQ9y2jGuRBMiHb2CKxCRUIvUHE9+ZZF78h/BbsDkDMk5MFcmWw0hN7m7DqXXQpmUjK2uN3o1LhQjMEU+3wa8Jhg0tKCCPiy50z4CN3ubVNMkMFRIkfx9vRvdCXgCzquFRjpB9lpuq0d/wAaTUtrZNFNLoSQeLSg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763606514; c=relaxed/simple;
	bh=AN2pX8rHGxRxobNiMugO42SOD0owKB79b5ADZf/k25I=;
	h=To:Subject:From:Message-Id:Date; b=WrRQSwTUqpacslbqqV5en2mPS48u9Oxh6nsdhoVgT32c8SjVPrkaKkhW47g8gpuVLw5K+DCPwBBvbXO6TMK06aKexUGXY7hfMsmRQ3y1lT2+oIUuoCUTC5WiSyy4+SMyJdP0J9qzUHQg9tuLjnlb9Z7Ay9cyWofnrlDDYYEsSao=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GmNGWucb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GmNGWucb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A53A3C4CEF5
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 02:41:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763606513;
	bh=AN2pX8rHGxRxobNiMugO42SOD0owKB79b5ADZf/k25I=;
	h=To:Subject:From:Date:From;
	b=GmNGWucbxAm95/KjS5ZLg1Y3ZDNHSoU0+UIq5ad8S2pvz4FGcvd5PbwiLtNo96Qu+
	 TjloCW/JXmMpjw90hBHYAUPs2NYAJlqLPAEyu4s1K2ZvNN648QPDtfaKyrfD51Eknn
	 e3EcPnSvJRuQ3OMotsG6oP1/+Dm3nlpF36ohGy28cyZYxWHiZK/WNRdCPbzH5yv77K
	 gtxMjXuui5pJSFqEZB3BSHzn3cZU9xE7wyOfoIXE5up75gHH0IxxcVfS3i56ux4M+3
	 SEz6FCQdEd1rDppRIlrFmJYt2LJj97AWOdIJcTU5qG74U4Wne4KeK1gkT1Afca0cJ2
	 +08mgmAelFjsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91484CF64A4
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 02:41:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176360651358.14223.8022688184924967631.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17b03dbc7cb66d5cbe8d77334dd65f16800c8ed9fc6302a41246a00f4d444ec0
Date: Thu, 20 Nov 2025 02:41:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763606513
