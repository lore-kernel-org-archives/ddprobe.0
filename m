Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 309C846AF12
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 16:32:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779467554; cv=none; b=VDlrkoZ/JYfFlUmo4DJ8CnTVBKcANOe6AfaQTSeLjwKuwVoFBXNcEurmOI/6QiM9h/u3T3sKW8jm9Tu3FquzbGowsYFh0uaNYjipiz9A80U5GBMy+KXh3IzkLAEzCK3nbJdzuf13atx77zOFppfx2g8oLFr02qza6im1c33zQco=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779467554; c=relaxed/simple;
	bh=mJN8WZtHL1i6eQyMeivIXH310udEba5WWDtaAfiWpXE=;
	h=To:Subject:From:Message-Id:Date; b=EhkThtcRe1HQw/bkIY1WwWkn3Y99FCrjbqU322or8+MRtHHestd/X7kpeZezlj4lu7D7iKO3abFTbCjLxMyjABAHQvRPB5doUTk7dHFDnVwTbSAIL4O+Dc3yw548yLrKtB2Sz2ds41yi1o2QoaOh9HcTLFnw7mY5A2e+xwWPQJc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vAhh78ex; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vAhh78ex"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2706C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 16:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779467553;
	bh=mJN8WZtHL1i6eQyMeivIXH310udEba5WWDtaAfiWpXE=;
	h=To:Subject:From:Date:From;
	b=vAhh78ex8FSvXEfXUFzF/bfbjj9Z/Byf7GqEHKl9zLLd31Ysrdi9HBeRfetJmTQS/
	 gnHFf8IydPfeUIKQ13rY7qN7kYhC36ZdIElL7HoiyDjJWRc69tlfqXBHH5x60ndQnG
	 GgJTgOu7NYDi7zrp5TYWl/GOF4nQnQgHFljUNtOApyRhRLMaWsjR1kr9xa18kMRU6l
	 RO77KZykcSUgPL9sdL7sM1sIXofVd6/4E8iwgOeM4cfHHBKPRnqAvY6+GQ9vKMwy8g
	 tUDWb7oD/wUNl1mgS/BtmKl+ywNUZYEl4TL5qq5aRJEu5vLpTH9LZj6RM95n3FNt2e
	 YrGs0zmtAihQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A850FCD5BB3
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 16:32:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177946755368.10295.17025928256957150533.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 292c8c1da074f837074e15db6b75be437d4861324e41886507eb672175b8c2f5
Date: Fri, 22 May 2026 16:32:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779467553
