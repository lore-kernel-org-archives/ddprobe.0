Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 156C2313E29
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 11:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767786834; cv=none; b=mpMsLqETVuA6x+NVUzEgRHrLwv/ErJ7tkNVSkttI+Pfbb8WFj6LS5gjcdJknZgeRoRvcTBYiJFuKL6ybynkx5EUKOCYCkKGznJKQUaO8es0k4SQJ7yml0DU8MjtMvu77owM4grXZPdTaGTxoS3ctd4BZizOAjE0XadrnBaNF+pI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767786834; c=relaxed/simple;
	bh=gQmrni6dS7GZgB2IHQuQfov7GFig0YHfJygdIxvkZI0=;
	h=To:Subject:From:Message-Id:Date; b=tMyDYdcuwnftNiERJ/6tBIQK1D9H2FizfDh/4iHlaRR2OO1Xqg3Ukk7Eu2LfnTsos6k6pXX48HvUUjA+QAyPv65wVWMnr4+Hc1u2DmRa216Z+M8yf1ce71lXEtluT3uAUjhKgyVL40pxjIiOXcbPgoN0p8h/2SH+qxC2wRO8MtM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bqBhCdOP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bqBhCdOP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F6F2C16AAE
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 11:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767786833;
	bh=gQmrni6dS7GZgB2IHQuQfov7GFig0YHfJygdIxvkZI0=;
	h=To:Subject:From:Date:From;
	b=bqBhCdOPtdIrGmijbh4Q851B7Df8c2y3AVEOrqmWo9s9act3a/xSWMS5OpNMM7zsw
	 6V5tc5SDvMWoufd3XbOEkm6PdVKRFE0nVoiUOZZ/9Nj8aymBDTH1Tkp77XH4e3f3dE
	 BoefVxotFWXgbPikN/oeWeyAWcyn+KkxaKHkxL3RtfhQKxItLgTjTaCDYCA6TBzdLn
	 NmAJsdiCx8atnPAOzHClmSSigGiiY3vI4RkShsKwWK4k4N4Xd3p/zUxJ18Jb4BrSkf
	 8SOzbeiMKzY8HRL9EQ2TORRbxwFELvALWwGduEvnDQ9ALJrWg9rPf7cWvDHyZmij4X
	 OzDRtOfJe8YLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F12FCD5854
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 11:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176778683357.5183.9695207323901999284.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: efa5299afbc0fbe67d8e0c46972ec729d13b21f8dc19723dc9481922e95dd83d
Date: Wed, 07 Jan 2026 11:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767786833
