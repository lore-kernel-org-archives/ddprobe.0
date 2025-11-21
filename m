Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05800274FC1
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 05:21:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763702514; cv=none; b=UnxYieifaWNrf4u1tvB53x92Y+Qib3ETIzBX+LZ5jJvXDqojZ7q00a9gGsHTyJoPz52N6KuH0lo6Jnd7Dgg0FptL7q7S62PXIaJVEBEPa/Bx753hJm3vjuBFeevkySud6R9KwR27R2j5vfJK1f6eZNw91Yc2hC0uk3Ks16HlJaw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763702514; c=relaxed/simple;
	bh=ruZhajE+vmF6LxuxfeJtE9jQPEC6+5FypMaUHOELwyc=;
	h=To:Subject:From:Message-Id:Date; b=TXjZhidGgrhFWT8SEGMdMylDiM3Xgc7V8Xh/6fwmPxNdpkGKQ6kRw8X34PecF3Iiq/Zrtwz9P10S9cJx2FoTlobMv40WposIrZbPI3VKuBIjchH/KdQUSgAyrj8YKbE2D3y+L3svIy8bcu5mCBXU2igjgB9y1uzbrOeX8VSSkZ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DRzw6bPi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DRzw6bPi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A005DC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 05:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763702513;
	bh=ruZhajE+vmF6LxuxfeJtE9jQPEC6+5FypMaUHOELwyc=;
	h=To:Subject:From:Date:From;
	b=DRzw6bPiM3voJz7ASSXgx1UIXKUaN6TMKUlcHxrNGEdZKgkvVAfIZaF6XZW6ymvlN
	 iG3teUacp2tmU8iB+qsmbaC5fhE2XhTHePjjSoWT3pMx1K/IZbZ7zUEJlLjGTSmP9v
	 x5cB7ksC+0guGN/HFyDg/l4yPrWz+ySVivtVusIxofMGkc4mgckTYjSFBvRScdAxWj
	 IwHKnUUe48LTs7ZYrDtqbwymSaNN/brP3C1Qo92Jt4cDAd1vsN9EL3FGvqDasHpu8H
	 IUNFYVprEheox9/Q9pjuLGU4WVo4g3TcNyMXJ4MjCG78fy5eWPu65Q1N7X80ywM2Pq
	 Rc/q2r76YM5PA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 909E1CFA46C
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 05:21:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176370251358.9048.9488615484970130555.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2387e9f964e2b8b25965b6b77722b08b2dfd0e602518e94210890b1ba16f8505
Date: Fri, 21 Nov 2025 05:21:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763702513
