Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53E3612CDB6
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 10:06:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720519583; cv=none; b=K6xKew4QAhICjXCQLXMlioQS6Lh32yD9fgdfKaP8Q4CmHCsXzoxIcKYk1axSQJh0ivoxuGtR/K5U+Gf2nyuA6DKKaxeELIyTc4bm2/0I5aDjXP2ogbkz1ea7Cw761Tmo/KMcElb1vJS3R4IkisLNxThplPGRJ2LrdvtPbPaa59w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720519583; c=relaxed/simple;
	bh=c/qmfvy+dnX4LWersuPjkOnXg+JO/R6ulhghz9bsh2c=;
	h=To:Subject:From:Message-Id:Date; b=tBdBtfeLcMa19PNVqkPeMKykRraiaaW6jTQ1YEnLiab/TE+ysTvwUF3BZYI3YzyHC30iltZ56+3OW1DwqRvNiEWl1P2v72UC3mRYYog9UAp7zGHw3DLN80JhmAMYcICTrsGWq7BiCIZD0uSoE9JABl4CiFM2csa4+NaBjDw4MJ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kUdIgu13; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kUdIgu13"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4EC0C3277B
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 10:06:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720519582;
	bh=c/qmfvy+dnX4LWersuPjkOnXg+JO/R6ulhghz9bsh2c=;
	h=To:Subject:From:Date:From;
	b=kUdIgu1312Vn6olJGgygJ1nOFfkW5c63N8Wd/3UmPvut4DN+xGYyYHm8o7XizTjzI
	 TUhtMm/JfgkWUuc5BCQdgEORMlgQrAS9w3gSwrX2doFoDZMLTSoA1u6Jwhj364aDIM
	 JP9G19VGTygsmYCshAmTqWKyZcK6YipuarZe1J2c3FINCPEdixXIMoa+OxYQov9mpD
	 lPEZ7EEmbNiiBn+S1mjH2pieBXlrFVvPnD6RcHcQseanfB/TE6YkXS3guK+1UdQyX0
	 gdHprSDeJdi2OsJHnfjvMePJRSEZogAFW+pdl3aq2824J69vI/fEyuOWIEi+WMiyR0
	 WaJ2+TrU0tr/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C22F3C2BD09
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 10:06:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172051958278.6333.12180776052122893416.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86a70c3341a127c9c16444b368e74af6bbb373a5a308929153017917b5e8a31d
Date: Tue, 09 Jul 2024 10:06:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720519582
