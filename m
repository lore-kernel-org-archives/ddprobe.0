Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FF05369229
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 05:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772775894; cv=none; b=D6exPS3mNih6NCXhoJnt/oT0ArKncEs+m+hpzbDy23TcRDFgSxVF2qMWUjJHFwCrPWj/JgBl9ambY16oF2MgeNw86Qc1dk8OFgFX+ei03qRtS9sHMdoL//h5Z1wnMjX+tcyIdHitlZFHb6jLBZaQZgKkLr7mFDpGg74bX412UxE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772775894; c=relaxed/simple;
	bh=3Gcr+Lp0KXCdY7qoornPTdDlWRkWdLot7fcwsBqJC7Y=;
	h=To:Subject:From:Message-Id:Date; b=e4z2TLvE0itx2eHzfJ7Gsu0Zg1wHDp6FOjY0CZ6Ttq233xVUCYF6luTzm+3bsZ7SfhREFyyICl3YQqfqWrjQhZzbdkv9NDVN4aCPbU1Q85XGHzN5GzOy325hJVwmbNzby7U+ec2ipa+m+AkbwFAXwoQaz8bsenv2IrctsZQZeUU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jkjodzWI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jkjodzWI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A232DC4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 05:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772775893;
	bh=3Gcr+Lp0KXCdY7qoornPTdDlWRkWdLot7fcwsBqJC7Y=;
	h=To:Subject:From:Date:From;
	b=jkjodzWI1y86ze/fUIUsIsT76kUk1QAExQGeVAKfeVlRcDtwiKwu5YPNULsBOhxl7
	 Tu8OiaBzlpVSchyh2zXsV4bXJqHupclju25/c7RvOy0Zk7VwGmXL7CyecMIwyth2Mj
	 k4voeocJef+zvR4gD7CKUWVIZ/0N4Q0HZf/MDadPCuMtPv0wQtLq9DUu5pR2L78jHI
	 L3GP856T0HZhQsmT26+QFnFdgAs6iMbOIQGHZL9SK/HyjBY4OSjtUeF8yv9PXWrpod
	 44NaFtykx2CADnk8Bs/26VHntXf5I9COs/nIHUEAvmQCBhs/w+/ouSZ28zfW7/kIaD
	 DXYNAE8M/AWdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F323F513F4
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 05:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177277589357.15119.7234351332519934870.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85127dcda96d428c1bb8b85f0803056c5c7afd853ef5de1f3c165ef027980e26
Date: Fri, 06 Mar 2026 05:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772775893
