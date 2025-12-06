Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 263E738D
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 05:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764998574; cv=none; b=rRKT8en9MRNfmzyjK30aJc4XaoQR+47Yazf14pfpNfGjqUvNm0+rYMJ13C1Is77KxPZi6ORIH0uX2sHTU3i+Ch/agXX20N4PHte1AU5Vs/0CIcUARZk4tlOK/Gy85Jd37ytcZ+Max0eYxFIts40pYA9pax7Nad7sJZwOa5K3RKY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764998574; c=relaxed/simple;
	bh=0dAXWcekwQH7UmB0Fn/QotlRDt3lIDcRxX6uv8wQRTQ=;
	h=To:Subject:From:Message-Id:Date; b=VFFlXTJlBMn/C5WI0573ANMhSv5hVEOZKqeH9gjA8jhYpceuB7jDMgKRgTZjcOLvqEEANeq3u1lQjIkR55hqGDK09orrU1RIhNMfuV6BVCs/1rNVqyaOf7LmteVpVPVKxxyRLEAcTO8xRFxOQYINQO7jsjk92L+/fJqbvKTNrA4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f2sI8pr6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f2sI8pr6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEE02C4CEF5
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 05:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764998573;
	bh=0dAXWcekwQH7UmB0Fn/QotlRDt3lIDcRxX6uv8wQRTQ=;
	h=To:Subject:From:Date:From;
	b=f2sI8pr6+wR/hOiUAwYON9EfVrlptHhwkQCiwbAzYOtUTYKRPN6S+tffDVN0d4PjL
	 QqW4fbgtnK++vA56qC1qQgP8e2R+/appbJoag6rW96bd8Z/XytteQmqiSnprbEwuoh
	 r1PEKkfHqzXzyPh7c86K0qoJV0yzvus+2ETE51z4bXLDtFpXGTa/cgJw6kSUSVcYwN
	 GMVZkAaDivoR1TkmnYJKUuB983U1/rVWK3s8lTttVL/jlXcOsuG8jdvBKO73DEgUFY
	 c0FSMYj5b2YbbQys9XyCFugh7pIfx6ZkVFSAKNBH7ObMo7GTLjazmkQhIDfEtQu6GE
	 jGuC5hxEN7vvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98775D12692
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 05:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176499857360.15715.16568176530871807557.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 973f92aff7dac2182c1b5bd51a66d42187a68076c59d82bd0ff986c7b74d8a0d
Date: Sat, 06 Dec 2025 05:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764998573
