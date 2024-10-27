Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22D4A195
	for <ddprobe@lists.linux.dev>; Sun, 27 Oct 2024 00:15:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729988155; cv=none; b=shIkfrqMl+rLAicWrNus3/6mOYa81ZbPj2iQZ8V/t4iY1z5A3TP5x9b5zuPNSGFe5+jXx2XOMS3TH/43lMLJp5DHdKJ427ydyqLvwwDJu/e4BYE8rwmNymksUIfJ5d6ljruuxqkToon+2qHKIOBHzWllRgC6YBTds1VEUB2RmNw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729988155; c=relaxed/simple;
	bh=lmvbMdfTXCjPdUT34WURqPy7rERFWaTNrnsSbJUxY8g=;
	h=To:Subject:From:Message-Id:Date; b=MrS3fnsLfwl6CFwjgkd5gCGDK1y4nBH+absFj/9HYbbbd35q2GSDCBhMpNOVYvq8vEzrxLFH0vWh3yY14++l6ogx8VE2cYDNzF/A1PfmgC3dwBgH6KTp9FvG4awG+1tc7SLsWqTrdNXbYZoXqGmZZyem1W8KZFPyS/jl2ejHPT0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SEG3Zodu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SEG3Zodu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF486C4CEC6
	for <ddprobe@lists.linux.dev>; Sun, 27 Oct 2024 00:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729988154;
	bh=lmvbMdfTXCjPdUT34WURqPy7rERFWaTNrnsSbJUxY8g=;
	h=To:Subject:From:Date:From;
	b=SEG3ZoduuRSPN4kvdrk2IcqGhWi66iU7kEVfvxT0xdUq56bqA+UqMYVcUgEx1FTpz
	 eingIYfUgZPj62gX1lYfAfMJb+n4L2DKDp2VgYQy3n9GKU0cWi2Lqi53uK8DtMrlBo
	 GeKGyS2ItjCo4O+l1vZdg3HmVEt9KQFa82ZiPOgIZ4CDxAkvV8ZXTd+8LXZlOagDrv
	 jdhwqxN5kJtFLoEMnwuvMrEZYQ6qFxcsc2nEA5rU01W7zLd/sJdUyZqaMIarJxo27+
	 IsNrTjYX2Q1WdSslRnLGK09pwF3VF2Rz9J69wqwAI3kIRBs/E9rO0Yw2pksiw3kuCB
	 AzXGRZ/E2F0xg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CBB4D10C07
	for <ddprobe@lists.linux.dev>; Sun, 27 Oct 2024 00:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172998815363.29617.3531390696621234638.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 978a71e4068e76c6820a8dffe53b94cafe75630a316d98a089d0232ccacd6d85
Date: Sun, 27 Oct 2024 00:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729988153
