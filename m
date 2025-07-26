Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D59A1C84D0
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753519194; cv=none; b=sh6w205DGtQ1bKR3OVOTEuG7nwV5J6g/rV79KlH7ApdjuYvFdoNjBq+FsdiAhR71GM9TswRwQL3mBYCkfPmf19Po2jPnopetwDSLSoZCjl3kBRFLV0Kw/TJFADrrBnDiWWyBi0onrY8bAUJld2IUcZhnKLQSWkv/5qihSIC6wK4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753519194; c=relaxed/simple;
	bh=rMyNjC7ok6vEIhsEWlnBxWuJzVVhfOXrfVYURKmw/Nk=;
	h=To:Subject:From:Message-Id:Date; b=MWkKx/ml7ASJeuODCRYnzw0kKXVVQGkR22ntV5n0DiQMLyIiDd+Ch59ZUUxrG7+h1ZbZVUcUEJA8mej+bZ1EMXXgBTTBNI2O0MsstNu3M1yYtQ+6bIFr+gjS+daj1Jtiwt5KNW08WVJ1uqjIhb6w6Ya3pgsJW3PrYGMIr27Gxi8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MIKBkMYv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MIKBkMYv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A59FEC4CEED
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753519193;
	bh=rMyNjC7ok6vEIhsEWlnBxWuJzVVhfOXrfVYURKmw/Nk=;
	h=To:Subject:From:Date:From;
	b=MIKBkMYv0vYrmfme1Y3+h0xs7JUq4opFYDmDrSKP4/X3CR8g2xYGUD9CFAC7gp20e
	 f+p3ixhEAPm0NAXMlAJEcJ2ul2/fFQ+sRI1r09EogqPnYFtP01aP80pqBdXgXaiR5R
	 R7DbQBFika4ax20nzxXVmLodayaxbiZDRFOZSe8Wlp/UnWd0IxvgI14QtXIOCqRdPi
	 fNAEYiAXsOhjo5F2iJq1rh+eGtufgugKtXESMtdv63/8Czh+qvih1gfUeNk40t+5vH
	 lZ1Jsmm7Hc6sBGhmFsWSAyMf6rRMk00peCYa+gyu/OsInrEAhxux7lFCpemVX2M1yL
	 Cvk+wrGcY6h2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93A78C83F17
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175351919357.28647.17038435652759666802.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23437ff4f5efe0c31b8dc24d391a960ff2e4f0ceadf777a54b59c9d66cbc91c9
Date: Sat, 26 Jul 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753519193
