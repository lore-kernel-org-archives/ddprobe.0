Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F05885626
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743271794; cv=none; b=Yek1AhLTLojAhwfjjgt3kXSvt1r0aJycMEkhwr4zC2mS5Uq7v2DP1AY3P9y29Qa8guUCd/SGyZLENWcPhXMx6qjAEnxi+iUf31kenOrwk1L3DXsbsPb3nrosTKLu7iBmWdZbQ7cQxciCY/uIMnfsWtBO9bNAN0tp/t3k/eaom24=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743271794; c=relaxed/simple;
	bh=HsheC4oYqntGZKh4DN9jV6EcOEK65Tx+yGcS1/z/I6s=;
	h=To:Subject:From:Message-Id:Date; b=XwqJRz9N9z48s1G1FlF7u2foNeD3cFDOFgmCGc/aiAkIw/OCJs70WdGN5ZGHUkduduGDtRQn/73eAmo5lUJF0P7t2zhMSM49ajq8EmYIZNzxQBnlW8Zc6keCDzN3aItYjwpfzq8Qa1ge8GNb3se/EDjvjjZJJg+NCnei2Sqcm/U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tjqr7Jao; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tjqr7Jao"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFFE4C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743271793;
	bh=HsheC4oYqntGZKh4DN9jV6EcOEK65Tx+yGcS1/z/I6s=;
	h=To:Subject:From:Date:From;
	b=Tjqr7Jao+TqtsHCkH34Pto1eMh+Le/0y6i8xQTu3MZe+snsDML4EEblZjVQrx5AB9
	 Qrp1fnppDoSJyYUJAUxxRUtzf32kdaUp7BoEC64vUMCykmrpErAcdkRvWN/fOi21f8
	 JwEMlL27tR/mjCcRicryvtZLRopU1oDUxKxVxo2JyMLjBEFwcMDP07xhmLynpkc4+S
	 tuGfX6jvsBnizNigHjY5PAKH05RIM601ExXMQYoEYTA17b/qbZLq61vqPHC2TKsn+x
	 iJzn/u2MRWCeHY5IZ4K3MIbHGL9oprTzIE6F/FEDblwOOzufaMAx9sZmrrcoyCau+Y
	 dWSRg+WOH+lcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 962A9C36008
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174327179360.571.5063210853098596397.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a7ae70a97ad0ac820926a03b930b91946c582a61e10086cba2d6e47f5918249
Date: Sat, 29 Mar 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743271793
