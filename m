Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63D381CF8B
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744955995; cv=none; b=XzvxB1/AP3pEcWTU03puONTDa3MyHjQZFdhSU5SjJTcJ9yz+xAj6FjO4RdGR7lh5hR/ddBupcKq65ZNRX8465ghAu0T+eMYfyIRpTxoPeg1GrOmZ2Q+ZvTsyYyCs2SKyyNLdRvQJ6nqap7y2hxrZYHqKjhS0RwgDeBWU8l6DSvU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744955995; c=relaxed/simple;
	bh=IFqgtKLZt55XZgAPuBtZbw4EMNr1p6VnBX3kqGPMxrQ=;
	h=To:Subject:From:Message-Id:Date; b=WBjICodfamfDhR0LCY/tmUXCx3Urfzo/KihiUOLybajWPacOp8HnHtzin/NPx9tbsCXTptiwnfvWhyN9DjCKtnUWpJx/Qm1p8ojdKQk3nNkkPcs33TUZwBAs5dp6ttX5lEEXqE8jkqTIWNRbZPzc4vdl1egB92OGs5Zyz+bAm8Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AXmytDtM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AXmytDtM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD3A7C4CEE2
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744955993;
	bh=IFqgtKLZt55XZgAPuBtZbw4EMNr1p6VnBX3kqGPMxrQ=;
	h=To:Subject:From:Date:From;
	b=AXmytDtMoIhEM7AiAa9gSSdo6uaL0NIjg2WxOReSHKgjLrVJzEraLR7wo3ronXOZK
	 6EDeyjALCmQq3ESuoOv/LCEZi7X9fsxFTpPz/w9h/KOepOnSDQ9tbO30c+SCyrH9wd
	 Z9vfayUOlvomznqabexX04I7Fxk4GDQy4awngIupR1TsPs5ffaZWBaRuArUkWAm1y1
	 FqvTJikDhA//G/FD5fQ9iz4iAPNGMUBDKZW39T8FjR7ynkSN1EVthTJOLrgFkDRwja
	 qdNJjgxwbztk4LZ5e4C2gqpLe91cc2Umawk0YyJYaYqhQmnXov11yMaLIlMDASNFux
	 8O9VkJZhPGsnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE5C9C369AB
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174495599366.3622.8631279745610890643.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9fb35a69f070c13bf5e07c7a8154df95ddfba2e609f30f254792b5991d5c388
Date: Fri, 18 Apr 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744955993
