Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE06A1482E2
	for <ddprobe@lists.linux.dev>; Sun,  8 Sep 2024 14:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725804354; cv=none; b=TIJRd7IGKsA8uclmO1PPMaRjFNKKV/XZozyxocuE+jSl0uuaoV38MD94/cRwGR8Uj5Ifci+6IW4C4KCJyeXGDr9/iDQsteQdZS1SAg60XA338wMP75mxTsjaZhDBqT/djd8a53Qz33PjKMO7zxfxeDFUryzPaFBbhNdCti4gaPU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725804354; c=relaxed/simple;
	bh=DtAO/NzFxCQBqc/f6aKdglksqsLEuK0/XfwWYxODG5s=;
	h=To:Subject:From:Message-Id:Date; b=MGz1HX2Vgd7cIEBPZjStMe9SEIGr/cngWTdrqUlUvd6RzpgkTrO7jblP1zGobCSXeknIY+2wQo9K11edLiG5PH+HbbRAuSo5/UZEEUJrs/l+jf/ej1plro3LdId7tcxL+GGN6yd+U76xgPoNR1Q2NC7Aj5xEOA65bCYDUrbIi2k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PvVnoCtV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PvVnoCtV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA0AFC4CEC3
	for <ddprobe@lists.linux.dev>; Sun,  8 Sep 2024 14:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725804353;
	bh=DtAO/NzFxCQBqc/f6aKdglksqsLEuK0/XfwWYxODG5s=;
	h=To:Subject:From:Date:From;
	b=PvVnoCtVcl4WdwmauZo7lUBvcHmw+ABhL/qDme/5hW5Avx4NvjnspV+mmuuKlRC6B
	 TyRqq3jAww47Sbi6Yft0MgHbARbtl7fgB2bFLNGBQkgRbJ8q3myJb8QRQhQkLoXky5
	 3DRykpKE95w8kr46sGpuTWrOXoHTAwNY5Sq1Wx15tRqU3pR/tg6kH8zsca3Rs1fotQ
	 xP1YvDXJjeISzKyCMk5do77w30gYO/A9GIiBpOrbtUCP8Q9nbCMreYq9Wj8bEl4vBl
	 3mwJLIGyaT3qwmr3JmOFdlqz/zzivqtu7n7PU4FES7OB/FbvSNUV5aRA3Anm9PZZQY
	 M8v66Dg4021zA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A234CD4F4C
	for <ddprobe@lists.linux.dev>; Sun,  8 Sep 2024 14:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172580435361.23001.509432831812818883.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71e146848d495e508937684ac1077b07d87a91c2632a4eb4cfee5dd41b4d2aa9
Date: Sun, 08 Sep 2024 14:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725804353
