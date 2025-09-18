Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF833224B09
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758224993; cv=none; b=k1S5X1y3o4+nu4vQ/Phh75TIO+sOCOceqjid/ytfFyGio3N2a4lUOECPCE+CRBGjiiJKm7FVhtsu9LNLnZLdDbs1BgUnJ/3guxO5s3JRxImIfqVCViM4JgctjrFg+1ywYAS9ICESZ3/9P5gKyQPEzzC1wE2Q1s88DJiC84iq3MM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758224993; c=relaxed/simple;
	bh=IgDkCrbsrwn6DJRfNQQwbHs+569WI/CojCcNNqgWTeQ=;
	h=To:Subject:From:Message-Id:Date; b=e+LWNppt+GwNu/gAhRKcU3xdDVFTilceRT8nKsuSXClNnepAXPYrloRhhRCKOn1LTYIj/ubZ9YnpcQjQ6FsurqqHEmm7Eyl842AdpaAaOjK+qGzA6L1iUlXu/UHkUokdzvGtSOl3otWVKSGDUP06A/9O+j2T2QMhtZUb7z8x52k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kGNu/pDs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kGNu/pDs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A03D6C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758224993;
	bh=IgDkCrbsrwn6DJRfNQQwbHs+569WI/CojCcNNqgWTeQ=;
	h=To:Subject:From:Date:From;
	b=kGNu/pDstqK6+hEjwHYOROVXq3mmVpBSiIcUdXtHZ8rpfH8aBVrkrmmlf0+x7gY2e
	 ki64VHaxphPLTaRx09uPAwKBsUsCVlNyRweHOBU7zZtyxxRNPCQl63+dlxESNcz1B0
	 XS2nXRzElCLsd2LhGzTfraJYyIIXGfGGCEuAUKJwI1qkq7PDqGouOFmVrHU8obj7Fz
	 X0lV7LedX0Kq600YWxjw/GNybNhqphEFQUJ07BOpdwoQBMOwCjI0mA2WCs+ulUJaka
	 hxMvJVus9/1Jm7KAXT7F6Eg16ulls7Sn7ifwCNPoYW3MuzHgvHErZgmYzOX6P/6BVv
	 fmlEEqCINA/Uw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 912F4CA1013
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175822499358.15545.2060941058844060712.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d765ac0fb99888cc511db2ccebc534e8d356d1c6cdbd809f90a8bb98226ddc51
Date: Thu, 18 Sep 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758224993
