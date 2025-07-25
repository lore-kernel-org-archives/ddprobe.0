Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12A882ED86A
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753457395; cv=none; b=UZuc0dvZBvBce8U5C8apeqZRyerSkdKcKtY5xm6b5yGyABzv020XbtsLBofiH0g1GW6MmyBAmJzSVOaiZua/rsFWzPha9599iCDYMZDFTls/XtzNk1TKFhcvqjAuXT5y/k16ThCC768hTkP+PNv1prAg4eeKhNsGYP82ptehs70=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753457395; c=relaxed/simple;
	bh=e+HUEV4R5c6h8klMs+R9QkqV/+le9WYv5gbQ74Dq4HM=;
	h=To:Subject:From:Message-Id:Date; b=MA2rbCF+QjTG3KaRd8bLyL91LdqjAwCdUt9EyLxVxQOGp086PThXAfVQvj6/QuQDE8xmifCQHrj1JruUH6S7W1vidd2pKcvh3eOcwhhp4xo3sTcxqtUx+NkBuA6W4CIdDnHsFEuYnZe8NjvxNXfLWinCew96evLh0deEGZ8o8GQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MNsg73Ny; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MNsg73Ny"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FD28C4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753457393;
	bh=e+HUEV4R5c6h8klMs+R9QkqV/+le9WYv5gbQ74Dq4HM=;
	h=To:Subject:From:Date:From;
	b=MNsg73NyEbAxI7EqIeaCYaif5GiWK3asIGVstdu41IzLiELhl4r7jjVRfYfQ7cRio
	 Fbki/OjhR2bY8sbHWmWgLa/4g+0o6wGg6Zl3Dmp9OjjxtHecReURtmw9ZT0Xdj7o5E
	 1lY283CA77HxvJV1uUTwLjcXfGYghJjsgviFRMAjWThOv4C9W6UzMkyNBJrE4xKb0r
	 Eya6FDVb8JgSIzApMTzg5d3aDqzXBGQtMvsAqAvxyeQri9Jj0BRzlkc63XSdMFFRF/
	 l1iIiGOvqP1RPxBSYn0a+mxLLjkcw7c0+wWEjkSva3mvdavMNEPemO6FjnX98Fqyi/
	 tM5YlmINMTGEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F72C87FCE
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175345739358.13422.8132474550174237127.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3817cf96bbccd564c5685d76e4d7559b46625ab3140375911bb2b6c09ffa4175
Date: Fri, 25 Jul 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753457393
