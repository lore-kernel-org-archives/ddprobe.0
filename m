Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7396C748F
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 05:55:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720072523; cv=none; b=anKHdTcjAyNg2j9M9Wg+liqztzmJWp0+l3GR6h4tZ2sO2ybNE6CYLYUgmejOgTKh/DDcqD9lJYb2XRDf5fRJlNzt07vGLfXzpTDE7XhJnLstwwNLF17fD3JoceG+GL0b6GlR61raO+tBBwRJM4l/D/6DqOTkTAndi+N4NaZ5zc0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720072523; c=relaxed/simple;
	bh=26m1g95sIAjuFitIOJIoGmFlTfX4FlzQAC7jWZFF8EU=;
	h=To:Subject:From:Message-Id:Date; b=tT/pmXTO5xp9sxfWCfiKVO4Qt1RVcjNSDO3o3KydKxRmvRH2xqmpU6nXfMa3dtXtkRtBKxTJCYq3Rv1XbDxLz3/9CyaiFamZGE+UfeJ2C/pFBicOHshSgkUGpTXnqrPjlVufW+b//eoWe1PTPNoudXBf6BKhR7Zidv8F+NFxgvs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jn/KKPba; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jn/KKPba"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8FACC32781
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 05:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720072522;
	bh=26m1g95sIAjuFitIOJIoGmFlTfX4FlzQAC7jWZFF8EU=;
	h=To:Subject:From:Date:From;
	b=jn/KKPbaCxFpnIdo3yMyNuHV3vrZJKFy1Lq+iw0R6g3r+kJ0nyYwWaOkn0A2XxmCg
	 RapXB96cJft3tGgAS+MJeJC7kLEihwY4N86SfI8WEQYbeiEQMxdes1cVlB3olQ2WhI
	 DD57AAzsm1E8kvlBGIIab4Aexn2NqPlcOwzqrICEfttgWTTKoiWstvr+qjjnscyxO7
	 nizQ8+OFb/rrys1f0F+BtyEKm4zZmnb+QZfuL7rdYibJvhWUmGbZVorT1BtvuPVTFf
	 wZ+PDmHn8yLL1vTvxBwpns/UCvixRIqNCcyuLgAmI9cNsYKFmfMv0SMwJM4316odut
	 jJDDwpgJ1Lajg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C15D2C30653
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 05:55:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172007252278.22637.12186601277612556913.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7301530a16fa21222833bcfd37a39195882abde67e6c8aa4e643d61c9c754414
Date: Thu, 04 Jul 2024 05:55:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720072522
