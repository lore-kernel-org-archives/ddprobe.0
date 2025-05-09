Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4643B224882
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746805194; cv=none; b=hec+64iEtaMW5iaeN6Cf1OUusN/F1az2Wy61BE4S2qx1p5E7Sbn5pDPdltbvlRZ8HGn/OjfGF7LcGIubUP6ytBCDE5yUqUhlWmeWkzrBmaxvAuaDWMlJtvXf+PgwIBAcGu91NNYikOPLuba0ME8qAZtpVRd0z/h2gfrKxQhl2/c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746805194; c=relaxed/simple;
	bh=A/0LCytg5Sc4/YXNW24szn2pCoASBvp2Ck9xxQvFPGs=;
	h=To:Subject:From:Message-Id:Date; b=UlBsm5uksP0XekDHlAzuTq2srFqUn9gSAhgduatwG14kGMNSW5XCVk7l12mE7aHOyg//ayxlabk1W+bc8/wrz+uSTMb1NqTWk90SvBBMrkKUCZRRludFR9ru1cAxnzYiDqLTZX7pTW/pU4kwAmAIgOrhhmkCR11Sq9+ZMvCn4QU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PnkE1yJq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PnkE1yJq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D96AC4CEE4
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746805193;
	bh=A/0LCytg5Sc4/YXNW24szn2pCoASBvp2Ck9xxQvFPGs=;
	h=To:Subject:From:Date:From;
	b=PnkE1yJqZRqGNH5uVLljUA3e1fIEOYMTQWeQvlq++HfpwaSuNK4mqvmg4wUZhhFC7
	 m8vK06j1KXFHfqpy1q657m95VWNZQ2U9dZw8UuxxY2KgkcoHaNU5n4O4n14MGfIMAu
	 kjZ0AL+nEBo9qXmonWQIGIqW2LshuCr1BEiSlzpoS5WcvIBKtsq/SKNkPTBuJQSN+C
	 1eIeEmj9YvcF5V2yW3yNt+kfmFLdRWEnYP0bAXUJEpAP0f+YZtUWeJjoiSDCHTTN9H
	 NrmQhq6wNefHPn0yNQvlQupzwdPPr4tz/LEvPoZatymYJCs3BjwwIcAPTLxAMmMcsk
	 f6qeDDG38L/Jw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E554C3ABBC
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174680519357.22112.15689269407147365313.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59d7b93cb4fbce8689aa7930686aaa633ecb46398c86a991cd8f020429e20ec0
Date: Fri, 09 May 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746805193
