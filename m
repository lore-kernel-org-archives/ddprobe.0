Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29C894B5AE
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753201794; cv=none; b=pQA69IRWGTB5K15pHGsWl82LqyZKZ7Tz4vy0dwfG2JmQx6i+I8e9IDnvyT5xQFAtL+J4wNz0WDwNnPsy7o9LlOPFz0+xVZarrRp2DdM1KQ+YuMnlumh1VlRRlNKo4RSmFddfwNv/XdqQ+5mAdzqnsa1XAbsJLVRmthJjWko2BPI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753201794; c=relaxed/simple;
	bh=Y6DpoWM9ZOsNHcDkXcj8yanJ5llCFq5lZukpeZFZn9k=;
	h=To:Subject:From:Message-Id:Date; b=JUI1++lcvXsOslYyKQWiRIOLv1u1G5YsTc05ciYk7lDRquOCINqm7bp3Z/Marzfx72SjDmjjgT5TSroWdVCK1BQtSTxUgtthICGwWdwBuhk3X+9H+psY5RBjB+k2gr4+7dKgYx5aaaC46rfFzi1xZNOHY/BylYfuA0aVkqyuX4Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZijYJgbG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZijYJgbG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3862C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753201793;
	bh=Y6DpoWM9ZOsNHcDkXcj8yanJ5llCFq5lZukpeZFZn9k=;
	h=To:Subject:From:Date:From;
	b=ZijYJgbGaCogC1sFqpnhFLmpK9GP+txSkb5JzZgycYsSwn1fbNzK4UNR4WYxjf4RI
	 hw17WiaZFqYczcFVSez73kJD+LyTupzK+gZB1v/HJTnbnTGAXekNDY6oFAI7ueM9ZG
	 469xqHVO8SuDuMV4ufR9kvCdA7Gtogg2LQQqMdi+czpmCLjqq7eDb5+M54/C5zw264
	 C4DtY72RO801bxsgVdEShutupm7k847ybEB2OTVtJ3pwgDTi3Ui9YdFDqhTSZ3WfE3
	 OwoG7PWl/tpgrI4OhRGalj8WaVcMVcWiBJCETTxvF9xcOXd1viZ7qZgViPDFe44YIl
	 wdtma1vbkHiuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92128C83F1A
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175320179359.3811.5389747308557226900.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e1f6be53741cde320f9be610b3fa288ad4caf5126ca2464f1f389c05c1d5158
Date: Tue, 22 Jul 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753201793
