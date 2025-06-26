Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 167E01CAA79
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750910395; cv=none; b=r7+IsUKFjsl7bglRV4LhgeG8hW3mIxq3q6Kw/Ka52mg4aFAi0AKbLCrqPmL+N3ccskbiBNrn+ndNcDaKPS3I2mD8EkB3MVtXBeTdhgzqRN8kp9pJYZXV4sFEYu667Me2BdX/txzFMj00x06g8Bj1gP/iCdoTEz5FgTonLRv3s9Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750910395; c=relaxed/simple;
	bh=3kh12dHrv43y+et502oXM91JU8aYymIlvntR5UHy3gw=;
	h=To:Subject:From:Message-Id:Date; b=NWBn82cN0VpNn9Zhn0q1OgvCPtG8qI8Pdi+pqS0zoP1H+NXtpTAwoe+5NxkUTNWV3gVf/FC2Mv5VV9gBqLtHQrlTXVVEjhin80gMjvT3s2Y+bADGwNhvfDbWGeO0rMuBcE4wifM0GQyes78hgP+nNOwSdBzEuE2/0YifRgQQsSw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GCgz5UEp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GCgz5UEp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EFBAC4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750910393;
	bh=3kh12dHrv43y+et502oXM91JU8aYymIlvntR5UHy3gw=;
	h=To:Subject:From:Date:From;
	b=GCgz5UEpDpprwGuKPNv2coDeg8Jm7VGin+qVV60SLglOnAQICdkNAoyeLnv7va9dw
	 5U5H22TmL6WRoS0KJ59rE0Aet0U3AXPXiS3X8u5qifxTCLtRM1tMtgmkYaiv2Pq1fj
	 ltCLg52DpAA6ActBSBy463GPD35/x4oK9sxRqSZoKFdxDBbEd/qAx2OzVZ4FVIMEo5
	 u4kacxDuYWxhWeB1cUki4f9WmZqN2LEd4lHWtQTpZoCFc1JlbX/C8SQi5brC5FPDGv
	 YLuQhuTP4IkTOhWKlL3U/EU6XOWpiYTlEm96R+i3ykPzw4fUr4FVk+wxSiYjEYXjDv
	 QpeHllFD7Zrrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED41C77B7F
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175091039357.15186.2568812101364462540.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67b5e4736da6b45280d895dee89e88c147c3a05186ac84307c8f4628e3c65db7
Date: Thu, 26 Jun 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750910393
