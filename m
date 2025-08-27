Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15412246BC6
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756331394; cv=none; b=ja83Pil4Z7jLkYk9e40ANp+S4pFEp1PWPlEqNhmxRBj0FWdefYwG7gq6TxQQWCY4DuMdI+x6FlbmCXKfU+ZleXm9u8rIlKkxQyuQn/eX5LVD2xFCfEzi5FwcNcaf2kM0/hqXR8Sv9XwJ9kZKFpjPMchXfgEPPwaOIP1beh0tGlw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756331394; c=relaxed/simple;
	bh=pfbnWJ+XqFjjCRvQUy8Sp3qIVTGYRRoO/KIC/yJm8UE=;
	h=To:Subject:From:Message-Id:Date; b=EWe+mF5ALVRALVUH8OezL2hZ7wTarwWP25StbP/+98EI9ScHol/AZsLye1QIFzZQtc8BBoZ17gUOEvfV8gvNH+YfdJZBMghLmG2M7dOFH3WxhPUbqT8ImGO/8+qT0ydFKvSfD9Hk7vrYTFCHMn0pr0mCEysJCsLMOFk98/Gsg1U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A5izFbmw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A5izFbmw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DDD6C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756331393;
	bh=pfbnWJ+XqFjjCRvQUy8Sp3qIVTGYRRoO/KIC/yJm8UE=;
	h=To:Subject:From:Date:From;
	b=A5izFbmwXSPuN9ZlD5P+6glpFRX01EqqC8Lgi3y78bhICQThR1No8Pv6zV1lR9gjj
	 lYeOpCpWFK0gabmjQRHYNCC21ZDxnqbMInllCsSGiIfa8x+4rKhMscvcoeHWS10FaU
	 bWUdWQElbbVKXAdVQrDkT5lbZ5sT6/c31mIt7+OO6Z1oPRBDn47tWHi+1cDArzU6aG
	 08a2OgXOmCqdGKMHETQyoFaqDskEfsyY0SCYtpXplXlPAmFWTrjddkkyAqz/fkYauQ
	 74KIumRa/j7j6qocCxGpewEGMxBkRsIW+yfPkn/q3U2+yAId4TCg87dKlIJ+xsEu7H
	 ffFOXG3eU/spg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED2DCA0EFF
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175633139357.16910.17847727146886927233.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08b8e6797509f6c7869f5d0773ff20a508619e34470a32b967b1ac3fd0d345bb
Date: Wed, 27 Aug 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756331393
