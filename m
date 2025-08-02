Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 411312E36F8
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754174994; cv=none; b=XHk+7B2iJnVNpFN2LnwgXD8zjTmxivsP2VItkDZZ7ttkTRXcrPmCsbOq4DJwwS+2GVmwO2R73mG1YePFF5rGsPzEGem/85NC+Ik9UZVpB88EcUOkhs7ZJa0N996i8gaTfMdCqo3TQSJ9w+bfBREBm1jx9Ekrk5ik4wYTJRGu0Tw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754174994; c=relaxed/simple;
	bh=pdxaDDrtlcPAKqO8+LYz3ZrrDLFSfQcyPqZICNqTzbw=;
	h=To:Subject:From:Message-Id:Date; b=Z8K1fcjSKAvIu4bcPNF5Zs5WlM10RNDxCw3k0swe+eatsJAU7UAGxebXks3SBFyWIBlprU3OVfJRQN/1LMbUs4p+I6BAN/yVo1YGul7hCZDLDJXCOkmMMZhph+6PXXkaUp9m8fPWWcgkHUur3G8XujOjVv8DHb2MtjZdMAwx+WU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zth/s8BD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zth/s8BD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8179C4CEEF
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754174993;
	bh=pdxaDDrtlcPAKqO8+LYz3ZrrDLFSfQcyPqZICNqTzbw=;
	h=To:Subject:From:Date:From;
	b=Zth/s8BDFjD0dA4PF4YtlA4ulKYmEk64ot6QuGYQai4s/qGBQ1V9KbExirGwfRLEe
	 OULITe/jo7v58t5URlR2VF2gExxb85izmCFQKDjgEXM53U7NHWAP5CU8xSRzkJLVxW
	 sv2+P7QN9cmK2ub68cpBCZW9r341+4xYj5SZmDYoTxpZUiO+YyHSGfJSuKFoXymbeW
	 XCW4+599LYN6v5NZtSe8kWf98c4BRR9HLe3yWYaxTPYqWxznjNDnsfXOfNazJh39Bi
	 WCfCzQ+JnjzK7A97cbaypZsqAFtEF0IpruZcqJ0pOkuv8FeL5AdZIxXosyufM6wAoQ
	 Egt3wN/5k7ybw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92ABCC87FD2
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175417499358.26574.11169524656268761568.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14f16ec98c37c5c92ac4da18f979bea7273e8ef9002c6354726e76030e279dfe
Date: Sat, 02 Aug 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754174993
