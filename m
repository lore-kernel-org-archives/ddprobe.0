Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4B162905
	for <ddprobe@lists.linux.dev>; Mon, 30 Dec 2024 14:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735569954; cv=none; b=TYAuXHuqplyZfO+Kij936tZynAZdopUXmkTwctP/qZcIujVnekwH0J0/TG/h75+ibkcBXqpjHTfpqdorxN/8MHDgFCQd0d2FQ0AnkLTDsvRKERfraICi9V2jphKN9XH5fff58ysNOphGJyOAffLlCA0VPM15TosPas4Yzhig4uA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735569954; c=relaxed/simple;
	bh=/Pf+ujVgnrTxnLLk1M49HeYlVoOd6RL4m/y1uHdL3TM=;
	h=To:Subject:From:Message-Id:Date; b=hyP69MNC4G4iEO05mQiB2MH+fcBjzsYptgfKGYG46HUHUmj4zDjf8a+ZW6B8YqslvAlCcG7bPhVKwbr4frffCqMVu9tXSBMfyNPiZtSWRnZI33uixa9PR23bClcdh6yRknxAYjBUh4UXQ75dh3Q5TagU3SBIEG04f0+U1n7h63g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TqpXqyIY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TqpXqyIY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6C1EC4CED0
	for <ddprobe@lists.linux.dev>; Mon, 30 Dec 2024 14:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735569953;
	bh=/Pf+ujVgnrTxnLLk1M49HeYlVoOd6RL4m/y1uHdL3TM=;
	h=To:Subject:From:Date:From;
	b=TqpXqyIY01NF/ZN/+XDbDU1nJRKawugHuGmWPCm58tqkWLmwhJ6cxO4TggE2LaJm0
	 gjdZqG/OgPXFEyp8fhr2PquETL+ljtonuRYIlrMksITWYi+pgHMEcuJTXS8qeJqX0E
	 8Bh3KXvVUQkEZTyeW1kgDKhmGjuq4Pp0msyILwnZFUscYY0tys1+QQfyvwq3pSBbP4
	 8xS5yWsEM/fNBWqY+/Oxry/8wov26eF+Miqv3hYBHIOZzOdtuKFJyYyeY3lKoh7XDw
	 T417140B9rrWVggzgi9R2/H6H3V4XH24AxozpboFTx3qXab3F1nbh99FhPemHF1B8Y
	 a0dz1T8ildZIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 970B5E77188
	for <ddprobe@lists.linux.dev>; Mon, 30 Dec 2024 14:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173556995360.6760.1329417171176670787.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ebc73769ab261b028c2f239f567449f005d0338dbf24538bb3079c0472b878c6
Date: Mon, 30 Dec 2024 14:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735569953
