Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19623337680
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 21:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767907434; cv=none; b=HVnCmBWtA7MrFe5l8B/SYC3H84u967bc0SBAauGy4jwSUw2QTWCzj3unxj3T7QdEEfyRYxfw6Pz7nrzQUiJj5pvb1lLkCbunhRvt7SVAk0P2eIlYdiI7FYQ6FkWxl7XBcD1Zmqr4CLA9ElsMdCXTtm5BFk/bk42q+nmPQwLERmU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767907434; c=relaxed/simple;
	bh=QfKU4BXHA5UxgyRzt8Kr0kjBlfZQvnT/+TLZJHaNh2s=;
	h=To:Subject:From:Message-Id:Date; b=G3GgkO7txMuYoMF6ZAOfmYcK0swS48H69J4hlaDjBLRAHSKEB0D7raVc3oZVvp5+iubrr5YQsIU71ask3cFP34jDDApywueqTyWEbjIIdoacVFmldGiEnUfbeQdaItpLspBgRYM/rW5BDMSJPy+/XJU5XGbAi8ho953xzk8VTLc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NOtdbLfz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NOtdbLfz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3923C19421
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 21:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767907433;
	bh=QfKU4BXHA5UxgyRzt8Kr0kjBlfZQvnT/+TLZJHaNh2s=;
	h=To:Subject:From:Date:From;
	b=NOtdbLfzd3aS9XO52JGNSSsTbHnTWmCGzQp2aWudsmL4jqdRXDT/Iv8A3Rx3PoUnt
	 eDw9JCXhOTWIIN9sFnt27E9DcENN0NVsMzaKTX2tbKtSJy42J5/D/s3Ajb000i6STd
	 uckzpSTVhdWwx1fYs0/cnr/P/73zfNnTpruLjMC5j+bUxGk0clDE/ihPbslFiwgpXS
	 8VxkpH5bj0lDDxQqHG10F07ehsft08kMY/OqMaFsxzuplJF8W8luPrOQJWADPlLys4
	 bejetL6a5PBF6mG2zOZdlxgl7NHbKTwS+yawbMP3PvZFh8J21BAtut4upqpAuO0LTT
	 RIe8+Q35IiUVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 918DDD1D48A
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 21:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176790743357.2480.4003458713162499620.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f4cca8d4264f8e4f78f76fd56da05758a5a14d475426a045dff8fc0d57c0afd
Date: Thu, 08 Jan 2026 21:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767907433
