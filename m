Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5F2D38C2AD
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 11:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774266293; cv=none; b=OV9hW8bmEnHy3GjD0c/Du7kNxNaWPr7IDdF77fAOnJ9NECmpGdh3UTiomKLkRFgnC8xELULhGuXAIoOCOKr0TrR/7RsDsYGQhuFqk4Gpp3ZkIBDj2P8K8wNUnGT6/J23cHJgs68pfKLbo+bYFp3r2HBL1OCTbuUXBI/33jNKlm0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774266293; c=relaxed/simple;
	bh=tL0EuhO6vZEbDDBH7cE8rYFL+SQG3QVyhQYiwroOc9Y=;
	h=To:Subject:From:Message-Id:Date; b=O1+sspQPXpwtIya3A6EOxoqIja8cXtg3OhXyR6ZUvFsCTmPewmqri9cG1nbTtDH0FkOcCKJS+XhqWC8oMv/chhmfGPgmj9sqKE4sn4N1zicPqqHzFZnA8MtkSFdYfsSfoXe4AyDLVpgihOtsZSKzxYOqmf9MvyLtwLlKcroeWnE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ulG0G3cV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ulG0G3cV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A29FEC4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 11:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774266293;
	bh=tL0EuhO6vZEbDDBH7cE8rYFL+SQG3QVyhQYiwroOc9Y=;
	h=To:Subject:From:Date:From;
	b=ulG0G3cVnqi5Z7q1kp0QnESFE3u4ZT7nPpe/kbn78yNRPO4zMs6WXIa8hE706yhsM
	 hvGkDz2pxW3EhVvZX4pDZWhAnUM+WeCC1dHX1LpbYrxXev8oJ5FPGOi3g0rOfdjZx5
	 lSybON1878AE8YHEmskvQKvD7R8DtWAIrV9pGftcjWyRledeO+u6QZs9VO4skIy9dT
	 2b6qoJXAKjORy12IIncokkUsYCgOOV1Nmm8lZs9+rOCrzl/DjPHUSR5owHWX/1AJM5
	 soJG+mAsPNAeMgIjqOe+qSOd3bEg2qQxhQ+E/t3P4yOQTwTjAniqmOwGbYZl2OfnW3
	 YI2nDj/4NAQ7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94460EC01D4
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 11:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177426629359.6201.1752127428372055125.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec0a4580fe26066cb3d2e693e6d9265210bf38e07ea62b616bf023ae49523ab0
Date: Mon, 23 Mar 2026 11:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774266293
