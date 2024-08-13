Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1780C1E48A
	for <ddprobe@lists.linux.dev>; Tue, 13 Aug 2024 13:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723554354; cv=none; b=ftJjgy5N3O/LwGiHaFi40vJW+37nnnJZn1N8RrhmV/qbIAVXTQDILxeLcDBUw76k96mahXIBurJpsQigVxCuorfj5qF0o6ErKv+9k2wZmMVLKe1JWl7u7dPYyabnVGgepo/oMhrqJ9nf9+LvymrCvdTDVVkVbN7QGOcwfp1m+T0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723554354; c=relaxed/simple;
	bh=0lyctX670DXWmbSNQ7hmFg6dDMIF1+0nBrUQhhnT38g=;
	h=To:Subject:From:Message-Id:Date; b=FlNJksUCcCMLOShOACcmaZKP8J7DG1cIGXbJlTIOcN1vgaZR87L0vsE1cgtbe2ECBGM7fJ1k9yuoywjDy7VqPNKrSNoLAQhKeEXQggd6c7dxnmhYGQTglqbtbZAY1q0EXBCtIAI1c1H15HjLDOX9v9iBRBeVsxfBM9r8jb2rTIg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tfW2MADi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tfW2MADi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4D2DC4AF0B
	for <ddprobe@lists.linux.dev>; Tue, 13 Aug 2024 13:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723554353;
	bh=0lyctX670DXWmbSNQ7hmFg6dDMIF1+0nBrUQhhnT38g=;
	h=To:Subject:From:Date:From;
	b=tfW2MADim9qlwsLUHpgUI2vYba0Z2IFlT6TMJJJafTIK7o9zBsXkdB/zGZl8wjr1B
	 5Se3lncHZcxL3f6HeJNU1kNLFg9DKcFoTbv/Xz/KF4zfuMwQYgJyqbvroamqSj24Uo
	 6y3kuugpz1XnB9VdB6y1H90cqFavIKJKESPr6ir3Pg5vUe+kllBDDaPNwiUnn65SOC
	 NnkQn7uhWfgL2EfU/WKFFM5cRb+yExuC6ZbfPlZbzzmRcMaM1HN4H0HZQYnYcY6tal
	 4yzY7/vpBbUEu1F+hObSEKteeLDN9dFVpsANPmtstIR6BY2pfoqCku9CwgMXIXtgut
	 nVwjMxP1A3Biw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9126BC52D7B
	for <ddprobe@lists.linux.dev>; Tue, 13 Aug 2024 13:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172355435358.13885.1525900994289468693.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22d7dfb7fee5b51ec1889da9d27cb7d389a49248960bc2a57f147201c9f17a9f
Date: Tue, 13 Aug 2024 13:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723554353
