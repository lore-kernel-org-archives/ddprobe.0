Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0068B279DCA
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 23:33:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766360035; cv=none; b=bdLQ/TxY8d/8lGTBmVGnxF1VmWhvgRzsi7Ai2Y4d0kT91DjTcjYmCjnG4nbTauoT+f1QmEsgZ7w4uXd6UcJohy4T815svA45/q27Xh7qoV18F2fB6P7qbSi2AkGAhdpLZFwX8llo8ZVtEbJnwP3Nqur3rR6d3VwwFx4WL9TqDqE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766360035; c=relaxed/simple;
	bh=oRBRE1v7Y8MryNJ5EpFlKaYDZ//3ELbnikw1Z8G5kXU=;
	h=To:Subject:From:Message-Id:Date; b=RnhipBkWoYaOFQujGv/OdthrwDzwr++hnS2UNMuoZIam+Bwnut+w2v+yIctZsqfPLMDi4iyQvTweaTzkvmfOW3YFbTIJAIujLlfpljxsWMeSkmxxY3zpDQdx9mB1pzsr8EPCjVLhdkOwPyF7h2M8DbHLwwIlJOZwwedo1f6kZU0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TFoMBmkD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TFoMBmkD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0A29C4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 23:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766360033;
	bh=oRBRE1v7Y8MryNJ5EpFlKaYDZ//3ELbnikw1Z8G5kXU=;
	h=To:Subject:From:Date:From;
	b=TFoMBmkDNPFWqwXILxkWWen23YUA7Zj4CZNpQiO4fbwhOjgiMvyFD8//XMSi/kfNU
	 PEgAIZwkmveqGuTFP4LohtVpkEFNgjKMZxBfi1NT3z2TcSRAuqEHfTx7aH+Ig7Gqrv
	 Z/QfTDyHKQI+Oujng9AjCf2ApdsggdMw9M1GwPg9yHat+CorItaCBk4of4DsdWcAHM
	 C9f/L7eUbOht3itq5vEL4s7jylVXXtp3O0s5YmIWZoFtcFmoEnkenxekmRrM1soDk0
	 ZFBC9BPSxTZYXWBIOsMeIy845SQOx6iFYugn21EAdWWahTDut1o33Zf+RNo9hrJA/D
	 71HohDEnEKC4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FDD3E66886
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 23:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176636003358.18025.4862674532841967605.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 158f4117352d3dce2755fa881358c7c33a319fb943b30d26aed84b93af1a8a17
Date: Sun, 21 Dec 2025 23:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766360033
