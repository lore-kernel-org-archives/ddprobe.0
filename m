Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8CF6014293
	for <ddprobe@lists.linux.dev>; Thu, 30 Jan 2025 04:45:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738212355; cv=none; b=JR2x6s8EF5caxFXNxdz12h0ZtPIGEkTX+pcydTJblREmDBhUmas8+fBiVawzWYBXw4zeEeAYkoiJBqM/gxKNAP4xbjHpfhYdH6bVvUaD02YyfxTaiHNZund2ar3JJR9ZxFtagtoe23cdumM6PviVrW2I9npcJNGb44Sj6XLwz2o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738212355; c=relaxed/simple;
	bh=ugAG9BH5UqnbKfoYUUKZTExYOvYYZ332nN9Tgq3gRG0=;
	h=To:Subject:From:Message-Id:Date; b=HQUdNelTuayzdoHXuZB7rpqAVp+gaYxxH5o6UaS/ldc9bVf6ee5y+1C+oYGzYECVonysNNjwBuoD8TPDmzS57eByPZiqC0ZS9QrEnra4EksjbzY3BZwUx34WSmYw3/Rhws0AGoIQa/XSHlUaOK3FfGJw9RmieGeEjIPdeXIVpwU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DmcU2hzM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DmcU2hzM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3F20C4CED2
	for <ddprobe@lists.linux.dev>; Thu, 30 Jan 2025 04:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738212353;
	bh=ugAG9BH5UqnbKfoYUUKZTExYOvYYZ332nN9Tgq3gRG0=;
	h=To:Subject:From:Date:From;
	b=DmcU2hzMAqeP4knbTdtDOdcvSDaSl49Uv4ilMAY1D2MzA7Ifhz0d5NISOjdIWuSa0
	 EEa4TzMxLe54yJPmoiNfGMMGZ/X1EzKzwnBQ3UhTvBs/OdnMwF8c+uI9Kxcn9Lf2tw
	 x8cCsVEjXJWI72o6rMMQlz8onQns1Ixxqf3K83aqDSvxESOV+5WyW1eeAG+k4G6ieV
	 W9FYKpyI0xo1pOIIchKUsi+ZC5pAFZ95wUXBcW6VydGde/p05HuUJ3cpz6hCU5UqqF
	 PQrVtc0sUSF2XNR9eru6GAMVW+fe1QDBcizu890opS//S5tgtIGD3qDFz22LGWuCWJ
	 qPc6R+eulvnYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2987C0218F
	for <ddprobe@lists.linux.dev>; Thu, 30 Jan 2025 04:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173821235369.18249.12461464873362793847.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f6340269df4ecc7fcec5948fbcb00cbfb011ed9e73557562be858c9ba978c84
Date: Thu, 30 Jan 2025 04:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738212353
