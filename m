Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4744B1BD03B
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 15:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732809354; cv=none; b=W8h8fPUvBiQtyM/ibqOtKMWAHg5gfTGPzh0gABpbxHlolh9Zmsbi2/S8eh7Z6q7NExKbzEPModurXyzP0YH07mitr6duKK2eE2c3AafiQU2D8KOrJLBRsY7F7IM/U2qS0iAmpd8aJL7O8Saihi7U3Oph8U5QZEgZ8/cEMSOQZhY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732809354; c=relaxed/simple;
	bh=CAibvgP9amnvAwrpRz+1KInydTUgbxWg+AffMM7Lt40=;
	h=To:Subject:From:Message-Id:Date; b=RhMJsrMwNHn0qDXci/ZW8Ksgrd+IvXx358fF0ZdKu5Myw76xnaQtSohVEhpUc7XP8RRdTGP7YkvQiWKdWuPisaXvosWeOByUshrjzQK4KAFkCLCPoPavJ/6c/88aRUQ1S/xpXPpZe5IKiUg5Cy4OWgB1F5RcgjxP0U+LXK1D5N4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q+8TuYf1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q+8TuYf1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B981AC4CECE
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 15:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732809353;
	bh=CAibvgP9amnvAwrpRz+1KInydTUgbxWg+AffMM7Lt40=;
	h=To:Subject:From:Date:From;
	b=Q+8TuYf1WUZa0JxMK3dIxfvxENv9r0NYZKxUV10ZIK+TV17Xz7XyhGjs3mqQl9CKd
	 IJy8WvR3mFEiAtInjjitLwObG6tUbk2uq6n43dfRLnV54hD3v0gKNIf+DIU8JC9iOn
	 N2Pl+oGnczy49paJohESHPvsFHoHnCARXohfSf+Kxp4I+Wo/ULZb4z1Imw/lFOCSg+
	 paZx5/JBXDBXHgwjhPsedWAdQa9gboBqeRPzN7OAnneVt68LHKwntf71BnpCTM8Jp+
	 WozbYo8wKI6ABpPt3R28zv4vyNg0Mg87sFDXNPUIXan3NgnSgZ2RosYw6HTtisaO6o
	 rMnKDi1sqfb3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A215CD69114
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 15:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173280935363.23800.3296058591146549704.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b263b5d20feed08bc82dbdf8560c5e4a473484c462d2584d3e3414eb482715e
Date: Thu, 28 Nov 2024 15:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732809353
