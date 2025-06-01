Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4216940849
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748758195; cv=none; b=Vkt94uVY9yXuIFfWjHZlyNv63VjPFNjQM+oB1dSGEGjQBDvH3CoUvmt402VDTMG/1hxcFUfSnl/t8L9xerCwttH2kxXIZoEOpQnHgq3rduO0rA7zYSYRw5DKcsRs7GLW5YTp3YrvCnS5Kl+zhVEKdiR94QLpD7oUS+SOs0VOD5A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748758195; c=relaxed/simple;
	bh=nRfWFsuaoaH9zd4KvQ2HXkRLevEweOwsc6ylIrcg4TY=;
	h=To:Subject:From:Message-Id:Date; b=FT3xfTcz5Lp8+ubH+S3psmemdUMVrCh2wP3F+9nbZKECfEyxUxzE+z5fk1kz/aau0N5U2vormZXjw66ZFykcoEO7SRkFNYxqHAXy19LkQd7z1+bF2uxR/YII/VL/BueR1z+LWZ6breffY21tYCAeYWejgo8oxRV407OvZIEh35s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tEiQxcMm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tEiQxcMm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A725FC4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748758193;
	bh=nRfWFsuaoaH9zd4KvQ2HXkRLevEweOwsc6ylIrcg4TY=;
	h=To:Subject:From:Date:From;
	b=tEiQxcMmMeTLuHXn7oOCOwwjyXKFSfqIZHBqJV3GZficj/zgwCJUM0Wc0e/4aKSMK
	 917FMA0su2a6fWdkS5QmpHdT2CdAdY86I2n2soxHXT/aZI70XFYHFoFMMd6Gx4iEiv
	 8SIcFo+ecJzKC4o88fm2tb8ANzhM1Ca97oKhM5pSRSurNydmby3Nvo32TG/RnpKUFJ
	 l+TNebz/ZTnaGYiCzdxvvMXnkb+tPJ+tHq5r/gDgks9EgGejXamRVmISbnE/mYbzdc
	 QpEKszOLlUS28a7tujUx/z8yMdNNz8fkZZbmz/7IVUAs6IIElwPqgdtXyi6qv2rura
	 qFqWCzIy568kg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95AE3C54FB3
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174875819357.17885.12635674613549218219.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dfb853e79b9b92686ff861831dad2030c5d1afd292e884af679ce600eb616dbf
Date: Sun, 01 Jun 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748758193
