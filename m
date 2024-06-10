Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 447641879
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 21:08:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718053703; cv=none; b=YbFs2Gp0X2jAZ9G3IhV1D4VdVY+EcbAdrBUHjqOFHoFzr7fGe5D5YW2270N5V/NatVc2GnDMZyCr4p+9Gcfvbu2xQrDsL2NCxzjy8T0ioazKASVLOdZ9tvtOp1uooW8slCgplHKrpHj+3vmZjQREr9hbnsr4SACJi4PTAZLwkec=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718053703; c=relaxed/simple;
	bh=kawXGWuHt/Qe1eexGcP5UYXK6aLeznGKlAMJE021bAI=;
	h=To:Subject:From:Message-Id:Date; b=h5oMSnbo3HnJ8EAebs4SrDjKCs5UCK3ECagT8Im9sNAR6ZyhoEv+wUO9RDY0LxIpvemyaJ+IgjeWdmGL7rN1598QKDhP9j1v2qE43BbZbDzqSP18iWqAqfUYZJYgLT2PW2+YLGJ7i8PIv35XswOh549Ryp5aQZJuQuhuk34j+nQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kOQrSVHC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kOQrSVHC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC275C2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 21:08:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718053702;
	bh=kawXGWuHt/Qe1eexGcP5UYXK6aLeznGKlAMJE021bAI=;
	h=To:Subject:From:Date:From;
	b=kOQrSVHCW0ob8EWpjfDs2D8MvbIu8ekia/4mYBqQeXJy7PlAaX6Cg+OO382L7LIUO
	 F4sjo38Gp6k1h+r2ZmpdRjJTRv+06kagt/GTVQFJF7zbUP6Y0KGTQYnVqwA3W0vHum
	 gp7xlrmnck2dOnM3692LsiB35gCLy4+6wIPjUKcdjvJzt5t+SJbhBDvktbjg2Z1f2n
	 v99MFnzpOCe/KFIlVg7DKgy6khwLOsKwm2SwoZzMhJCag+9miHC1gIG+fZoEa/P4RH
	 Hi0GNiffduwD/XQkMDjiquiMW4KGl1dxpcBmbFaQ/2JWYMXSkUQRIvXI9kT3Y7j31+
	 u4nAsDPa/Vo/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB56AC27C55
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 21:08:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171805370276.20353.17348946463466680912.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d23ae552adade06cd88023ab2d3b94964a8f88853c3f716cc45e5a60bccdf68d
Date: Mon, 10 Jun 2024 21:08:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718053702
