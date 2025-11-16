Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1430E3C1F
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 01:00:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763254854; cv=none; b=U7gGPdXMwnAaIORhk6+JoflRgBDWwEFPUnj45lvdzKiKz2bS4uPbYd3L5EN6q8soxqfFWrAiSDtwPqOaNPhQtqICaG3Kbhx7kfmIIAhz4nI+GtqrHB7qpnH3X+iscv/QM18g2asZnuyttXUfAif3Fl7ZTqWKzYFebQtYS17cruw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763254854; c=relaxed/simple;
	bh=ygG2wMRyf8xb9oX7ozK/6/Elf19vbZStug/+sbdzzrc=;
	h=To:Subject:From:Message-Id:Date; b=Rwqs0FmGr1CS628zv0yrMCYWxtJ+oqNEKZta/7w+FRS/PeIx8k6j3mUKEiZAdmJJXBSi1jWKooTIxHmR9XWSUI1EFazZd+F7BlV4u+cjqfwkUNLUql9e72w/EtihddU9rWqOXwL6ppdjJLMwyRxopCIFcS1VM1lH645fWMQrcUU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dbcQ6Veo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dbcQ6Veo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A59A2C16AAE
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 01:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763254853;
	bh=ygG2wMRyf8xb9oX7ozK/6/Elf19vbZStug/+sbdzzrc=;
	h=To:Subject:From:Date:From;
	b=dbcQ6VeooHIOvv3GLHYG3HetFXjRB+hp7G9Pv4YU2I3eVVXna+W6Bi4lI6dRbbn9w
	 asO635+ET4xxiy06cGBetfboEGup6nf5r+3fufqhPz+3APHBSZqJYRWNkFVT1nebDE
	 dbAGoEl/h+GJsp4XeM1CwSUF9mAljhkSfDG3Q43zoea5WCjg9ayTmokTgRMI1KODS4
	 RCae9wfolBHkv21bPvx4Vt1grXlNEfxYmIEnlBL3PC2mHPv2Fbf0Y9U49U4yo9rGn3
	 oxS+CK5TrPmGmdKdrNbE7Cwb2FpaptZ2SkD0Vhlsji9j8Hnseqoe1bYEHli8NFEYNT
	 6By9MVWlvGnJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95AA9CEBF87
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 01:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176325485357.32184.3460517765338748299.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3bb6949906262b834cfadea37420b8f1e4ec70b26e4c6ba45b4c66430ec553d
Date: Sun, 16 Nov 2025 01:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763254853
