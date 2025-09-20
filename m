Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D45732765CF
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758329993; cv=none; b=ffDfCN2OArh39UZ/Qm3AND0iDvfpv/zbEHBoH2b0rzkFENZwYoMCM0K8qefEjNkzm2XlfkwImxwtGeaknAS1FfHViwyJ6lzT1o9yary3BZoJVcRLNPEP4b1X5LzpmtM7WtPsHmUyTQtc0wNG4EYqBJ3qBssHDch87HUnbCAwfcw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758329993; c=relaxed/simple;
	bh=h30Nr1uNp9c3TlTiY9/Ii9im+G6Dv5Y9Ty/ev2MRwy4=;
	h=To:Subject:From:Message-Id:Date; b=k8mCGUNUCrMv7/ThajG3xFAIXdOcz4EehRpMVOhRxSy3eowt/y2zS5bBhUTaJgOyqyveMrKexbD2U5NYWagbOt3+MYQwYssjnzT6es78jp2UIaAuxiXUpRnkXSl8GTkQg0OYxFjOFLnHdQ9t7qFpiciB8W/5ZtxKUjx1dJm+1js=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gNmJvcSb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gNmJvcSb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B52B7C4CEFC
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758329993;
	bh=h30Nr1uNp9c3TlTiY9/Ii9im+G6Dv5Y9Ty/ev2MRwy4=;
	h=To:Subject:From:Date:From;
	b=gNmJvcSbtIjwff4BU2vpuNKnV5tyN45F9qdTj/LoNaCvnNxoP8jFdReAaUn+x1vBV
	 ptwfAfKvBvV3GSFTo99Y+d+mcS8GvIr3MYjQQ/k0R0Q19eQMfMJlVuz8u4tulfPF09
	 IZwXyoCgGkB1nhKoB9/ba9xkBz8SrJMNDPh2C96neICQPO66VZbBvLsqpXJgw22gzU
	 lCng5wRI6Du0VGmFydyB8L1xSCJuFujsg73k2TLmx0cGtgr5R0h5WWvfs9GLbxfLgK
	 SH7Zztdx2UEbAHl6P+eF0ktW614TU9Ydq8SuudV4Bj/vdgt/bKZN4iBYSzD89pVxMg
	 Cofu+hlZYeAhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1FB2CAC59A
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175832999363.8042.12679145262135484240.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71e5173656fdf67c7da99bedcafcfa091563e69c6971c97baec23965bd28cfe0
Date: Sat, 20 Sep 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758329993
