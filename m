Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2699420E6
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752025194; cv=none; b=hQi+unB4nBVSzWajy3/yRsz1//3d22wlNsbtHDf0ifUrZ8HBin8OzkKkPi6DjNdKDlx8SdfjwNeefhghb2+y/7yNwD9FiuQnTX5Ero1CYon2t6UNsMQnRoVfJTPfoMju+o7ON2PNha11f7yxCYvR/V1cKzBfZIantaG8HcKCNWU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752025194; c=relaxed/simple;
	bh=tYsqvvadvFAfCl0SMTd8kbZkqIr7ZkRwY4o8sJMqvyo=;
	h=To:Subject:From:Message-Id:Date; b=o3m4yukrL3oF/RBUFlA+dBqA+JWl7LL7hfI8uqI7V/pcXkxtwMMOtkfcojd3jJcwXj16xKuXT9gfgdJxaAgs3jt4AajXANZHLuG0/uF6alm9nzQKWc5x+jbBFNmIWxyiPlNgmEltxQTVG97fXppHDPNWF4CSru3QGv14eAKCHhU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BtWXomWf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BtWXomWf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD95AC4CEED
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752025193;
	bh=tYsqvvadvFAfCl0SMTd8kbZkqIr7ZkRwY4o8sJMqvyo=;
	h=To:Subject:From:Date:From;
	b=BtWXomWfI/PcKgrhqeo6ItDAj5e6racCjz7oueqlAhVDIAcr9B3s67u5lJaeRwHur
	 81m7VB2VAKxA85IhWQ9tJCwh6T0PbWX+zq1P7brkq7PTu13iZags2w8DJaJWX3dZe6
	 dNlqyN1G7T8RD5Z3AI+tqMYT1YDzuztUz4bA3JGTkDks8CNCAt1EviuSSVMsH4ttlj
	 BXufBRk8pkTgsM15ChBCk8s/TXstlrkhwLUcOkIicVgMzjNAtJPxm+hl4smHYBH3dL
	 BWBcaRwvV55mdWps6pOMSzBrp3DQldHOaYQAlmknT+9VVgk7NqEfMExS3vgU/eyuJE
	 P8yTR6b3wC4Ow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97D34C83F09
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175202519359.23898.7849058121842052864.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7c7f1cf521cc01d9e22547817f09e7be5b56fdea4dce0419f64b5c750f7b6d6
Date: Wed, 09 Jul 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752025193
