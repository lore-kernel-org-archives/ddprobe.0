Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F105A817
	for <ddprobe@lists.linux.dev>; Mon, 30 Dec 2024 08:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735547754; cv=none; b=RtBVP9l5gPo4oeSopZ4bGlodtATp1K7sbNDmngQ3vAfYb5jceL2tPeIH9hfm6Dzw461tM910faRDKm8+dKqyYxHiNOSHi1Eb2c6/13M3k/lurxUix0/GhZhELi9y+Nio5ynX6zIj7DoINGxmB/Yn0dMX1LY7jmOyWC5yydvUZ6c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735547754; c=relaxed/simple;
	bh=gp0Cqb6gsb1N2kf5VjsNl0ncfJ/+7du6jTr7vWHwqos=;
	h=To:Subject:From:Message-Id:Date; b=inY/rp/EKVDGrIR58qEuFHzM2Ht64FS05kN1kw2+RnFEyYBDnR4JNjDXHLeyWm2/IUu7gbGL03QUhlYahgmWy5rsD4onXzgna2vhJwv/1bJhZU/wYskhn359H9SikxDaOotRCogxZT7fPuVTfcukbru91Bp7DUXK3ws5nAyAWKg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wd4mhwXT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wd4mhwXT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A73A6C4CED6
	for <ddprobe@lists.linux.dev>; Mon, 30 Dec 2024 08:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735547753;
	bh=gp0Cqb6gsb1N2kf5VjsNl0ncfJ/+7du6jTr7vWHwqos=;
	h=To:Subject:From:Date:From;
	b=Wd4mhwXT4Zw8/vnjtPRyswvErcmtxaGml4gdzgfk/69N/0zJJBOWu0hHX0ac6zPHb
	 uLeVZqjAxxoY0ykwQyQ8OSuu48Vvhjmd3jjkjm3b9cs7CTdPfkXL7fhpvfb/WbpUfC
	 +HMoypnxGxY7a90Saq66Jsphh87GzxSgB7hQDBup+ducSS6FtnGj6JVGSwmM3TmXqQ
	 90UvtfXwcf7qk2aEJS4G0t6IdDbxpY+H94UHeqbj5yvaXdvKs3134+boQf1ZeoCZWQ
	 YYoncriyQLmmein3Bt/tDvhpwc1zKM5fWqsQc1PSaylZPfXu2t/lJQiXegqJdKEWEf
	 5nkngnRFopqmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96749E77188
	for <ddprobe@lists.linux.dev>; Mon, 30 Dec 2024 08:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173554775360.21184.5813868258442785763.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf8d10fc62b511a514a5168adb23fbc05a1a7bfb7904254da8eda6c0cfc630c5
Date: Mon, 30 Dec 2024 08:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735547753
