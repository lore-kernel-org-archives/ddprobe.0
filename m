Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A8E950281
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 08:09:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712909363; cv=none; b=SX07QakMv54gYQgIoehNFFFkdSrZjzS+LZ5uxFDKINe3KMZFeTLqCvFtN22cnbhDRibA0l8g6b+gXu5cKrSP1BuPEUVS4gjbpAc9awKowqpcYQw2+Py6rzU7vHu0DekHblRCaOXL/9M/amYKZc+OjUWGXz438KWVPGTG1fYcxZY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712909363; c=relaxed/simple;
	bh=DdOB5ttZX6SCX5zUuMpWjQCrWqx8BpdTfeSf1UOJUR0=;
	h=To:Subject:From:Message-Id:Date; b=QctAHn81NPLZLQfXoLUgbfCJSQW9B0KWjDG55iux/4GBeeyizjzS1Q1wGjwxbFuJ6vGq1jvedAmQ0Ykf9Cy5KL1BtGDHjP3vGOWNiRySdOEhC6cG/Dn+671WgkXdGsqTYCvNG8cXhgNskvIm+RFYlExnFTHhoIwBqYNKVniq9uQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pYWOYs3u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pYWOYs3u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD050C113CC
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 08:09:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712909362;
	bh=DdOB5ttZX6SCX5zUuMpWjQCrWqx8BpdTfeSf1UOJUR0=;
	h=To:Subject:From:Date:From;
	b=pYWOYs3uT2mmWMRy4dH4nfhuQqrbTUF61DV6WD8B6OuXOmjPlw+Xbyf4Wai5InOYD
	 ItMk97TH9MIbIMBvlw9yKBPcGsXFlx1pQn/W82oCuTrSDgfl8xtQ3t/cAeaGO/4/JX
	 XkIAp4jVlxFvcADUP3k3C7EuQ8AvlSehJXyIJuTVn4cKa24+l7cW3Ifsy8REgW4hKy
	 0T6Mt+YrlHpoBYbHJWaJ/P99b6DKM6WL3ymcSo/9jWRuP/kI9zkrZfFAT9NfxaKbfU
	 bYP/5p02K7lySi/+glVJbei4EovLrll03P3zuJYydWx/PDO1w1g+mjO0RpDRxjLHlu
	 bkf2pYqzyz+YQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE4C1C4345F
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 08:09:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171290936275.8112.10681668589861989143.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e99bd66d48c0c27495f3479c136f20420ca2b5d5337bbb39f3746e37a6d8a668
Date: Fri, 12 Apr 2024 08:09:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712909362
