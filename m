Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17C6A2C324D
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757662794; cv=none; b=ZmUOOQvIPT22R7+3NwAdQ66Rfuqy8h2bhVpDuSKXNPpVGhcJZ+GnfZYIlZGJ83nmU2XqwdfJqWxMNAiuuIwzX8t6J82l93mYC+8fD8VvTh3IB2uSPqZ0hOCYVKLyQ70e6Q/z9I74AZWWgSNhMg3S+bpNN63KbfTSslYQTvo11lI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757662794; c=relaxed/simple;
	bh=MzjZHEDsi8erOpAqqR9umhra9NgTMaANXS80zmdIDb4=;
	h=To:Subject:From:Message-Id:Date; b=jvIRQWErfsugKlVeT4v3mF/iudHPt4BplrgHWAyiHQYsliZ1TFrZKMx9ftK9oCdJpLk6CXJusT2KIOqyYayj43RJP0nw3ygMJTFtb2xPDRrZte00zZJsf7T99erysFqLIoSeyIrBvG9HOnQvZnXcKNstxSaZLgiYrsGo4fcyvyI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uwc7HCng; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uwc7HCng"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F15EC4CEF5
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757662793;
	bh=MzjZHEDsi8erOpAqqR9umhra9NgTMaANXS80zmdIDb4=;
	h=To:Subject:From:Date:From;
	b=uwc7HCng/93MZ67A3quNtHGheUBgxeUQQE6TYhmBYtPJ4Oi7PYE2UNBBdzJVfyWwA
	 i3HN8sfjJoSL4EqvGGF5gPdGKsrCFpBoxFn86DzBHg9gLdQOsHFTL30vjJgSdfp78y
	 3Wkph7MU7CIjSt6Wn1o0pz4OrrUwMBQr8mGT7FWy67/M4JW3UId9y0Cw2bQSjh+xQe
	 H4jeTzAlIM02JiEcdqrJ20VkgxcqShrJefP8iq3MBoQBMamNLD7DwMSsFRZdr2xUs3
	 7iYFSGNDku6arKXHuwXVLO1kNbzef+ZhB8nRUpuklGiCp6PWBH3wcLieJ25qcOMLRF
	 s+sg0J3Ol/TzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90066CAC582
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175766279358.17517.14396533787299163922.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd1c4c666ea85fbb678f47c9d234cedcd831fdddb58fbb99184f03e5d3aad439
Date: Fri, 12 Sep 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757662793
