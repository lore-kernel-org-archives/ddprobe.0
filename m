Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07DE120326
	for <ddprobe@lists.linux.dev>; Mon,  4 Nov 2024 03:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730691954; cv=none; b=iNj4n2D/0DedUFchXSlszrUIjtDyNsoWDWhVkH8b59O/grvoDVJ3jSYthXecTBnKiTT1o1nmJWOnUl7Uf9r8E2uz1a26XzAYpW1oPXcfAWrzoxkCIOTe+7zloAVHMbvb2bYXFYrvOyxxUQhl2X4rXddLGslkSXZ4PrcJD1sbylA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730691954; c=relaxed/simple;
	bh=tIT8pniDbiAKXTW+++5m5X5+/P5EQFkwxUREn2BRnK0=;
	h=To:Subject:From:Message-Id:Date; b=XbJ/CRtCLIOzB77YtJJb09ZOXtgV8gxbRtNemY34ZYQM4Ld6r9eRTRjGqx3mkj9nbUlYu9qg+Xmf1KBiRUq/3s4/OpU0HK6P+bzOBEBRSCYqTOJHW9akJajZugOw4pKdZ8oh4sgMc1kY9mzDDWuwTZylBTLIwVtaKgXwkx3lbSY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bivcgcc3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bivcgcc3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8779C4CED2
	for <ddprobe@lists.linux.dev>; Mon,  4 Nov 2024 03:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730691953;
	bh=tIT8pniDbiAKXTW+++5m5X5+/P5EQFkwxUREn2BRnK0=;
	h=To:Subject:From:Date:From;
	b=bivcgcc3t/uGMBy9gGDpfNVUmNz0lZiw21qZNoSZM6m1Q+hW0Uoj8DpZc2rics229
	 Wpr2PNxtE+TEc5sfN8nxtGXDCL1HF8EbM29Yavcvbn8mbYoxCxyBviv3pEPHyplcrO
	 sYTjKyn/JNxVTkfuIm69UPpZwh+DuDyuQupc/xw+LXXreCqEk5dHPt5FmJPHWv/SIM
	 E4kUxCIBwfiQULpobYxFphw2yPx6r2lFM1+LHPz0maLzIbgJZYTiFi9e1vOoHU7+wo
	 9BFw5ahziQ0Qxgg8d4OYdXSQE/8NMZ9raEmIHoG5JRIhMw1ys+UYJLH8npg5lG/Jur
	 NyqGwybfe931A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92637D111A0
	for <ddprobe@lists.linux.dev>; Mon,  4 Nov 2024 03:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173069195359.12021.6878818035118185304.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc43a660679137b2a714f8d34312c523cf859ff7544a8a64e3cc30cf5d5dbccc
Date: Mon, 04 Nov 2024 03:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730691953
