Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D00D2868B2
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 19:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773516294; cv=none; b=WOoyXvVKVdd0CZdZBeqvuDARb1jMYc4fUJmcYeNuUtPYezOvhw0LYJW2UiO5UvpLX019BEJNod1QRzlyQpXBAo+Ycm9+HXubKICYkvwRtHzs5e8cAToqtHRU+wgwjhH/jePULhInkTLJ7Gt+hxUhwcRIlmHp7FfmjOsVNVa6xfU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773516294; c=relaxed/simple;
	bh=oBoBsnY/3LFya3+qdIf/XAokO4JUNDX6kmR5PqI0igM=;
	h=To:Subject:From:Message-Id:Date; b=r+302teRYlMQpae7AWIVhrztsi9sPdVbCPuYR8x/FShGNHilHeOvTF0G1405jMJ47CIAGwp5wwkmQwWwRMdpoKtOCFllJ2NqWzzymS4Eq/lguq7u+3+0gp8YEN5uRaYeT1hSp5UuzukTPS4llX+kGmsVIjYTQFu3ZIE4Dmep664=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FMKEQnRb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FMKEQnRb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B16ECC116C6
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 19:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773516293;
	bh=oBoBsnY/3LFya3+qdIf/XAokO4JUNDX6kmR5PqI0igM=;
	h=To:Subject:From:Date:From;
	b=FMKEQnRbZCivPpnbMnkCihJWSlH9/lb2MJzDAEqrSxW5NA7sEa6IH2SA0OS3GM8Vm
	 3eoNX9YBxB05c23u2PwLU3s+LDiBU8Kq7/z59/SXE3rCVEcrcaDE8pwMhp//7+vxL0
	 a5pWi7PMXwRbjoKHxwfSXdpVwj7wPPE2bAcFsOr436uA0VVybWurbWQMwakL9HjuUD
	 hntMT6CC7KzBDfikewwyM4Ofw+HeGiXHCaUS6RhY7f7307QRSxPdSmy6gmsA6xfuYy
	 CDPn9E53v+dnBPqtdlmXhkgA+im4k/SrmRoj1gPt1jnJ2CfhczDJuq537MWqtxmOaX
	 7Gml2u0QkRNlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FE3B105F79E
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 19:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177351629362.17505.4031578910041195710.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f912cf813710bc7b59f52bf7394a76ad393a745921119961143ac6df109654ee
Date: Sat, 14 Mar 2026 19:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773516293
