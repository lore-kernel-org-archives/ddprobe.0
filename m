Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23C0A1C84DE
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753159795; cv=none; b=N72scZRh3v47B3o8BQ8NBGFB34wUiqLZ5cDq8c+qLQ3ASp4kxpxm1BCPaB/QORVK7v6J0Kfkine/s7GpLfT7Y4PQa/L3ZDFaiBPpc8OpVNyHKKtl4QSOjtRfpeschZc/T3h56J/IgbpUq/6yW3M6cCHPXGBbEqC5qNQBEkkTSpc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753159795; c=relaxed/simple;
	bh=CZwAjVOfNB5cv6qSfFVCNHUBG3G5zOwc4jioLhS3jxw=;
	h=To:Subject:From:Message-Id:Date; b=I+J0bzjOLzfdCSitlbMti8WGNtDYGhBGx6Arkyf4zrx2Ef3mCszQmymy9eET+gy25TYBoOhKu21oLI6BR/qL/nxVLZZxqP3Z56E96z99Ez6MX7+ZyhItgu4qoxyu3eaTD8wIplBSHSow/Vk4g6md18MmB1cWReCIq//31qncWvk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ui8zvdYz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ui8zvdYz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1394C4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753159793;
	bh=CZwAjVOfNB5cv6qSfFVCNHUBG3G5zOwc4jioLhS3jxw=;
	h=To:Subject:From:Date:From;
	b=Ui8zvdYz8ZdBL1pSJ/dKzu1K9jsZB9z5lkokGOma4Oy/a2eRME0ojsrGop4Iftwdd
	 y9O1KXYETbD8A/mMDTRDTZ8f/TruIi9eRk6I44ZmKHPx+CpCaMZKF54yKe6rPd+jsp
	 hi8urF7xKQ5QsgrPfOLooYKeNW+kUaM96iDdSbDF5gPJ2flUBhGSHy4h/n0vA8ajqN
	 s/W76++5sB3kKWL52tRvQ4Cb081I5mP/MK1dvB5iItQtfQp9KUwFSuqf/sUYqlQ9RY
	 jvrDO2rumoJqZsnvwjbGmTE0ZsMrDlmJAjePA0f4UF6w6uWvFqkzn0HgYbR3tM4+JV
	 DrwN63kX4YMeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2CAC83F27
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175315979357.12293.9069165259414596521.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c1d9d7be93394e819d7fb3540ab00e2bd076e971c6c8da0f5fe7f41e766e79a
Date: Tue, 22 Jul 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753159793
