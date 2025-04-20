Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E21E41DF98E
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745172594; cv=none; b=UaouRGgyG9YPN8kYALK9Q/wpcOjVsV6ir9c3wy7Dfa54xh3029sN1hj4M1rKIZrueQ+z8+F9fdYamYQJRvQgEkLxQEVRi9XcFI5otSJt1LKCBmB54zaT8INoI2XT184grBEklgDgNcl5mpN7S6eD6IuOJ2hgnlAzxcr6v36K+28=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745172594; c=relaxed/simple;
	bh=LoofdLSe9mXniXxufC99mcH7eUtc4SmyB0/XhYjzFf4=;
	h=To:Subject:From:Message-Id:Date; b=BX7DJDB35IIUU5yv0NEm0wTayFMwIzL62n7gGSFSwkGHVhJYe0O+GwCATyMjVaMghkIxMXVqegqVsQ1gdzokLpFtrf16ynT3zeaa6blGWd6Z9NyigRpsEooneluax+j/rFVK7Az8EhNPS1l2WPAB5FO7EBOssZetA5vVC7KAy6o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m3U/T1Mf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m3U/T1Mf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF454C4CEEA
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745172593;
	bh=LoofdLSe9mXniXxufC99mcH7eUtc4SmyB0/XhYjzFf4=;
	h=To:Subject:From:Date:From;
	b=m3U/T1MfsXv1DZDe9rD8VwRaOiprZxewuCDWaihsYjSIHNB/nci0yzA5Z3Mj+zWwk
	 3w9LIOApDr4mltIh2gVRlyjilbNTanZNxvqZMk4pn6KmLio91ardEFmmTaEnKRNr+C
	 cJgkLEqg71Ob/mLF6KWhXUVMSGn3GSVOQPwzsHvmPjHyV+WeRtbNtXywVR8MXPHRTe
	 +8FmIiF1902yksV8PBLuz6aKdGHsjUa+HvXXZgRerKWcRdYPurcXqU6m2wQRpZaPqw
	 pGqL8IQ0uT98HR3gXFLybMCGE43sFSPHk0E2m407mvtu03mN2MwB3/qXcgrsP+pntb
	 3Id1z76up0/hg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7BDCC369C2
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174517259367.7247.13059529545850745680.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5fce878ce5981bd099dcd04fc750bc71f603636a5d6e144554ded1315b2df73d
Date: Sun, 20 Apr 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745172593
