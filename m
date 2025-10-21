Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25F2F274FC1
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761076794; cv=none; b=T6yQ2hn1gaGq6id4Z6DFat1mi0kgFPMiFjQzZNw05B4ooGVgA4X36YheB4tEQRFPmozOZU4sDYq3ZKAU725uxFt9oU6Ozri4UfnVYVe7iQZSpHpGreRQwTOeJPspZT8McghaaM534OKkRagc7/HU81WKvh7kQsEHsyHvkykbqnY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761076794; c=relaxed/simple;
	bh=CdBJcCr0UnWi067lKXp+rC6G5Tm84wWs00IbrTxLB/E=;
	h=To:Subject:From:Message-Id:Date; b=Pnl6TZsPpFeY0Q+raOR+7T7PVk90RJbcrzVIu7M1CbUBgi0Uo1/Uw04rc2bt91s5BEjOVEFpR1khayKo2X9n6NJuXsZ1nBwWzPaSJrue1JGcAnDEbj0pWwyju9HusuoQ6GeSjtHi9LxXBzyQ3DIn6bFV9/kKkan7AOvTHUopZkA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FznYR8Q+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FznYR8Q+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B58B3C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761076793;
	bh=CdBJcCr0UnWi067lKXp+rC6G5Tm84wWs00IbrTxLB/E=;
	h=To:Subject:From:Date:From;
	b=FznYR8Q+RwAOb+3PzQEbHQ1lVY0ubB5m+1cuf1x+OQa5082GAfL5RsNaTxsdQAE/v
	 HZ0a9drn9oSAQY9Lta1mQoLMrOopWhUGL+UnGMZl5k64GPnNvCcebZr0pyMgQvYia7
	 TsVHZH4ca+Q+1OW2NH2MFvtF+NEAxGFYH5iEK/5a0BWaWD1suNS7CnQXRYwXNk++GS
	 mUP7yZeDvBriSR8dJjyLSbnijy4ATI2dT66z3E00o0bFV76KwRgKuRTmCISYMGQMoC
	 vu4fh7Xu4YKdjQBzsqtMarh4RR97qgGHiJrIxA/XZNPJBu2otnzKik2XyRd+2F/3OG
	 8cXV0M8TgEaIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0A6ACCD1A5
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176107679364.6779.1813215411987811120.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad4d30cfe4ced47c8e19964a30717563dc8db48df6d2f22693bd1534962bad51
Date: Tue, 21 Oct 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761076793
