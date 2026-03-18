Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 022EB3D75A2
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 13:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773839694; cv=none; b=ZOrjh4ROozL0OJL7JUZvD6UBhCfGMnaEZnSGJkP26gbLl+O9lTGZlYdHO4ILYa+mMsUrODEiN+FCcUanPv0IDiFgmrv1c10SXMGIfPq/Dd/dOvIY9CJVmmw5yeOSzDvfBhKKKDItLpptZfs0L2ETJIfQKiWiqgd9+ZwBykzb5+g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773839694; c=relaxed/simple;
	bh=vPay9EKfYBTExf8P4N0NfklhBLpiEbGJTjw22ih2SkY=;
	h=To:Subject:From:Message-Id:Date; b=e6tP5EkBAVxfLz05POgPqljbG8c05ETudqYS5b2yqGaW+IpvZqWaRQbNsnhCi7OxfDOM/I0z+qG3d6yNgl9bYsr53eW45NqoeZbDFqnGvvKyxZJl4Q5ChS0dcircNOb2od3Q0v2rmVjpiRSG6Uhsicz986QPW9FTqRyutTsc5PQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=odlyYy4o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="odlyYy4o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A05E3C19421
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 13:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773839693;
	bh=vPay9EKfYBTExf8P4N0NfklhBLpiEbGJTjw22ih2SkY=;
	h=To:Subject:From:Date:From;
	b=odlyYy4oP2AUnpIoCQcYzzBHuplwjejCX0xed0ZMIwe8QalMBlyaaNVeaVB0Hecos
	 iRNh/wL9JHl2TFIN/wbeqx2sAaWIvRKm63PWailDCtCRmSQd7V1/x/C9wKAwxMy8Zr
	 6QbvQo3u96piJAP2ZkCCsh6tB6h6/vWh+g3yDYxqiC/PZ2qCA8T+Pwd/dOqNu85xsH
	 zWc7iq/9Zh4e1CTfiUo8RmLONBW5cCZnpgeaUqcUFWeEuZbCoA9X8Vog/G/NUkRh13
	 eqx6XPp5NEnQB0lfcLdCtNg2tGeZTn6cM6sOe+fz4YrVbv9JOs4KhceGu1M0J/4Ktt
	 /iLRlGiyxgS2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB2D103E176
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 13:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177383969358.21675.4297612706933416308.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71b93c07b4564dc1b651e977f202da77a05ffc6d6caba4691087df13c568aa63
Date: Wed, 18 Mar 2026 13:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773839693
