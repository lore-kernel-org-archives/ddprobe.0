Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5000145000
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 05:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786857634; cv=none; b=BG6TGPQuHBPuuOTZS4WxY8ACVaYnFODs5VmV6s1ASav/7aIzx/J+Yudq0OMXXNQE9apRo1kfDWSB1iVNTWFx3o3b7OeQ5xjk+Y3h0zUaeymcihJ8EsQosu/xCpMs9sd1xEBB24FJlPkXS2w08qLVQW8r5XVEGhWStHVRPNqavq0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786857634; c=relaxed/simple;
	bh=GA5nDwqp/yRtOjBJg4hV7gg56dtJ6RB1QS2YqfyK2aw=;
	h=To:Subject:From:Message-Id:Date; b=nd0hXrdOti9J1cV5skLl9/Og8s4dKaAOeSMKe0htcn3Mn39cw9DsplZn0V12r07Bsg+NWnC0JQ/uA/MDLfbPpuqdxdoUR2f0wuMsKcETTAMZuigs+eUUuKZPWDm58GFAcaqFoFPLD7Jdb8Sd85u5sUnk0zQ8Q+NEvP44F1aCJLw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eO3Qr6IL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eO3Qr6IL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D651EC2BCF4
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 05:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786857633;
	bh=GA5nDwqp/yRtOjBJg4hV7gg56dtJ6RB1QS2YqfyK2aw=;
	h=To:Subject:From:Date:From;
	b=eO3Qr6IL8j2mGaIlyPI1/3pC3tUXfINVgE8hl4p7lRIOYw9Phps8oDZxzgXYV0Kjb
	 bSXzO/MjEyajKjmoM2LjoYPmmakfrMhBY5OxgnelBLMy3jMrXccqRhpRrwnBk1eoJv
	 WlV0i3uzK6lJFmlwk6gupADHCykouPJ2i5c/R4KBfHxzv2KDMecE4GUiAz8J8PmlyA
	 VYQyhggDxmeTl1VIQ7TGPw0Ii9iTHvLPp2OBODCyxacP0P//gzzZ5kqHZzfzHE3Zsd
	 yYGZPLKIrt/GzpEHvjqtC0sKMMMBxStbwirPp4M/XGbiNwhhdGSBM65GbiW1OtK1Wr
	 VylvIQje3sGYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0E03C5B572
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 05:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178685763368.3364.14979717525295262291.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3522835e34a0957c803b4c7c0a5a69cb7d30eae35233b1e4015ca16f5855fed4
Date: Sun, 16 Aug 2026 05:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786857633
