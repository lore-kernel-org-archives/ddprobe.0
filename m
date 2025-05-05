Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E8C113A87C
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746407394; cv=none; b=BDO23pVF/4AprXFdFRyiyYIfQ94AiaGspDyD1IMTgBDfHk0QcMo9UX71zhivQ0t2djjidbkan9aCGs+lpXSH3sjH+4MUE2ZY6cOH1DkcaVcuQB1/tixeSfwQMMgd4NLpfSOre1S8QQjuZp+aB3DvfbNSFALM28TBiZr+hGeWHwc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746407394; c=relaxed/simple;
	bh=1wkMNEUoM7iu8rsQYBwsb/Qhr0CAJFXN7bSjpxwjcvA=;
	h=To:Subject:From:Message-Id:Date; b=HQzuvr9y22S/0M78ZworMqlwz/pQ2t75oqbwiJIDnN3VY9qFwopI4AIGiMzDcBC0ramYxoJ23lH3bS2S1M79aE1+qi13aieYFfs/+nWM5oCHGU5stBuv6P8IHH8LwSqIPRMC0C+LZEUxIpwX2roIuNhWbEYuNTU1OIspWp4WHNo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gPFl7MWl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gPFl7MWl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A679FC4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746407393;
	bh=1wkMNEUoM7iu8rsQYBwsb/Qhr0CAJFXN7bSjpxwjcvA=;
	h=To:Subject:From:Date:From;
	b=gPFl7MWlrqALIE2gNcsbT6bjhoeMby7jgAdiAvR13erKLqCVOBzZ5mTV8/4ijZcw8
	 mlOLj0FuBSkO9eqcdayGVkdnqeq7Mgn9jZf/aXb0kHmbFgIWLz80xBcDwc25taUceg
	 AEiFGKmE4hFlBWtx4Q1uyHCHLbyXhxJROtcmPqd1Y0A4vekJNFie1WA/kDWga3C413
	 rmq9odSQt/7KVP5DXqdVH0QR+IN18dbO7dT5SHGQro36QpIg6c6WYEZwGWwTJCs49H
	 p3ELJ4qRaYCr4tn5A2D9YGVZ/00uvb/G466A+MIB2RjNEUHmyKXNxVbaHtFEYI+3Bg
	 zAPSpAMsAHsCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92034C369DC
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174640739357.29581.13741522494968171344.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51338cf3167506c49628c42ac9b3b594423d5988fc6a8e9db2b2998840008fc6
Date: Mon, 05 May 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746407393
