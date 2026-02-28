Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE83045BD74
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 15:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772291693; cv=none; b=gFA6cO4wkosBQ0+5cBMI1do3/pRgriFXNz0xloTvVOhFMVkFpx+iqVTC5OauygoEvAsczE+hwQy6tt032W4pQaBxnUVmMxS+6PfU7nGnnnTaIObi7qVb5QPA8w9N6SyxIV50PjrgV2gwqMyQ0ES/H9Usqh9q+ZLxjZZsFR2gT8A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772291693; c=relaxed/simple;
	bh=QBM96MusZEJeI2YpZduq+pZYLnuOPbsx3N6jXXH1cJQ=;
	h=To:Subject:From:Message-Id:Date; b=pZUFJy9W4/V3k2+A3vTvVdwHfLwP77ZL+yIWPpDSzmzYvPdv1yfLE4Cfac52is7Y28XseT95DsHuPKjXkK08U7R23idxjpG2INQRYbRNflgLN7ezqN4sZGSaKqmyWHrSIHX1+kpDwBuASWd9JLRvwTC19HZw3PH/YCPeeBeGtgg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dGJeqKLi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dGJeqKLi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2BE9C19421
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 15:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772291693;
	bh=QBM96MusZEJeI2YpZduq+pZYLnuOPbsx3N6jXXH1cJQ=;
	h=To:Subject:From:Date:From;
	b=dGJeqKLi/amK01LmQJkVxCJ562Yyj/ujTw8gQgUwNYezOuJZpIkdxZxl9791bxyK/
	 NcPInLPGZ1gzK7cdMJJG8bteivZyVWj4NmRW83VMModxYP0vz3ukrRnCOB+x+G4hJ/
	 WSvua2HULUIVbaU27x0wuJ5QPvif1svEObxjxRGTtVFIsN62y9qEb7K32OMxXefPpg
	 Htfu2IXOJYsTFneWElMTPTb7I2VpGaX1DuwWJaNsBdFa3bpgbUUpCamWUu+Y50YEFn
	 y02mJDKIqOHHS5xZpzq8fIWfe0ZHEpC23sIL3xFrgZ6XyO8+ZA2jyXit5q3oR342Cx
	 NoYeCy0WIWuEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92633FEE4EF
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 15:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177229169358.2035.11868982543816517086.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0899464462118d459aec83eb1b2f7410f082dfae58c3f248d9effbe4e6dbeb8
Date: Sat, 28 Feb 2026 15:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772291693
