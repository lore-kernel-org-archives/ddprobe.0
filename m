Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32B8612C54B
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 19:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728847554; cv=none; b=VQcK0RSzlt+z9rQumckdp7MnPNSwI90O9oRuSSoqgme2RPSOCgAoZ4ygOZt5PBRqtT80Vsecn+I//Rqlt5VVRccl2s6PT5T5+hk6imfxmCMaJbLQ55ldExx8dd+k21P66vZ0gB9edBkoW+MIX8tl3ERvO3ChMYxLT5+OIa7ZP8E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728847554; c=relaxed/simple;
	bh=e/YO7xcn2THw+5n2Pu58Hq9xGS70opZN79w3LpuxDZY=;
	h=To:Subject:From:Message-Id:Date; b=QQsyP6GtbblkqEG5JvEz1y31eFcqWksah4HyxFMvMPBugm8pwnqQ4wCAqi7AWR7dWqd+dcOcd45d/u1y8kQ+jRw7xks+CyQgB/MCC4dS5/SBW2Uv3QGtHGWNHzLZzvyFUcwb5779OT0R/+RaYW3xLCj4Sc7moD01VztzulsRmwY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NEGkJzeF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NEGkJzeF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA943C4CEC5
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 19:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728847553;
	bh=e/YO7xcn2THw+5n2Pu58Hq9xGS70opZN79w3LpuxDZY=;
	h=To:Subject:From:Date:From;
	b=NEGkJzeFLjU3XlZrSrzXLHtx7gtMrrybKymyMD9DO1qf2w1cC92wM21aDeXYu42Dy
	 THUnfXV6XYnuKaE4vrPxn9yLyhL8nNqTnMpcBCdyEmAIWpX/lFrt/Mflv+sUyl/Epw
	 GqgiBJH+VnYQP4VIPQ/M0gWxM4QM9s366r7/CmYa6GkHnwXG5WDFEoEZ2iuszNa4No
	 EtPX4oRR07gLL1D/+t3mL/xUNwoMnvrCW6mRDoxfYtiA0XuEOH5VJcXjbwZxiVEmJB
	 4Hvru6uVUkwFefTXH0pxfguo78O3STMFBov5i16Cel0tr3pqfxnoSB1Tg4kJeAshts
	 PyLbfVv1QJmEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90275CF2576
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 19:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172884755358.12765.16316938326798991897.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2172d795b0363560698cae32e4c6402b3d8893ff0fad0f8bfa1a854a736a6fe5
Date: Sun, 13 Oct 2024 19:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728847553
