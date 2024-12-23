Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C0D061FFE
	for <ddprobe@lists.linux.dev>; Mon, 23 Dec 2024 22:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734993354; cv=none; b=sbInVAmH8I0YNcYBt93AWXVE8Txp3+YOLC7HtYpz8d4njajCzMQAh51VIzhVTI9IHrhlFjs2IF5jEl12216PAdkR9kr58zmXpG1KKHOp0Dd11ZsgADIUiXjjFq51ylJ1HfS51HeBtPLJbryv+3WPxPH1h99zMfPSBHR60tHpPqk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734993354; c=relaxed/simple;
	bh=DbjB55EmmlJijZubOnoIjLdKWasQ/KOWQTqxWaFkUlo=;
	h=To:Subject:From:Message-Id:Date; b=tALFd+Fu0vOKABoA+hAstJyaFrQ/KZBgTU1s6TwyMBBAojBi89+VC445IF6fbdjIFvSomlXEi9JgE8RRupwoBOD8qhf23Qc98PVuwNWYIF7QPiEOhQrVHxq4TqH2qKGQIhrxorbwmDpmcQnsUoi3PdbMIIvZIGI95Kx+TqSQ2S8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fifPHlK7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fifPHlK7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B872EC4CED3
	for <ddprobe@lists.linux.dev>; Mon, 23 Dec 2024 22:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734993353;
	bh=DbjB55EmmlJijZubOnoIjLdKWasQ/KOWQTqxWaFkUlo=;
	h=To:Subject:From:Date:From;
	b=fifPHlK7jYn6fIX1p4+XtCntGALlSwdEFIxPrjyg/J1LfDWAmSwATVbIpU3n249qK
	 3Li/WWL3MK0QeIwrYE70V4Io+jVeM93UtNsjQzAxa7XlhgyC8IFJ4y2JzHWrY//PnN
	 bcsdZ759cz4R7JuBTaODTDXHSxEw/C13vz4X0phSAF15qnNIGldUMSrgigu2QIFriQ
	 w3MT4BO6BaL0e5fHs7Lr3tdOaTkTSbnpV10gJS7hGWH3FZTzKoBq3pj6nFv3oDq1va
	 ZthBiGX+RI3CXJ5tcjUUiU9QhqAVyxZPeLxcmFWKXXHQK0kJb7dW31cvt8Hosl28bk
	 7Jq8rlseMZqbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CCA5E7718B
	for <ddprobe@lists.linux.dev>; Mon, 23 Dec 2024 22:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173499335360.6512.2974906836162637707.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73020d72b1cc747c179cdd4753621cacd91572b0fb0cefc84a17cedf170f206a
Date: Mon, 23 Dec 2024 22:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734993353
