Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63F1C1AD487
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 13:50:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718891423; cv=none; b=g/euoMvKk9J/Wv05ZM30Gw69z2YMIxi7pVVFkhHGKKysKQ2l4b3H/t+15V/QEwfu6EvyL8fWSmzjlmyX8Ld1aX6hxN4rYZ4HgyhBm8cMuxTwY2HBrVcWxZMK80tFoJShHuJYW1/kfMZoCNFHX5vn4XNRlrHGbi9YDIh6cYDQR+I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718891423; c=relaxed/simple;
	bh=8E1Mr2rRSP0bQeeKQWlrZYyHa9W6/DT5kA+MJa7pl+4=;
	h=To:Subject:From:Message-Id:Date; b=haktpLfFBYefmRcl12xmaZmSOkS5HntvSp7Volh7IdXwnJeN7hokRTqvAxRoOiG4jeeoNCPlCcNFRHnUwEA6hdBPiuiEaLMsYUzL6/VL94MstbvRLlxtC36XOLqm9u3KJzZF8vVZ8kehiPXRIfFvXLq5/tohJ0vacmEEKlix9Mw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q3jZEAie; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q3jZEAie"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0E0AC2BD10
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 13:50:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718891422;
	bh=8E1Mr2rRSP0bQeeKQWlrZYyHa9W6/DT5kA+MJa7pl+4=;
	h=To:Subject:From:Date:From;
	b=q3jZEAieCcyFfL9emXYBmV53T2VqNnpZ9n/6/uM40p9FWH8EZ46Dmmo6/bQtrqb1B
	 rQ3X8/oDFZGETWmzkoRJ7FNxza+Y30gyA58ZcjcrJYzIZmlpU1ahCba31N9tCva9r9
	 MKZAoVCTDdl3GFCw1PyP6B5CNGy4Oo9WuFxk6Kr2m+CSL2QvYGoAo/eUjqZsoze9Un
	 +GeW+79NUSHhy45ttrMIN9wGuldc6rOvd0dFEQaKDUxCkFj+rlYl3mBJUBpdrrf5Jv
	 AZufiYajJHvZ/dg+ryvbKLYi0okD4vsT4JLz/2KTlldPjiBx/onLJl9A5T4+ntw7RH
	 9h3GkCpSdyqMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB751C27C79
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 13:50:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171889142281.21601.11666646298133505366.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61d325e6a687dde7761469d4b4192545a58a06f845eda27093cdfebc1564098c
Date: Thu, 20 Jun 2024 13:50:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718891422
