Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D6162DE1E5
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756582194; cv=none; b=EIMpy9/lLmi243G1IT3/m5QTtX2KJO1oCFgzZSqafD6l71tbFAsmasAz/nEBRCvgpTXWOsqmsDt15uQjxE9NOzVfV/+6ICtP9619wXNSQkymbZlwoNb8GLUTQ2NJ3ybLHSYdwDybijS5STffxsfhNP4Tlzcrz/lYCbEy3S69sW8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756582194; c=relaxed/simple;
	bh=AIAyjaFm1haC9yqSRmYkZ12m7x0SM9rVlg3VF0RR77k=;
	h=To:Subject:From:Message-Id:Date; b=Ru3WDPoq5rTytV+oL8ok06hW1iSzIM3hNcKJ5eunJ80N3A9saaKfe/leWdONLTNO1S7/NMLAGcbRi8EQlDVuxJgVYaR3DF+F7G02NpTC7dD3ydMFZO2pkrIIcF3qkr6RPeaFKMrngVynNCeDnvWSjRx+UCxM7pdHixH3oydYCPo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=duu4Y+Gp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="duu4Y+Gp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0918C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756582193;
	bh=AIAyjaFm1haC9yqSRmYkZ12m7x0SM9rVlg3VF0RR77k=;
	h=To:Subject:From:Date:From;
	b=duu4Y+Gp7z+K8qr6ksdritnqb8s7dPc1kI3K1EPqwPMy67ijk8dGzOlijZF+71dfU
	 9JAqYFYiArEKWxKgreQo0Ep/khtycRXcCLitYtriWiqWxBxt7QTEGKk5Smm2Qda9uA
	 DKk9wQPP5UhaR7f/dfbdjiPjvkYWlTqAzTh1qvP3J+kTFDmMSNnWRyy2gFvsR7JUVJ
	 AFWZIkWn4mj8ESIX/WFJ7n2ARJqWct+/dMUWbUJWec76j6he66TNSX1jVrdUSh4KPN
	 ksVlY4P/OllRZTRTqh5WC83OJVGmeh7kGocetYNnCeFlsz/9qAguXjxgAIu081Tppt
	 /0Jt5of2WKh6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F750CA0FFF
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175658219357.2336.18276954723650606686.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0d9cdbd2519b00f9f32951792419d2a43d1bf492964e0118dec429421144649
Date: Sat, 30 Aug 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756582193
