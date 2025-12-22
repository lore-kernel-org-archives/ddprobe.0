Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14C18A937
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 19:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766431434; cv=none; b=JCFs16NuIDye+TdKb2bRJ+7eqyEKqeefGRLmYmdew5p9ywIBFvGQN4NEW5Udx4B1wZ8UTimmgM2Gnm8G7HL5PkWp6kzR3MUm/CrUzx3nGiqwok5BZIxg9OfpLocclpVhjg1ENr/V+Wl8dUpd8DXdibSjTXUzc4OosJsoL6JGQtY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766431434; c=relaxed/simple;
	bh=poxaZhUls/AjCHk9CygIkq9oRrmBIdb0Jer2JpdtMhY=;
	h=To:Subject:From:Message-Id:Date; b=ZorHR6qRmaMmxHAiPudT38BpBqa1zoXjCgyJf0FITySU2sS3FsVvCBcgXh+DS9LUqiZQl7HqcWZBnOVt5fQKMEjr4CVRVSkXnmIAFjxOjD7mALNhrHXIw3qIJ8BIj2zBG3xSFVd4GnWWTrA7BYMpMwt5Rp32J41X9B9RUECo+KQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZEkGxBQY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZEkGxBQY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1C8FC4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 19:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766431433;
	bh=poxaZhUls/AjCHk9CygIkq9oRrmBIdb0Jer2JpdtMhY=;
	h=To:Subject:From:Date:From;
	b=ZEkGxBQY0eTEg5xFlnunyVSEMM7MMkh79MdQkbexzKTTywaKFIG4FblYkMgu2uHC4
	 IY550HYPd4Hs/rkO4yMBvVkxo2W+SRO6Zsm8z63hvF0+ouk4udgGNcqD8holJ/rPdc
	 txbxrMp5AtCtGz2wFcqD/kFXlQ01enrXyTiaa8BHrCFvuUPKa1lVIBYLDtjqwaWbCt
	 DB/kcV0wupBviY6czv0J5OuNtCYQu8jolsebcWAITvm5pr9onatDHnQOBqrY2C2+m2
	 0Skp7viEA+ODvqpLrqmCgJLtYW5XtOFMfud19lngWyEjuU/U8SG6aBuyK8D6m/CG3h
	 RJ+cNvHye27Rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B18E67815
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 19:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176643143357.18432.10174352540809408622.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b175fbfa35a475b6956a0963d1a6c8b03d9f88f32f2f798134d3f349fc2a5050
Date: Mon, 22 Dec 2025 19:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766431433
