Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4F02331A7A
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 09:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767606233; cv=none; b=QMlThAfoLZ3GWs/gDZr9AJJz8nHsvRg2d/NU3Y30+oAxMRHg2uoFsuDC2mJQ79KD2reLDSKPOtXbxvfkASiFhmKGVzfU6UFhcLlHweDXuxbMgdtgjvkJ7fwU5i37kWCrk31zHyKOrdQk0yljLmWThmKviM5DkNaxD5u0SaH1w0s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767606233; c=relaxed/simple;
	bh=BCF83JkkIz99f7cIEBMZJ9Cf3ovtP3ICO61a3li/2yM=;
	h=To:Subject:From:Message-Id:Date; b=BLHXXJh7FeeCiU5EpQsg3KSe0eDiFXKyV4aQNVhYaIinv8WinDe4NLaldUCGaGSYMBrTgb0z/k8AX/QKNZp/AxNurOmhdGqrGsUbXXSMLUQh1oZ/qtZtu6lK4SiL5Foodv0V8cGJOTtI90I6s+vuV1rSKLxzJvjFiOowxBHm42E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YlHySlvH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YlHySlvH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A18DAC116D0
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 09:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767606233;
	bh=BCF83JkkIz99f7cIEBMZJ9Cf3ovtP3ICO61a3li/2yM=;
	h=To:Subject:From:Date:From;
	b=YlHySlvHGQYTl5MFqjs5aDBBgNdbG64Hi+xcqT9GFPsO4MEudrPf4drxk86LOfLd2
	 W3V44J/Vpsv353+4j9NxOTJwx1leT/CczpNcMb+j8pLVK0nIydpvcMTLF0/rXtMVV3
	 Gz+oB5lTYBUq1nHyxj09+xgEiTZPgg9YxY5RygaNXD2QsyteV/S3QlPI1Ca2yaF8/w
	 DWM2w2uv3VxZtBOQFhLXNtsH/4UUglW+I8nRHcubXuxxiF/p0AtHsBkJy7y18epDr2
	 OXHTD8ImtTtbz/th4KSlJB97UkTjlmiiUjK6aZnc4jcjAYaR0nHTVyz3LpAU/DcR5H
	 MWVog5gbJH4dw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B30C2A07A
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 09:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176760623358.10263.12516597494639837626.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec6e94a24ab4aa4e9aedacab6d4fdba9302b9c1bfcf97130fe264fb0ad6bd101
Date: Mon, 05 Jan 2026 09:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767606233
