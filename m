Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02140334368
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762275594; cv=none; b=iHXagHJON+9yETGoeH3VjAWy/HaCekMm/yrQOKoXMIV2dXZwh2hNQ2qt/JuIEE7NKqqfODeed0UIaFAitOCLexMFNBdL6YS9mkWCYpOAcoxcuCgO8HyZZe1KX3jJIWq/fyOyISlbcReF5p/PteMJ0LXviM9ohzCdH4s44rY9BLs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762275594; c=relaxed/simple;
	bh=vdsMgMIiF1iEAP/7AlppP0MDDkDkbsspxRiS6dbt2uo=;
	h=To:Subject:From:Message-Id:Date; b=eNUahRTYFY8lmBzJW009fSf8ZNNWabuYgAa5Nuwa3DPqTLYlT7GZhru0Dh3j82rtl1jewkcWbai72CQ7ZNbeY0YZbTrI5qze+CYcQ/jDex66ldMq5wSsmQmaAuLNCl11vvoSPGAo0SpYM7e7V1OtBW0bJp5Bjlyc98khZ6QiskQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ww6AXc5A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ww6AXc5A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B38DC116C6
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762275593;
	bh=vdsMgMIiF1iEAP/7AlppP0MDDkDkbsspxRiS6dbt2uo=;
	h=To:Subject:From:Date:From;
	b=Ww6AXc5AgFi/hoVgGFweGMOIb0HHa3+TAlgsJ755E6Bqjkd/fkvYl7SXgDRB7E7/K
	 islE8ERvRl50ohGSWLIT99R4DHi6cN0UVmlWlyyyjpzAt0+qqIvHMAr/ytbJDK7X4B
	 tkKIDAwOREnL/ocil5zyWHEARJP3i7nCYr056rD9SpC7+LcPUC+cJxG0fCTx6hPVee
	 IkBfOcqzLKCQ+7t/FXcyg8GnICEYzaYhW88HS9UOt1SSc4feYt1sli5bRxG8/SzgDF
	 lUmxhcsXFQ692JbXD8bjLYMnH15MCefoaAHBVwvajK+4yqtF9M+Xk2WTti5vVGuw7s
	 kwf6+05Op8U7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC3ACCFA07
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176227559357.5195.14977224349561150090.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4c24a31dafd626e8dfcbfad39d3436c9e42d4e0a7cdcbe87a27092933222257
Date: Tue, 04 Nov 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762275593
