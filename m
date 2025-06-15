Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3686D522F
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749964194; cv=none; b=rxuyHpDewsX7zIdM/cp11dHH98aG3uHfl5n/4pza00sf5j75sb1TLoQiCD1YXezqdRola0COlpcU/0+yOWph5db6qWICSPLXdPDJl2vnwM3knbcGqYExIXyWrfLZEdaLio0UQsVGC4NIObTWz2Tg2jFrRiXe80TNTkz/iG1OE40=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749964194; c=relaxed/simple;
	bh=Y0tc+JphVoOoiT8z8oHAdNKYQopTw12pIQmPgHdrVKY=;
	h=To:Subject:From:Message-Id:Date; b=sanFukJZ1DNRCfG/AM8Y+aX8w1FQai+jFob4APoMI89XMrcHJioBNEIV3r4t4B0KdRfhZWGN5Q1x4TKxUeDw5nRgc6s6n7dPAxSzhF+cfJUoVLSMT6W0pXhKp3WHVF7Xamg+MYslwP6rU6jTyDcQhFvfijmHaiFQL0OllJL4kcg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i9Enb4Gt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i9Enb4Gt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B702FC4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749964193;
	bh=Y0tc+JphVoOoiT8z8oHAdNKYQopTw12pIQmPgHdrVKY=;
	h=To:Subject:From:Date:From;
	b=i9Enb4Gt/9UcDAEWmsAUWFyWFrTp98RP1YSh3wjah3VE/ybQPzUBZvnCiswNwZMGg
	 wuyuMGlbRt+PLj2/vjfIpsWPHG8YRQ6pGXyVoZwHIcaOk131HaOjRsjzr46ApHutqa
	 eaXU1TFELDgzvibdeNgCHfMopKMnLXm+iQe0hy/XcFUm2pmr6TGvkSJkww0yJEns6n
	 g9zRkGN/kKCYTmXHQFEet2ZKz1xfHExE+oN3XbqOFe+NfNCEgFAyrJo9wuJkVij07n
	 e9bixPncx+RF21C0EBheH90ggXuFMs1v9YDqvpVACwSvPmT85YM79+kRb9OnFaSSVA
	 KUCUvKHNKASCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A42C0C61CE8
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174996419363.8674.5071226060744287518.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c8005b0b009963dc77ef6b8e48b93e991860a924a5e0f573c5af4ebaa636bc0
Date: Sun, 15 Jun 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749964193
