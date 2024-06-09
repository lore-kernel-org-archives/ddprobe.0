Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57BE655892
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 22:27:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717972043; cv=none; b=bBE0Ij4ZZaqyYpxj/u4TBqfvkaZlPZzEQt2KBNqlPAtC6P4LlUN/98QLeRJNd+l6w0/a+w7p37wTiaCvSsyA0nno+WTgOsHPOtOlLEX50GGqEJEjbl2OROeGMaPbTtgW0dMfU5Jw8nue508fUQkHnobWH7t84krmrQG3SvaR2VU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717972043; c=relaxed/simple;
	bh=QhaoTbckBQ1n6VNtrTCDJoQ42tJcLkyqytksymI3AVs=;
	h=To:Subject:From:Message-Id:Date; b=GyCHtmSUDwS8janxCRK/aOhxFJqBBgyp8hvgwmg85mGCBEPwPSTH931RunZY6OzllBe95snMKmn3mGUbeMEC26Q+MCdd2/WPE7AUbKuHh6vzyzpwnMXwDU0zJptPCp/9AH5B/VBRyH5o/uRgRW17X5zlKU2XY+gShN9gVzSirGE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FTel3Yax; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FTel3Yax"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D53DBC2BD10
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 22:27:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717972042;
	bh=QhaoTbckBQ1n6VNtrTCDJoQ42tJcLkyqytksymI3AVs=;
	h=To:Subject:From:Date:From;
	b=FTel3Yax6THv/7TeCA5msT9CGW6A2lCgy9sViytwXPDxhKfNnCt9pb5ZzG9M7FSmp
	 Ym5enYlU07wnr12lKyBWT/YIYnXZCcA279PM2Vb+LwdcOrfs11IrY2lDt6GZvaUat+
	 CVU2dewL0VcYi4GdCfAVidt4GuvjAPP8PzBHGCikezxP6vTvDtcPvbixL54OgS0ruW
	 eHdz2qUfKiVi7DzSPozFl95JO92DO7fhSowcYTK+q6mY0NgidiZykdzonBLOUTlM6n
	 SGMPGcZc1EoCwXThLaT7agMq/5vUxa/aBjiFJ3hUPToiDuKr5q35GWD536j03KiFkV
	 wsGgW+5ZVS8HA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0272C27C53
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 22:27:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171797204277.10412.15303192976840505752.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d6c083141248d61dfde69439ceec22c10de9d175e2e4b948a065e5aeb447436
Date: Sun, 09 Jun 2024 22:27:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717972042
