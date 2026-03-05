Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06F52374191
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 11:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772709294; cv=none; b=CfXibblEpJkqNlLquIdsygWMv5CN6e3XCN0hdnvcA1yEmrAYlcHYjRlqH9atAmj6B86RFRAYVWE78+pNHaQg0onASd/XQxOwOGiz8o+Yg2OY9KiQ8WfQBDYxbUmzEsCSjOGbTATNCi5GuLdn35Ey4huD9+Lpok4tXXJPWG8wu/U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772709294; c=relaxed/simple;
	bh=okHzhkj070J5vNMx1mYvfKJU7zicAQqIRE45WBTTsZw=;
	h=To:Subject:From:Message-Id:Date; b=FlTeFsXkhnBayKwDwom9FQZ/gSTlbaDDckm/IlLxij+0kfpBQskWjSSCgQWBzVFcDX3XQ3O0DznQv4kFC0bngq+WIehVI194D+F5EQxvMtY4cxC8eJsC+/tC7q7EWt/biW3ViwPnvzbRySxFAux7BBi9A7U1Of3Kb2lyTXK1Zmk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tzw7vPiJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tzw7vPiJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6FCCC116C6
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 11:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772709293;
	bh=okHzhkj070J5vNMx1mYvfKJU7zicAQqIRE45WBTTsZw=;
	h=To:Subject:From:Date:From;
	b=tzw7vPiJfuTcEQFhkX5/tbGExceLDIAQYg/jLanPHnKVKeZVjk+9Lq0nGBE/We+B+
	 8fhfI1kDIVMl3pgpumi/ucitoSNFAxIz51sklHisUg9+h9VCjwexUPfM69aV5LsJWO
	 mFL4s8JHfzSJdh5GmEDu6f1And6XaGelSySRIz7jKHKtXoWdPyooHEokcce9jgL8MY
	 qXerzwYkEKqTpIvrnPCnQgCBfiURAj0LYJnERh6FOdFB0hXykqXYeC5H7agoCGBNV0
	 +UsVEggVmGYv5h3dsYLyejWVizxS5/uy3Yt7Tw4zIryDB2s2CIS5n/soprGOAzLXDe
	 T2RmEj7taM3Iw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE11F30939
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 11:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177270929358.2444.8064959463933079790.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ce03bb2075629916fcb241ab0a5643593a3436452a6021214803281c115285a
Date: Thu, 05 Mar 2026 11:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772709293
