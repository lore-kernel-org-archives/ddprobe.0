Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3126D206E9D
	for <ddprobe@lists.linux.dev>; Tue, 12 Nov 2024 16:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731429954; cv=none; b=QWvZ/xdoXPDmlChuA7+QJld67UOFwXb3/cRg/7BNghZP/OdHLCWC/w9kUw2MMZQV//su2Tj+/Z6oXaDgU4Ib/pL+BO+odkpvxltM4HEKJAx0Ib25Q/9XwUquIfJXjOtU7RktmQ+VrE5TftywetK52KVHxwgqW6AkpR5XWqcSQOQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731429954; c=relaxed/simple;
	bh=/jDDWGRe8Bca6uzFFnctoXGZe+Pz3begObdumaKWx4M=;
	h=To:Subject:From:Message-Id:Date; b=lqC/ySlxoAe2AV/AwBK17hXjXhDr6/BAmCuA2OiU0uG5xvsHlvj2/Id7P3CIKqJP1xIpV26A6L+5gEaXA3x4SPhYgq9J5QQ65FyEduplAQ8T0LZ6grzHxbCG50h8dwOMtCutfnjX1M826uxTI8VQCxlIxHUJ/hwHq05pW4Dq+Gs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PF6vT+4H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PF6vT+4H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A64EEC4CECD
	for <ddprobe@lists.linux.dev>; Tue, 12 Nov 2024 16:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731429953;
	bh=/jDDWGRe8Bca6uzFFnctoXGZe+Pz3begObdumaKWx4M=;
	h=To:Subject:From:Date:From;
	b=PF6vT+4HezOG/E0UlNirsTCrQ1w0DTJa28wC9Bc/Tzyp4KLHK1DFzl7mOmt4jT9v9
	 dxhUJ6Zlgp4x9hi9NR6TXKGMJX9BCS8CAdYyVLvonDojMEX4gJHp53Kh6wDv8Md8GL
	 Mm1G18/+aXWa8voyJI6Zx+VkE94MHxEdeXkF/fvfS1HL5jMSF7o8DvUglqBgZMhqCr
	 PgnKcmXnoR3HQtxwfC26yyM5BTHG428dMCRRVgSZ3dJ9JjVatvmTow1bCcbPdX94Yq
	 HKGc/Xl4DhikjuJE7SE5PWEBtp8hccDtMoLPaWGcj5D7TEH7T0Zm1lTwK8E45JZe6s
	 ZnkgwaJKROV0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93D25D42BAC
	for <ddprobe@lists.linux.dev>; Tue, 12 Nov 2024 16:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173142995359.21843.4756974733376554411.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5b7bd059e863b1486b5af139423cfb47c0bf394a11b6a0da14567dae6bf1db2
Date: Tue, 12 Nov 2024 16:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731429953
