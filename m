Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D1973914FF
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 16:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785430234; cv=none; b=IQJYJnBJfQrI0sb4qYvVvsweiVW4B1/l2NgXnVT+Y7Qd+3RA7bCcHAeQmj7pQommdOtEspymxdErAr6opfG9hME/fH8EsGkNPV3TMVIhne5r2ztwMCSp3UqZpmZtqyX5pLzc5ISMRqZBEe7bU0RTKcU4mjUr7EVnbN0uu5vJiGw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785430234; c=relaxed/simple;
	bh=7Dpv2uRQxJZgqof5rXSdVIGRSpj4pV5knHKI0kFIrt0=;
	h=To:Subject:From:Message-Id:Date; b=nYQr1Co3tTq3XQSBG9sKeIbCj1IRR6kE8qRLSncOvlipio4an2csXBtyHDMzdM11tPs8EIlIotbPAheTzXf2TMzOdL5z5FCI/Y3mK4x1JLTn4/F/B9K16Cd2u/zlEriRGXpFtgFb71ytrvusr6alOgXjK4jDzNu9/IoVFICpou8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bup/qYb6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bup/qYb6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD1CEC19425
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 16:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785430233;
	bh=7Dpv2uRQxJZgqof5rXSdVIGRSpj4pV5knHKI0kFIrt0=;
	h=To:Subject:From:Date:From;
	b=Bup/qYb6yi2g5ARAI32ZreL/M+xkc4QbqjRj4O0x/A+c2Kfrx5dk5G+szyWSa9H+d
	 +WJo1VDMGXcg86Sapq07StKhe8cNrrIqE/2+7DJ/6/RqDQhyNCDplQ8r0WK5mWie+H
	 5630M6INTtdS8hby+d49ijs668io54rYeYYODo67/2tkNol/1RPjNmdKSs0VxM2JYf
	 ouqyh3+5Zb8FWCF+s2oDWeaR2G/eXBITY+s0huZEuu8I5XesvWZ3isvDVYajBY8+rY
	 M+1Wm+FXnqO7H22YRwivRmy72O0YhXFHNDmSjMwRycnDluCUs6U1hDMDyrIP9OjjK7
	 sFLOgYa4ekmUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA0A7C55162
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 16:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178543023368.6189.3352018980195490592.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17d97723382efb3676b707b74c0269b8e5193415d34760c0da8fb6cc49d314d5
Date: Thu, 30 Jul 2026 16:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785430233
