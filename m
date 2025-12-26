Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BE1D2F872
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 18:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766774634; cv=none; b=ujPJSeMedN4MMaoLErAgeDhbAqPDvpbRm9ne+TpfXeAjgwgi7qNaHSyP54XfRM/JqyZTgpx9G7R2khXSiH5Xb8EB5jR3JxXUaU67IYt810C+iS+NklQlKvllh/XZuLdsVLa3yvhiEhfcmthUAAHyOMGEauCVKPmwDk5deMODclo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766774634; c=relaxed/simple;
	bh=mKad+mE0XmAThPg7XHKgenr0YwP8krQ8NVLDvPYXzJY=;
	h=To:Subject:From:Message-Id:Date; b=Md+CyYcnX2vEMzxim23Sf7SPx4YdXYDC+/XDDSuJsjAkxNNPKJSb+DJAqY444icR2QwZ/ZwMaX1pWnbtcCn2CmCgr6il6J0x+1dQxmT+wZL/tSdwPZVgkSq75xnIIlDoHMV/FHxkVJhdScaqhM4GtoUpGuYTrZEwn/K+T43kdyw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZFSLhe9n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZFSLhe9n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8C4DC116B1
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 18:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766774633;
	bh=mKad+mE0XmAThPg7XHKgenr0YwP8krQ8NVLDvPYXzJY=;
	h=To:Subject:From:Date:From;
	b=ZFSLhe9npyzswH6mLseCIILpN5RYNw00pNzYW89FvhExjqN+EbLUZxkG5I2uByaFZ
	 YaH4DIUqrblV+dHS4GF1v9nwxOaNQ0MrLj0Gwq2u002E5JvUoxXo64Iy4ZstS0U9Yj
	 +OCrLn6L0g4NpG+byiY4tvKRzEbeYXoBXEQcX0E5eZnYw9SSPG+wqZaKGIYzM8KGKP
	 t3ezDDTaziwAVo5x638rK02+akKDqpHsys42Af3ee+7U2T/QYLkVT7172NTAZ4Zwh8
	 4my02wAhVoLftg9YHdwHMaauJ90a5MpYjSddyXJ9ynQDkQkVH6gUoDj9NgRicqizIS
	 8Y4l9xWYNQC8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BC21E8FDB2
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 18:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176677463359.11335.16150297667617298712.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db8c7d74fd1a77bccefd8c4df162c48261d0136b8b7c0ba98b1564741afe1648
Date: Fri, 26 Dec 2025 18:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766774633
