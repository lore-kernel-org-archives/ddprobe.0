Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2583B26A1AA
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753775994; cv=none; b=Q6R8hXkmThiqRJffapE5/bu+j1qQmYnFpQHDEht1aK+n0otrZ24koABO6j633F7VxbNgblBtsHun2RhLTz/MesQ4ftS0o4kCZJXzBofuW1Vt19fwRwXvGerQOL854CBHM6fVikYzpt++wiigf60GeSBZPl8JJunUmeU7ovT3Z5U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753775994; c=relaxed/simple;
	bh=boYjx1Cea93aQIvqHu7qRTcS/ECq42qhYOnzpcNXR4M=;
	h=To:Subject:From:Message-Id:Date; b=Dxhs9jDSgWbAX8gnfLLIZJ9jNXtNfiVkUWhuiiraQc1UAvTBQaKPIjwnSb3uQ7OftOFfeyGrJEMap0nBSe0Y+wha6xgIs+1dCNaBsNAoFWFTAndp4vOHbavfGsBlzCcAvzu0BqJGnKN1Y54POLi2acRNrTg7eHYoOC4CUZoo5rY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HxNPusEG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HxNPusEG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D635C4CEEF
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753775993;
	bh=boYjx1Cea93aQIvqHu7qRTcS/ECq42qhYOnzpcNXR4M=;
	h=To:Subject:From:Date:From;
	b=HxNPusEGBTcSKPCsTc1PDOYsT2/TOrcVtJlXYhn5Clg2jIv58xp2wd1CpJHXr++HY
	 GXYW3hesWUmEeg5pTLPtLOLipEOOVbjGimkMVu+3ri9fWdHKAhnW0uZmLphx089za2
	 bBrEoXIeZwoSTCTXiv++IQLNjhG1sd1hPSx1tFkM+G5lmyue+GHttYK0tb4XSHZa04
	 HF0sgMxsyOOEUCd8xe/R6066ddcftO+/oclRmk2N+FSER92gSxP5jGOGnPHZvDtAxb
	 sMB4lZEQzBbbT8i4R8F7ZshXPHpyCraR5eq3PSn1yc0mi6qN6uBt6lSh92ZwjqD2Lp
	 gznd/vb7DmS+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DF4DC83F26
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175377599357.20487.13836037250779030115.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e0947c546b43bf0881175e82282cf899d95c1d350e82b9903a64ece96afa9df
Date: Tue, 29 Jul 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753775993
