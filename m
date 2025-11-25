Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A06021D59C
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 13:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764076974; cv=none; b=uXOUzDx+uC9CmiMvS64xsTq+U0NsWbspZor9ZZyxudImCf94XbL/YH/yfwA/EO+HYfq0s0dGgpk2c1qH+FG6Pw/FJA1N59f74R/u3X1elaMMfETzNuxLl1ZFbFWC+8ETSlds3NbgsdR2/LCy7uLdcKb3VlHFgPVoNEtew7EDE4s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764076974; c=relaxed/simple;
	bh=+3Jq3lg8vJy+dxcShUxVVFl2PypsIIM/Yx0PV89uk1k=;
	h=To:Subject:From:Message-Id:Date; b=si4fgXFwMsBPhmUg3EdO3gqNA9RHefqHm0Z87oaVSBSYuORau5xr0FD29PVfw2l68CaXCjTr7WQMh/WdggH6eJbXHZuxhOGzRmx+2m+AjNltuq9Y8HgnAbDaQLjxd2UbLHvSHygK3bL7lc2LZTfS9vEmx2iyUwSNRkyltJeUMAI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MeuH0NaW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MeuH0NaW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A19B5C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 13:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764076973;
	bh=+3Jq3lg8vJy+dxcShUxVVFl2PypsIIM/Yx0PV89uk1k=;
	h=To:Subject:From:Date:From;
	b=MeuH0NaW6DwlaFU2C0szBVhVldrfZoChz17ZANittJ5E9m0/syllOURXVy7dt8mot
	 bUqlX7tMa5j2MHX0LAd+hD80owQz+IfDPvtBchOIl1O9O/0wYspYfy8KRVpSnO5EAs
	 oCKyP6LFjHsUcjosmrmkxGm0j/EdSGTvYzTBLkBCLHdr8OZ3MJwZ8azxT/IFZcNgYs
	 kVIeJjnkWDyj4rO3sB9nHPGPa2sYzdjsWRZQt5kzpV3VtjI6/E9pFhl13CTLXi1xhx
	 tgL2vL3XqFmn2bN2tyZUgOjSU1//r5bpXjjFrnaF1UtaQGiRBIyoYpXaAN1Ot0Hxs6
	 1qJb7yynBJuDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9268DD0E6E1
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 13:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176407697359.29414.4293226752052236421.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8c1e5f546cfa3d204708e799446a94e12ba1c42cea6a0c4d88946525e6ff427
Date: Tue, 25 Nov 2025 13:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764076973
