Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2066217AE1D
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745576394; cv=none; b=lZ5T/JaXMDvYN4PnRhHIaOG3BC4LBx+0tzQJSAq3G3Iou108x2fgur395fuGTp2CyxbQKv4YoA466WSHklr0VqgxMPppQJOKkodotFR2CaJXt/c41zpvj9ueGlbnFFM2GGBdjsDExkMAQEzvPM4+SmB0hD8nil5l64bmY9TEM0Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745576394; c=relaxed/simple;
	bh=YHzG0x9o3RX0VDf9ZAXMjPFLNKlnbuRmOz4N1j+fV/s=;
	h=To:Subject:From:Message-Id:Date; b=srC5Qdez1k1jk0bUPhVEKXyHLrv5OP/Z5ud79guzYaTmD+FH3MMJJ2w7e6wYge1ebAOWes9JNOtm9s6fHL3UrQB1sblu0CmP71Z9tE6lrQ/j+zooAanpPbP1WZH6ckw8ynLDQhZtjYikrbkHq2rs56ziPSLhTes/cIFUTRIzjnQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hkjlzHcD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hkjlzHcD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D664C4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745576393;
	bh=YHzG0x9o3RX0VDf9ZAXMjPFLNKlnbuRmOz4N1j+fV/s=;
	h=To:Subject:From:Date:From;
	b=hkjlzHcDr5X1vkXsUlj5xFBfjMVYgtIEmL9oOouSr2YuB9EDlKqUBF36QD0KKSIPP
	 swZui3bJhAgl6byD/lKoWDzLzo/JyuJ2T9+RU3pHDhpYB5tVv28iOdIojpFIqtTrjc
	 +rQ/wv5/JKd2XC90OcHsoP+RAkSh15+5QEpXOFhqQAL2Pgx+D5ghcr1/lysCdXKNE+
	 HoGBTphMmJ+Q4BQRdESdDhLtbr7ygiePGH96Npxy32A60PIeshWHESnaF+jA1SMjDq
	 Gs7DjvTl5xSikDSiEgX9l+9nI048eiGHYOazyIiXEvGpzZ/o1ccQUWXI4mwa3y6a72
	 QZrpz06iH2n/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E61FC369C2
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174557639357.27776.10733921164435402262.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a81e204b18684be389a8122cf61a7604f7aca2ab2ecfe51d1b39bcd9b152fa5
Date: Fri, 25 Apr 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745576393
