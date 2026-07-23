Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BFC2355F35
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 06:09:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784786974; cv=none; b=ZxlGoaTf9AvfzPbDq8BoUiC0CmkYPIF4sBXPnh1+AcK5aCtDp+nE0NQcy1YuGAyu8mlI1ZJ/n9dm9K7+/40g7gyde4wcbPXKmY5+0jlw2HoJd8eqZVKnNhDgiyZW1T1MdcoyjiBFPqpoVK3uJdpkWA/hXUU5sNOoBILyCVAFdT8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784786974; c=relaxed/simple;
	bh=CN17xs7+ttxIufq8wNUBGh3er9Hs1f7sfADNnYk8USM=;
	h=To:Subject:From:Message-Id:Date; b=PEQqny9MEMk9U3EsFQ2PJpYT96yJe4P3kMnD0g57qoTzWbIRN/9s6YxvmQBCsS5NK2UO4OP3xUwhhMdETNU3b1L71O5FhY54728LX4lCCnjJD52rMkRqR/5qT/qLT5YHbMF7g2TCozA21DT2csBRnh4s2vAglJqU4oQ1R2XmnuM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u45lh1hW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u45lh1hW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EC7C7C2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 06:09:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784786974;
	bh=CN17xs7+ttxIufq8wNUBGh3er9Hs1f7sfADNnYk8USM=;
	h=To:Subject:From:Date:From;
	b=u45lh1hWAKJ5I2H1jdSb3qD9S69rEXa8zwoxkqe9o0lS50A7v26A8i/vjOnWbvtcj
	 d4oRWQBxVr7sVD9rWJBxTCyynFkC1J6Mcr3/KjhQ4N0wwNfm9jdDquhxEqQAxAQzwC
	 Ab2KpQxaAX0IdoVtYRJMATIwEXaCdylvaeOv6l7eWwPk4CAGw8/D9/mmKteNS6Dnnq
	 6sYgDtsg2XHAObTAX0hwvD4bJMMyWAY/HVTQqBrPG2TG/Z+tl6UJhN9auVSBix9g7w
	 IfyMdrYlpzAjzr9XJcZicfdayN5TNmzyr1h6oS4MPzEHhPGyX6L1AkBdWk2EYAi5qn
	 FHU0x1xAZOMeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3D02C44524
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 06:09:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178478697372.20753.5825035589933500009.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49d06a799482fb0f113bdba026395fd5fcc58aeffe7c0d332f99c7a3f6a5d29b
Date: Thu, 23 Jul 2026 06:09:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784786973
