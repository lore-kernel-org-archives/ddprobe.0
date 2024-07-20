Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C1F463D
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 10:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721472354; cv=none; b=uVGpSx2Wv8dkyOkJueBMu7kNMwCSQlVcAtFiWt09vEh3QvtoF4JWpBasL8mvMPbbRGH0wlfWtXzzyyIaP3Vi8vfcvFJjhOrkV98j0i/IyywhKnIEJF9vJshlpjlZuAw/5Urxr+xUQu3PWqMyrr2N8EkUe2vBc4COt+oces77TCk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721472354; c=relaxed/simple;
	bh=unAw0a739D5U1OIouFM9t+H5ISI1xitJSX3+jJNACFA=;
	h=To:Subject:From:Message-Id:Date; b=DRPi4cvZtHp2wbP0yrSPF8OZzUEEstgCXAz5859v2Ap4zk3HIN2p/blr+UB07IzjlOgawm1L1qDy7DSShtDrgq2nmf+x0ObojW30O5Z9IknD6BPA80/e2uT3bQlrXukx8FNNqTNmypCscbhhklokfH7oasJJayJLCzRBmeveQDo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nfkyPzvg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nfkyPzvg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A935AC2BD10
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 10:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721472353;
	bh=unAw0a739D5U1OIouFM9t+H5ISI1xitJSX3+jJNACFA=;
	h=To:Subject:From:Date:From;
	b=nfkyPzvgeP1mhwbIu7FgNZWRiVGpX/YnTaNH/QdKmLhHX/qVO3FEMumcJJXEqjx5G
	 Gbd6wuB9/cBoE1c+YeQz4wOSxbQTmU8F6VRMwcJBAj0YdPt0Uw/txOno0QCOpCkDFb
	 bD129YsEaeEOeqXshiiLxuJJLkfjkwb4ktLMucnJINTL5OClbw8GUnl4G7gbiadHpw
	 ZdoSVoSLexyujY8zfLwFj6A+9p/DvQsQ59N9Hf1MU9nKGJsdoVsnWuI3dq8KKS8m6V
	 1dsfneVUzpQXq7AKUK8SxWafq+taS2vV7c1FzvB9VCeJdaEbVRgr0ORlZGpUHRXO5C
	 JyGHht33i5kcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9249DC3DA49
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 10:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172147235359.20710.10576122194112697856.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 225d975bcecdaeb021aa8df114f2b47b681abb07fc85f74a2d2576eed2b29109
Date: Sat, 20 Jul 2024 10:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721472353
