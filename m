Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3068C196C7C
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751255394; cv=none; b=nthWApYb6pzR5N39olu/iWGiJTMA0/wQKWpEp+aTMW9F2KhrYQDTMGNT462UX7tun5gMGXVaOJQkjvOFFHuuoWCCsSviQGTezpfZzoMN7pUv//c6JXU3wD6ffRa/1OUQ1+rMUCYuzqKh7S53F9OxaNpiCkj8F7quaTU5TzPrCV0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751255394; c=relaxed/simple;
	bh=SUfH7MZBzEGEY6zyku3ZO52T3KJB8CvuRaP/7oS7P0c=;
	h=To:Subject:From:Message-Id:Date; b=fYXp4uGeGgsdbm8KqVFBs/lQaN/BoaWbZR9DwFtw2WKy8sDZXfaAu6hSQs6CJbHPj19Q2wpkUfMoGaPixHXgZO2mXLemoJChXWqAzOOMhSi1v26lfmtfxITvP56rI1EOlpGS2C1ajw+6SgjiDR3WwuZN1Q8QEnqtI2g3Jz0ZNzQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tjBS1FMT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tjBS1FMT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D2D0C4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751255393;
	bh=SUfH7MZBzEGEY6zyku3ZO52T3KJB8CvuRaP/7oS7P0c=;
	h=To:Subject:From:Date:From;
	b=tjBS1FMTPEPgFDCiqy36gidqxmGi1+DSJz1UaK4sDUYEIU8kXgjsSvj2+8qqu6pUE
	 xQ0uuLMjcsex9uM82d3Tif4kC2z4RwtXfxbkN9OmsrLf3S4qHS3jLyBYMWyd7IUCYs
	 zrBqfYfcD0p37MkBqwGR5Lqsdh3pLEWl6dSB2llbCoru+X2Mrqq3cc0i3mRh2upRNS
	 4fsNHFxE10VGdemSIooYONNgkVCj6xYgFN92BSDk1VRpKnm4ufFVxTEBvuJHInooxk
	 6DfMmfluu9PbtfGi7SJvK0cW8i+mAo1796NscWSQPMyge31NCTUcWcDNAGxs6RkzNt
	 OdINWFTraTykQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F11FC7EE2A
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175125539357.15408.12046397945990203963.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d13901ef41fcb13b071b86a6c627165aff62bc9b6675cb5919e90e4d05e885e
Date: Mon, 30 Jun 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751255393
