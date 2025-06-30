Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 160AA23506D
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751326194; cv=none; b=fuJxSNlq+wmYqnxxsOCp1kGDcuuj6U53qWH+jWaN3L26XXtYX/X0lAFNrlYs/necR5Y+GLy73zUlgM/dQRot7s6VwJpGUOuAa6icI5Pzl4YXfi70B2QgZnNK/3FZzjYIwdt6tVywnsnvsKjrQKryciKzJ+tCdzSP6lnsUyWED4w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751326194; c=relaxed/simple;
	bh=Uaq3A0722EeL0fyMkJkZmHJt9fwZSZ5ZrZcRPm0A9Zo=;
	h=To:Subject:From:Message-Id:Date; b=rHM25mqRd7YZnO0tu85fjIJ7Jngl9wt52fjVCBNqgD4WO+jzX5KndTAOM/uVd9dFfinmavaKvNDH0Ri68a7Ch92S2pz/a8gpTuruUBKscND3m/VnRaiP11P25VEhliE2vjryvPWvnm/f6BtMtckJFNbMTQdmGvp/qXVBZRIfLYY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HB/TEm0p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HB/TEm0p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0FE1C4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751326193;
	bh=Uaq3A0722EeL0fyMkJkZmHJt9fwZSZ5ZrZcRPm0A9Zo=;
	h=To:Subject:From:Date:From;
	b=HB/TEm0ppKr6gMzA9A+DGj1pbfUL2Ffpl9/sUDkPF092WY1URocElvGhbvpfBnZuJ
	 spit3wBwQHPfQGlMUow0KNRdycATULMWErj5a0fSfep4s/9jVLL1t6KHRVY/aANpMU
	 F6tE7GmeFBnkSq1+pJHC6IS9W1J46KFHeIEREgGW+2M34wO2zpDKazhPeloc4tNDQm
	 Vd7KmVgyWQjRB8Gzp0NjnbmtowYoS1F6mxYJyhju8WnjeysZ4vMKZwG1JxpxKjXswh
	 rSeBbGaWP/TbTVXgnNpCfRqCMIlv55rlBqP1A853ksGrpxP0Mls6zdQK9rHEjlwPlV
	 q7axhw/gTbRAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E673C8302F
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175132619357.12632.6622502713508608092.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dbd8e2c5d84015b9679410c9e1e0e23ca6ab87a4eeac855a35a98a7cb7205256
Date: Mon, 30 Jun 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751326193
