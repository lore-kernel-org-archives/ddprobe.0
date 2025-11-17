Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48D40202F7E
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 23:01:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763420514; cv=none; b=P0cBGuidF4uG8Ex/RBwDLG6xCmvmMBVKPhX8FGbun/gwyZpgzadDn+/uWsf76/GpE7U7bXXy/PsciGf/HQ/waV5wp5TvbYFyAweoQJs0ReKPjYj6L/41hilkwdKDgehuXanX9Ap1o423VbSWJnzcGd1Dfw4FUELTFHI1/miI118=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763420514; c=relaxed/simple;
	bh=Fcq5LZl9zseEIZQBdLs6XkVXSClUkPX3HUWt6bfrx9E=;
	h=To:Subject:From:Message-Id:Date; b=MOstMJWkUlfi2mS8h9OgJbSXfEZ7iR16NtOsJjqgUdaDDJ02G/cBB08CqIZryUxVOV2E3GyNiNdA0Q6gNjw087bdKzjwgp/njt+gKTG6Wtkf0zXOT5nFsTL8aBvLUET2KzrLk5EEYMHx5nqxmSLgxY5XlzgM4NrbtEwcdpxFZdM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kJx0LZPj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kJx0LZPj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4EE0C19424
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 23:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763420513;
	bh=Fcq5LZl9zseEIZQBdLs6XkVXSClUkPX3HUWt6bfrx9E=;
	h=To:Subject:From:Date:From;
	b=kJx0LZPj+lAEhvwQaudJqRlVPWmCIgsIXmWkDZIxQ8OlYk5cHouhTfs2hQZKdXbwV
	 qjWhxpDGDvm2j7ma10NpDow7HGIHx34qo4wDHtm1pVaWaHfJwfs/6KW07nH4rnFmN5
	 SnbigN8jN/3XiUmgksCEGipOCeKd5qvoB0HxjrkU9Fkb7iFvtsAkqfhNx0Zs8R4vUa
	 Ji05wwyPR6rF/20oHCO564oCCYp2J0c8WDaesqz2f4nc8iUNZQGWn+fQ/SzWAUT4FR
	 IPH+R6RWTC0fJvsN3khhv1cmHRH0BytHgjhod9eGClJ6Jdz7LyEB60Bb18rUdEuY5r
	 fUIThoGdMqWXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 948CCCE8D6B
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 23:01:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176342051358.27198.10456769529720422570.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48f2cb34ac4cfd0a3547d65360f9e01946ef3cea0e92d0dea525c43e150cea06
Date: Mon, 17 Nov 2025 23:01:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763420513
