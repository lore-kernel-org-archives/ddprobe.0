Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A5D939DBD9
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 22:15:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775513734; cv=none; b=mlMF1PPLhV5eveKkqB3S06c3J34+ACdsX6q0s5oYPuiSvvYfggzX13F2bthHPRuhHy69/BW4Ax7QkBxG15qviDY19rBdQqY6vVrHmpQ5ys4JC2c/X+n1zPQ6/t6GkAI3iUiEquarws/yON7oV19zrGeXDJZStByX97BXrNArk18=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775513734; c=relaxed/simple;
	bh=+owDIPfgPgIEiPkovijJm6MR2f6XOQdl3WHJeqYbZxo=;
	h=To:Subject:From:Message-Id:Date; b=UOS6UlWYJ3L4NS2T9FObIzEM21Sb1NNlTAg2MPtXgUEFwIVZz81Bwv4j68xHxqDXmfxVJRt9f8Nsffu/hFJ0i4SQe/c2fdBH9jwJ5MmtQkZ4iYSepjudJj2GuvNkgEvXYtiQrLbUtQhfNL9xcwt7N/pgNJvCZ/AcOMpvh+QtHAI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DX6F1biC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DX6F1biC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9CC3C2BCAF
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 22:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775513733;
	bh=+owDIPfgPgIEiPkovijJm6MR2f6XOQdl3WHJeqYbZxo=;
	h=To:Subject:From:Date:From;
	b=DX6F1biCBDcVSZENBz1RF8esROzPLQGRPOoVn2/7y1zEkPktZ2Va6kRk+dkdphrQa
	 ALS0p3FThrLakTBoVn5k1zz9HQOutM3rsu0gM4AtwPX/NHNAxKgKn0lTI235pmqnVf
	 alzg74EUudGflC5K7t6pSuW3O5yDOvETAdfSV3cANcS72uV/QpGlp72QVSoXY9foNB
	 KZdizZUt+SLv1JJM2vE6UCX4P9syUv2JgMmCVh0y7JKsgEeHC8plCsIpbfjAVGEDPx
	 mJ1HKRnCT/2DCEoxT1a1bSEnfxnZLEhmsaEGCugppMt1zgObKRvCiHKpHkB3sSeIDO
	 X0ZuEfBJC+07Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A972AFB516F
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 22:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177551373368.5478.14273159270675768718.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4516f94fc0d8f9b47dfd9a8fe441a6a1268df19c67985964c8f031ec6ae9862
Date: Mon, 06 Apr 2026 22:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775513733
