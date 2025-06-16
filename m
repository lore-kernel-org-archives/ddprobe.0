Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D2971BC3F
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750036795; cv=none; b=F6/vRFUXWJ7n+WK+qdc+8fvea/HbyqA48o9zP+F2PmhWAAPsHxWs6s9qcZhEe6BeV6pYhhNWpk9hJfW/aVzfd0jL1jZsI/gEtD0/O1YMTPEnOAhdKeXdzlsemYLEyZgqx+yZ/JoBg+rA37wLgAEe4eUfXHlsL8snMzPJfVFQ4lw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750036795; c=relaxed/simple;
	bh=80iASW7o4AUOkVtdVPYL1gJQxeHqd2lCY8r04vylHGo=;
	h=To:Subject:From:Message-Id:Date; b=qJ1O8IUrwxNv+8OHd399djruqw1ISRZaIrU+NZGn6HiNdTdPUWmNeu8wdbiOCVNjKaMUwTjdQT4LHI6IZzPp5P2Pxop5canm14M48HBB4svmvZn8Tf6a9B76Lh3n2pKtDwvjx1AMUd3qnE7pYpLDZbWxjt1DkVRPIOR3qbCKe1M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sK2n3riH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sK2n3riH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA044C4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750036793;
	bh=80iASW7o4AUOkVtdVPYL1gJQxeHqd2lCY8r04vylHGo=;
	h=To:Subject:From:Date:From;
	b=sK2n3riHI7Pve+T1RQwVvs2Csk3GQBb4b70CMpCInirzvZEx3y0xSvytLIp/yWgZz
	 2TRSzZVx0ALGEZA5QKtubfgtNCguWMqT6Pif2UMngZ9bNL88I2VajoVtvQakbHkCzC
	 d9TBgtYlhVqz1PJwMbR0VkCH0HBtMpR3o2xbAVurvah1wCxWd2QAnjfGGYRxjLnL1O
	 4SOoQXslMhrgGG78ddjheBD+EXyNFrPp7JcYQY9i12bodyQQR1i2JyQMXqE4frA8D7
	 KPBP5Daw3uxf9Au8iyNcY/W8eFMXYmQGBL9XW7HqW2DlWLwnPoVMFB+3tASHngSilr
	 ZuvmOerKY+1Pw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E822C71135
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175003679362.9356.2440734809421086499.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: deef20d73e04b70f04ca0a0b26ca56d390e24af3a2ac7ab33f8e3dbe6634e1ce
Date: Mon, 16 Jun 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750036793
