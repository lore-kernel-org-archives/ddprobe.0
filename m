Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4648B30B51E
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 09:16:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781687794; cv=none; b=H2kAQUL5qoOLjiXkC+JVlPWPL1UFG3J5zf4UIajyw+2u81qU8zTgQoMzSwBG4GY5zuysveeUUXUAPp3QRqcBg8GFEv1fVqrS/I0mtXGG5NiilvaFfwBBfkdryQd1tS6dF9VYdp/0sCk4w3ukUJPfWA0/UOlaR6zIw2KTP+7s5GM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781687794; c=relaxed/simple;
	bh=mbZfH4j7fDbKKN9w857kDDpTeV7GOeCTlcGUsezn4AA=;
	h=To:Subject:From:Message-Id:Date; b=li3oA85/VZkcYgN8ZDZaUe3+tg5ExBYnE4DB932fZ0WI08RXGpPz8LGGoamcdQyWpgG0sjNHzfreRJ0juezQrnjJvpNUZs3PYJz88Uu0soaUhNzbboO6daABElvSAa6sR7O1TPfLeQUIBjedYC2w2fparQ6KQQA44Rm0LAxZRj4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J7Bx9YUF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J7Bx9YUF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7C34C2BCB0
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 09:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781687793;
	bh=mbZfH4j7fDbKKN9w857kDDpTeV7GOeCTlcGUsezn4AA=;
	h=To:Subject:From:Date:From;
	b=J7Bx9YUFBiRKzLdf8GgDOqC/wqk61OAS6JbOuACoAwfXgXKYQxha+Jc4/R7257Pgs
	 UO4WkvsI6LPNW58MFqoSNM66uEUOHOhnrAGuG9jI+QY2WxBSeyGzqfxqDkB+emmS3s
	 zCszY37Ffw5pgtRRsC/FoHEbQn19mGWE17FsCpgMi4ual8yuF3Nc2dKrBdgCdpvgZM
	 NFLYt4eLgn+ZNmCtXGNrwOAmTasYuTqK3s8S8zPUNsgPL2FdXBSGsfe0uw762Vb4Xd
	 r7PHDImiEuBtXCBCayBn/Wjkzw6u3k/9dEI9pM5ANOA63dAG8KVxTN/G0/tMhBbsp8
	 slKesYCCI+LAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9810CD98EE
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 09:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178168779368.3883.9420412663646185651.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8da178f260df6df5d6cde55c3bc88ed905d0dc1b26a4588e2f6b74414092dd81
Date: Wed, 17 Jun 2026 09:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781687793
