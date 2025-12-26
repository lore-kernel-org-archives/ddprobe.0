Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C5F9308F35
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 22:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766787234; cv=none; b=K2Y8X+cuQl34LfyjDifZA55X+qXGeXEQ7mQ0H73xLZxHJulR4kLbwtayHakoTox8v3WikVcWzbc84JKUdhQr7AzZdZ2NCN168lmDuXM4YvqKP48PSIm8T4uLak/Xt+ADwsVWD4nyGTFoeOiqGTqihqk+GdTQBA0Ar4uJ3YlFusw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766787234; c=relaxed/simple;
	bh=2LFbGGFlmt4djtxWPpGgmLjtbyVnag+V/5Dsc+6f3PU=;
	h=To:Subject:From:Message-Id:Date; b=eg0RwqfBqZAmwZWVvVqHfU1FClrs9ZvgwHu1paV2rrRPFLyx+PvRsE0au5UcshS0mr3EGpqmsOGDMiVI7qMt9QK5zIKgQR+ykfJ6XGgq+FJ9DTcYVULRJYrnw+3AUaMJjlciEmc1yZTnsa1Xn43l/IJ7FzdyuezPRm0pQPydEvo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W0tE1rHg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W0tE1rHg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9F45C116B1
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 22:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766787233;
	bh=2LFbGGFlmt4djtxWPpGgmLjtbyVnag+V/5Dsc+6f3PU=;
	h=To:Subject:From:Date:From;
	b=W0tE1rHgEO+YnwoNzeeVrnYZEHPAsb2L+cdLBjjTeo2YRS7s+0mpb1OYjSQwi+VnF
	 fU6a8O3We/joAQZWY3mJY1hX9puEA1Hf9Syw8W8aFjB4B+XYUoxSHhw2S9fZEVBUGo
	 MtBMOQKnsToiF8iFUY7XLOnZHpeA3IwHulCqM2cF5b+RVhik1ASOglFIrGU3HxZwz9
	 TijbOPQaO6fwke5/tzGTQ31VBOMNGZyleRlVT2OiDBSooHjdvqDqlSuLIOogJvE7Pz
	 7d1xEu4I0290VU8MokqPD8SUn6vfuoXnExgJVogHQrSvUlSXjGduAjDCR69M7H8SKH
	 X78HZ40kBcQiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9552CE8FDB8
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 22:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176678723359.9516.1763033837494981530.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3edbfd053efe8778bc4a32ce928709ba94adbc1e9ed13b4ff15c8b4d6da37e03
Date: Fri, 26 Dec 2025 22:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766787233
