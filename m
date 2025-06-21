Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D66C5258
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750481394; cv=none; b=TI9AXRez8N2farSMCsCs2FAsIHfEHhsuB2CJACt5jC7GgUWhoVNYXPNKrwH2I35jSu/VRiJ47Xp5d13sFpnglyBHN6BXn/CsYdH4m+CQVdNAeRUp7UfH3FnBZTbI7B52PkowGmgQzvQLJneYYLy5XIn7bVEGOXmGv7xkbHz+6yU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750481394; c=relaxed/simple;
	bh=AMQDC1ve3QnvohbpqXAOajKBRcyqXPMT8mRrRWx/AiQ=;
	h=To:Subject:From:Message-Id:Date; b=g+ORJicFnNooFjza77mTSG7cpdxRn8+maIT3KnCT26g8CNvyNUJImX+STedeqmoqr6WGPKo5+EUwZZJI9WOTPiKncxqPFCbs7ANrQy4ZbLgd3a11WleKKxPjz8Re5Slm4dcSrS1IGF8QqPSAYTMQKBif/TT5D/fP2K7AEGH3O0A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UcKtqkGG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UcKtqkGG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3A66C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750481393;
	bh=AMQDC1ve3QnvohbpqXAOajKBRcyqXPMT8mRrRWx/AiQ=;
	h=To:Subject:From:Date:From;
	b=UcKtqkGGZnf76h7v62pkRIZOQ4fUCY8Gr0Zno6ZSxPtQYA3qZTXy1+CmwE1okyexi
	 bSp5IvtE7o/25b7Qz/o5ejUMGXvtbQ2rVU96ptK8Gk74A+jpTUmJzeeafziIuMi9ao
	 Gq7MctzhRRyMMiCypOBWNpqn7KeB50c/yFv/rTpNnuolF9oqP4w/3hQlLkaTnIOiEF
	 PWpA6JEfSp10yzhsvhFr4+Q+D5jeQiXRaC61QJpkP17uw0tHq1k4EyosXTWbFT7xRa
	 MVq02dPs7eiceHi5mWd32WbzA9MRLTkkA1YpBQAtZMkJL8Z3VHjN6eqqEn+McdliGs
	 2gUVNcE8P0+ng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EAC0C71157
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175048139357.22967.12924780411520310000.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa1f07c63affcd3d9c97aeb937b1d2514a4a97c7562a5ad8e5477fcf35bc683f
Date: Sat, 21 Jun 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750481393
