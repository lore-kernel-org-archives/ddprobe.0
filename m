Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F38F629
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 00:29:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713227363; cv=none; b=oiGDhWaGol7h3mSHiSuDEA41AIMJ3PFegT10KNE8POrQK9e/wanMZTjhmMFcWb4Jzrl3SH4m7nmXs1aQSELqIujOEU2PJbvJD0oPzHyOvVhPZCDlkygQhpqVWI1ejrodWFgbkMPVgkmeJfKyMbMkT2xyC+rKCjLMFGmRZB7bVeA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713227363; c=relaxed/simple;
	bh=n5ftL4/Wp5vXiWDXkdRARwINHNGAA4Scgnl26/88tms=;
	h=To:Subject:From:Message-Id:Date; b=LihHnmgfcrx0FBnSN0SnD1yQTC4KQjOgT7JGLB9dQLITJkzICj+H1/QY3CtzSWaXU6kd8GsFHQ+gYdGc6T5SGaPY9of/89YllOXAyKrKeeSdhza/Lm0PgQtUFAkgMkPa4XCIy6AGqLzr5RHvsxk3aKeeU+2RCF+3CYt8Ugo0f6I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P25e8erw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P25e8erw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E48B2C113CC
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 00:29:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713227362;
	bh=n5ftL4/Wp5vXiWDXkdRARwINHNGAA4Scgnl26/88tms=;
	h=To:Subject:From:Date:From;
	b=P25e8erwZOraQnnIhwwpXbYDLTbXHdXNofPI6Byw9rRavpQfTGRASYPlrYdWhXC65
	 o1c26AVfPn6b6iFYBELgL3uoMYlHEtsCbp0zrYqekl3sa9/mQB1Rk43/do3sG5a6yO
	 QAm6KlfPlUJywNBhOcVJKA2tukbMZuTv8cgbEhzsf0XqOvWRkwP9MjpL856MAAzCWN
	 SvpMgwTU6Ov6c31Cri5LCe4/1+fggs6OJYUDKkEmIEVqwMPMYVpo/piigicAdVXceO
	 Y7VDRsDlIY13JPUo2bjNcrn+qB6+7ehfJgxrax5IUjEAS4Jokam4FsmvFnsgISvaEg
	 ANBj+86iQKLPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D0C98C4345F
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 00:29:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171322736284.7717.4108950086959186191.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38a4e53cdfab9a8370ee551209a9e38ede16ef8da5163c66a18c132c24fec93a
Date: Tue, 16 Apr 2024 00:29:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713227362
