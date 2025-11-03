Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D91514F9D6
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762160994; cv=none; b=lXiNGM6PU5bfimduQHASUOpijiVQ+pf6Fg9fGl1kx7HFjzHMCdPTr+EgrXpRhUHyJmEWKQBj+hnxl7cZ7Lmeamoi0KR+y7vkH1JY6CdX1i6+KJDktJc176GB2zyFy8raw2pBM+atdjNilq/P4o4ar0kgg3C4q/AAr5OLSajtl1M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762160994; c=relaxed/simple;
	bh=uv00IjQ16Nc9e/Db2xKDl3L2MTi+KyO9P98oB/EYu4Y=;
	h=To:Subject:From:Message-Id:Date; b=SGPVjc6SqwGrgbvYW1OwD//kZOfLz0eJWqljHVs+zvZASwVSsyi133GeNr/3y2nJTgY5nKuBw9KxTugfe7t4YiXMbetS6vLfo//iUWza2ZlfoYTnQT34XTVSJta2/xhsdnHVlrklq351L7cW81jxtmrkSOnJTHiFQT+1ZV1z4so=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=biXiamyt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="biXiamyt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A71FFC4CEFD
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762160993;
	bh=uv00IjQ16Nc9e/Db2xKDl3L2MTi+KyO9P98oB/EYu4Y=;
	h=To:Subject:From:Date:From;
	b=biXiamytXXJJftlPxWrI5+m7+gfiREpkPiiNMEVVKroQzH/nHFEnSIrobslE3ehdp
	 LxtUg0jLnArhACsJizqysNgx2WG/V7oBdjI3oWp09/j9M1Yd0qCN8Hsij2Axghf4js
	 sbzWieQ+6jFPvr4Qre3NLOsYCZl3Id0eIjTLXHFDab9ilzUEF0A63+p5KpmZIn00RX
	 CEHe2q3AlgL8K2qaeWW199GsOevMYIU+37unDoN0wJMLDdtXBHqygLdfFpi1WH4J/a
	 fpY31uq53VBYyWr9ozbEjaGz8nUjR2qNzXCQ3sAvq3Ns1CmrPrwU8yPS0zmDXBwNtb
	 dL+w63WhLA1ng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9161CCCF9FE
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176216099358.29312.16132620481314063998.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7324f53e416390bfb04199de25f58f45d6a7dde010042c98d99c24080e993dfe
Date: Mon, 03 Nov 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762160993
