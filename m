Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32F77401A02
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 10:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778065054; cv=none; b=lqO8g9Hnp0YjLmulC5ozjwnTTNHRntDeBbzcsN/W4Lh/zmbTpNb3b6imsmze6SmztPeKV6xhJeFbzpBUPrnCli0N1JmeN60i4Fy288bdMthPDuhVLcFyloSEajgVq4WgaR/azpCVrDYENsWkgvdhcB3yaIQSY2dyv1mljN1jRak=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778065054; c=relaxed/simple;
	bh=4psdWVyT5J16/sybS2kO+B2ASmurvn4somQlKBolCVY=;
	h=To:Subject:From:Message-Id:Date; b=dK8ZMwhk8M0Gw0uEPQbqkXuXuVcEi29lXo6o8UVwBvuP2A+XGz8AKgQKY/Tg8n6h5nZghbfNo5VACZMPrIvrnyvhspQBQjTeax41pMMUMBV1QDvrKX3IbBlktenMUXyYAYOw0gWKgyjnZgJSpk6oKaCW6eaywMRn+665KCj8qsE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZbiGW/rm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZbiGW/rm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9E28C2BCB8
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 10:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778065053;
	bh=4psdWVyT5J16/sybS2kO+B2ASmurvn4somQlKBolCVY=;
	h=To:Subject:From:Date:From;
	b=ZbiGW/rmbI5X+C5sv0qHnkfBDIXbrWoFUndNeY+/hbEq/uKh4GpE+SxP8WNyvwVb5
	 HQ5BGK+jnQQP8qZGThoMBADfSSWSYLUjTIC+pFdADdPou1nAWn1AL71aqTItUN2y0F
	 7ViZ0ucTB7ZUYuvZlxKEWPW9TuPwmvW7duQNzRTpFdc20xk/5wOkaVE31E8TX+1rmP
	 MT1CqyWu91kCRDSFfdSH/Ilkgmg9fYlddzFBSCh1/OXITSvH17ZjR9659qgg0QpxXZ
	 ZhvqH/Nf0IoNCUegVC0ceSr5CDj/y8qx3wjl3SRKhVlZRTZ827atArlrroE425Hgsy
	 MYad5S5tLssMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA700CD3436
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 10:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177806505368.18106.4858765308009511682.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a4e7a6ace48042be593a3a2362f087a3399c10f0b92ee9ae14ae41a9a080d8b
Date: Wed, 06 May 2026 10:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778065053
