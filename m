Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F6CB289340
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 16:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771172094; cv=none; b=Z1FOq0+0Fy3QH3BPJAV+JtL17B6aY14sADEq/W0u97OKTAJB3OI0yjYqWm4ncWhe7xlONzLaOj3fZTD4EIV7c570kRBuaQOXvtzIWoHGqob1n7luRgu63NMdQNx4pgNEXhCzFlrWmk+ZHKF5HP8HDAsPQ97m4lYq5n9BAnAPa3g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771172094; c=relaxed/simple;
	bh=QXLf8Cod2dXgG+3/AXyyZEGfJWYb4itGQLhHd4xnXF8=;
	h=To:Subject:From:Message-Id:Date; b=rIm4akR33DBg7q8kr5leFQdHGPjRv1fzBBYqDQU0UZejw3mPwBsTnLQ+EP3QJkTTZw6BSysz+owgccxdnB2yg8XVR+gyG3OVCZHraHPZZ1CBk1iz10ImTgxDucj4YNYWbSsevnloKOiqTZaBTbwySTZXf6K293Wup0z+KuNSksw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cBnp9aDC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cBnp9aDC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6FBFC4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 16:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771172093;
	bh=QXLf8Cod2dXgG+3/AXyyZEGfJWYb4itGQLhHd4xnXF8=;
	h=To:Subject:From:Date:From;
	b=cBnp9aDC6sMcmjaxyHSGhC8oNDAQK9RoIeyXZTVq1alVkqCyrxkvF78Is+xhj7YR5
	 rdQkiyr33/DXgOQ508w/TibQSV4jkjIvNftRvUkCPjF9tkVp8uyA2EAVg4nftlWaqm
	 zZEtz+AwVN5tu8zyNlq/Oxmyw+a0bdBOoBHdIGXYImBtszNSYKLtGyK1ceVxkCLT6N
	 L4P2in/7NN3I387Rw2JkpVrzr8aHxrBbCoB2hORl6J8g/OeRyr74WomGSaYu4Vnulg
	 Hh/VBEGua/o2MWuqGo0VIVdSFANkYdkV6XD4xzbGViKWkXaJHS76yT8IZFIqKCYLfB
	 IJsvHhXwAdxWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DA2DEF587B
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 16:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177117209360.6948.3785406013644230185.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cea94cf2296c7458c7d4643d4b0a0485f46efeaebcfa3387c2ef5a7e0eb07b3d
Date: Sun, 15 Feb 2026 16:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771172093
