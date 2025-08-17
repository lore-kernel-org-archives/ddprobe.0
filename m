Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26C0C191F89
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755413994; cv=none; b=O+oY/TerowU3J+MEu0Va7krLY8iXd+82dahHzR1buRszy7F9YYiIo36QzmLnpAnkMew/V7LA2wPY0QJDHmsZsQtuJslR0B+eLZZheKR5PngNR2bvahbBLRJpZ4RUOg1u2bAn7IMs6asO6NvbeICOv77RPESEZAYlTbKlEYzTs08=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755413994; c=relaxed/simple;
	bh=LrG9DH1EvH3yqBUMX6c0zMfk5hEib7H64khEXQVU/t8=;
	h=To:Subject:From:Message-Id:Date; b=JN/N0vscwzwVar3fUlZ1eviWyuY6/AY5zhnr6MUEujrOa7thixQ0sC3zczjS2OBhQIfBHgQNUlONNykpaFu6frZj+1sJc2q4F65nh2zIciw/uqXdDSFBjoBSF4xKZvn3uwaEEL32XNl52tQzQTxcW90OFIzUK/+n9Hj6vI68T/s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IfCaQ60G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IfCaQ60G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A25AFC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755413993;
	bh=LrG9DH1EvH3yqBUMX6c0zMfk5hEib7H64khEXQVU/t8=;
	h=To:Subject:From:Date:From;
	b=IfCaQ60GLBF9oiAnDXVRIqgOqj72++esC5mNpOKML2xooikXOcMnuZzyB6+Q6WJy/
	 FiYUbWoOYoRr36J4StBpn0lqw6wvoaOL35SAQsqQH4GRsDa8tLyhELMUF+VMVaUEsD
	 fpZbvwwopFrDIztdAoAzBk+6RKW9WWUPx4B/rYN4HkBsyIJq6dI7a4+CDpd03Uq/Uc
	 NKW9gM2Ph+xZqYErC0xSasb8uk5cX01hNCMpJuqKQ/wRw+IsVZMWaZCC2slk6gQ/WP
	 86eSm/26brtMOoWaZTRdsos3R6nma2CpNZUAmvcWXTXaIunsxRCjc4fYNYv8iX+t0w
	 STHpq5Z0QUmCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94ABACA0EDC
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175541399357.32098.17203886574040181330.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54a2b4f2d21fa38f0e9a90e709f7e3bf1ee5f20c3e4f6b80dcd9abac51dccd62
Date: Sun, 17 Aug 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755413993
