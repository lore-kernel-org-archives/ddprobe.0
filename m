Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28436243378
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753464594; cv=none; b=jKZ+i88ynlGcQf4g+8EyMAHtiwBvJbiA17CyhGLpX9m3RupIkRFWLbA1S22pnyOgggUMsIsjR7Fccf5Hshdjvd42Lv46nJRBxWMRk5cD8zLnOFkc0P1pG9owk8HX3T08y9BDzJcQ5rgI18o9PkhewiTNmYBWpD+76IdoXF+CyMI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753464594; c=relaxed/simple;
	bh=onlp5wAnztkCqXm8do5f45UikFiexTwSrs+HPde9QY0=;
	h=To:Subject:From:Message-Id:Date; b=gIwkYG9pexej83vrvRu5mm89RH4GBn1tdZhpX5RP6NMZkuuliDH1gKQRXkd6OvK3G14/dpAbda1Z6xufai4uAFn6kzklA1E15L3d7/LKeHnwPEO9twL/R9NHf62SNVkwYa/s6ryCHtdY6Ugth/sbXm4fTq2DdLCzRs6NvR7KqDA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BHu4h6ee; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BHu4h6ee"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D45AC4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753464593;
	bh=onlp5wAnztkCqXm8do5f45UikFiexTwSrs+HPde9QY0=;
	h=To:Subject:From:Date:From;
	b=BHu4h6eed0VDHRoZIfo5ruPAGA32LwvHx9npebDZMrHFrXL7ZBAkKX29/i3IxgkoK
	 paAANJnmQHLF+2lTHik/5OY/drNLy7v4Gcq/pj0d0/fiiX20HNljxZ+E/3QRWKpNuY
	 2q6jBddQ85PmsVkOLZtgYcBDyLNlITGoTDjZX08Ydt2F4T14PK7zujLzOywpm/Jzub
	 F4cBZylClGunMaITLR6Ai9uy+lMNbhusKIyneHVqHayUAWIilyGJrsr7TYrxu+gKrR
	 iihLo9SFw9srgqKLnaqk/1fhUqFrKruOMstxA0RhudP6f/jdDpPl6bIzhJmBJKAcJi
	 0ecCm48yvtyxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF78C87FCE
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175346459357.15506.16367155825127545021.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b7886e5e53404042a060b306d14cb7ccbfd08bbad61468b673f06a67666f23e
Date: Fri, 25 Jul 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753464593
