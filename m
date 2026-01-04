Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F80441C63
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 06:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767506634; cv=none; b=BH1Y10lLxHl53AQvbpEid24yR0eoNuhJM3O5X3VAQTGchfY4AvbVmr1XPr4gTLQ9U9JWkfj6MbMD45tOq+e6eFTKAT132rIhWqyJED3A2qJju4mlQii+YTHiQmyY7QYojrBls9HKEBPRjaAHbWxRh35bajx910hANDT20oXC6JM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767506634; c=relaxed/simple;
	bh=wevw7251PI0mgTAZb+W1KFQChTNZO1hWpCMYBA4wqyg=;
	h=To:Subject:From:Message-Id:Date; b=f8q48Xxxs3nTwbDzByySl+/x6BEtAeYYZJ5ogEa4GoSoBDFssuQ+bFG322Wbc92zUpJQGX5Xhvcy4Nl/N20vyhG9u0le5CY19Ch6NcxD/Jt+aPpypg43Q/XDUtb5FofRjeT+T/Q8Cd7v8dXKlZPu8EX1LFNILbue4ckYefRQY3A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MRudP4rI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MRudP4rI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6848C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 06:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767506633;
	bh=wevw7251PI0mgTAZb+W1KFQChTNZO1hWpCMYBA4wqyg=;
	h=To:Subject:From:Date:From;
	b=MRudP4rIYqTGIsXluK4AFP6QthYh8/F2caDTKDksgdWu0cMbJhfkDdzyf2nEN9tjV
	 /6CjL8GQ34yRZEfvG86K58198DrTOe7Kzgvn1xsWaX7eDNecmmk5WveOZU0U1eRasu
	 e+iaSyNaZSXBX/ymc9nbfRxByv740Es8dOU2xTIga6x/egOnMYUr700KtTavMqudXP
	 8RmtqzEn93EKVNpHBSSZyGSI4s47mE+B0QftElIzPjCphM8W0C1oNz1XizKrPj51BJ
	 OBH03rLsI0XwZx2cWMxj5GQ2jeHbU50iKIfa5Nk2nPNH0o15RykJyVk5+r+hVnID7L
	 m+zpN+Dldrg6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 953C2C2A069
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 06:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176750663359.13796.12308094926632880027.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5bb7a2b261c0394fcc92c8bd941558579218283ee3de3bf0c1ad38483cdcab0b
Date: Sun, 04 Jan 2026 06:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767506633
