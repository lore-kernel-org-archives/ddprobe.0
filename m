Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3620614658D
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750777194; cv=none; b=RmpTcdHWvbb/EDATBceju1nylFGyt38CPf5MFOC5jAdkeGhWn5IZM66FzjzccAm5VyNCDbW8fVmLTdiAohmZFVFkfqD2VVG7P3EvKjhK7Q4HaimG/E4nRfs0yLaQG5VuWvhaBnD7YgxbOTQsfzFyCoFJDrYq/H4Rfmn4ObMZRV4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750777194; c=relaxed/simple;
	bh=faDyIExz1vtB8iJbprjYkg/0bpL5n1YfnpJ+6dgBdOs=;
	h=To:Subject:From:Message-Id:Date; b=lcuiMcIM0s5FTrSIODkzgTomI503vmAk+JGKOMEMbDn4UH7TGp3Xow7glnLy7WMnX53ZZ5XbQjwhndMCqpA7BZAY+gkNUAZumDVN28+4DNLH2mrkmBDcqhINlR1z1shWFr2jmaJavW2+h83mMR+dw/NzOVZb3X918MHAILevbdY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RY0DBoaf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RY0DBoaf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A10CAC4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750777193;
	bh=faDyIExz1vtB8iJbprjYkg/0bpL5n1YfnpJ+6dgBdOs=;
	h=To:Subject:From:Date:From;
	b=RY0DBoafyDFpUh1OkkX+RhJhcuG8WmZuyKazwFL8T39hG6wei6I0esctK+HzjAvZ6
	 vFp6a2G8TWUhyzWvuYQm9xCEwGAZhuychwv6W16Fbu+iDZ7dhwI5JG9Ne/8tK4A6iU
	 3SXF2JaRerbJLUyVJQSBot88QrTdNELxyXegwjaMOVEpxoFyxtDUjUBr+XO/ScfDfG
	 Y1990511bTYJP1SN66kDaP9PGJ7MXa35wK2oa5OdJnzhFz1pfVWKHRTHD6YioyblQX
	 0SF8uX5DcBON2NqE1UbXZYiBMUUlvwCOVb/FRp7B5vOZqEpjGg9dLLu884rFM8+7eA
	 3LBvnUzG57xKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92B10C7EE30
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175077719357.14828.9393402059830315748.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5bbd69654d584c77226217a254f4dfbf14a8de136d53f1fafce8138b4c3c2a8d
Date: Tue, 24 Jun 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750777193
