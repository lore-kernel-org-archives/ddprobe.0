Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40F3F250EC
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 22:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723069554; cv=none; b=OkStdqngnH9j4d0mjMzN05pJA2DAiKtC/Xgir8cDIj0/GTWUTUgfWEJlrYqGiObhFjuuptXqOQbdybu6J3l52XOrJ2aoFDX84PPuTLAAKPEB7rKXJSvMkM9VndTOIN20QWfs0c+SF0tFGUwGaUCfkErfkTXSE6kvwy0p3KAW0bg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723069554; c=relaxed/simple;
	bh=mnfkkY3Lzs6JWsXRGNa/Zm706VR6yxd6TN+1ldY9wws=;
	h=To:Subject:From:Message-Id:Date; b=htAcuQeDL7yYTctuQgUKCc8KgDSoJ5AneYrgLYZHLSByELLKTc84OEos3mWlDts33L14rC20GYb3yTRST8/Hd8p5kPT8yVD/FZglUR2odbnLNUmuKpeQj/Qc5nui66YooheKngSJfhaa1uc7S0kIl8L6IB7GLfWc60m1vm5mIr4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XNoQOPY2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XNoQOPY2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA47EC32781
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 22:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723069553;
	bh=mnfkkY3Lzs6JWsXRGNa/Zm706VR6yxd6TN+1ldY9wws=;
	h=To:Subject:From:Date:From;
	b=XNoQOPY2sbQPzOmpidvWWq7/B9rr5zgVSYDpWHhoNKc4Ed2Iljri7cXFMysJgCi6v
	 7EAx5BplbQKz20MIj+w/ArjARWOXPsYfYnwev6R/JPxVlFpIc2RpoYRoCqMmc0E0Ih
	 nVw0VBih30VQimaww3D71GCep6W1zqTDaHpyHFfBqsWFMUA4bHyJy6pGii+bOTG6+a
	 J+Ykj9D4AeLvjGqaPpmxQw7Knp7YajsoO9K8m3c5ac7knqVtZkoXF1wVRlPZ5lWlqs
	 OMBD8+TtUxqdQU7S2WR6jYG/eShe9gGZQgFWhXfeo9Cj5D7+oHQ/aqabNn1eucgYAa
	 SLBAsBP5rk/Dg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94617C3DA7F
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 22:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172306955359.31881.306274868137098715.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5fceb3036d7d4f0516e01f5b102e8e4b3815bf306f48ebc7f56d2be5deadf1f0
Date: Wed, 07 Aug 2024 22:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723069553
