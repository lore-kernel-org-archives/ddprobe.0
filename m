Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B51F13AF2
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 05:26:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720416383; cv=none; b=DbOx9rL6MEHmj3lGAuBGN7qfgGsFp5B+hNwWtAJTjBzQqrRYw8OGOkw/Kx7k33Hln+514SS2cKTD5CjQSSKUeO/hbxgF6LzxwMVZbF6K3WyICJ2MVRWEJaNcvSjQ0bAn2/rXTbaRXhSS4iRxZUOAgtkCynB5HutUZBaZacr9NoI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720416383; c=relaxed/simple;
	bh=LbVrXCKFotFeyecG6vwPJ6SZw9IRFoDWWIINt6MvxMs=;
	h=To:Subject:From:Message-Id:Date; b=ZJsbd7Ka3hPio0lKnzQvq8ybsF2hDyr1zN2BrxJPFanXDMFol9MHiZjjLLFG0UQR1uOSctIy6sfuf+mp1EhcIBzp2Qr8q/RpBkREK3aCqeEIle9SE7spFkxljy0OuXSM7/3Vq6qmYvhLPtRs6j37StpcCOyZiyrKwywfs/jmxWE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YYfWbo/D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YYfWbo/D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7323C116B1
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 05:26:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720416382;
	bh=LbVrXCKFotFeyecG6vwPJ6SZw9IRFoDWWIINt6MvxMs=;
	h=To:Subject:From:Date:From;
	b=YYfWbo/DEmD2Ld1oaVbs+bnAbTTbvpMDEkulD3Y/JSyyTqwEivW/EP5w0wlOj99qX
	 zkKWhPVDLGhkB2DBZpHPejzLLqqjn+1DdUBLUHgyjczvpwEu05c2JrErd/FtM4ru0V
	 jLDlCO2mjNexyARRiMLZfTDm3x3HeAEKjq8ALjZCTDz1ele4t4cHrgHG6nDIc8ze3p
	 7dDVDoDbdnTdWdZ7aXsiTZISxCSlkkh0twE+gT7jQd+OLRPpthdySnMH0noHE/vqMl
	 AF7JmZSmNnutZwzMZ9UEuzSveCubJXA2DyU2menPCH89wNrh1wvJhaAFBGJ/NiKM3B
	 DYcaIzchnRkpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE3BBC3271E
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 05:26:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172041638283.32172.17373388759617751453.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9669eaaf80361891145017448398778969bd9a71c344f1298b54c12602d1e338
Date: Mon, 08 Jul 2024 05:26:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720416382
