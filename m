Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2939533A9F3
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 13:22:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779888154; cv=none; b=Hhzd6Ck27FjBkqmzyilcrbCdk+U3Jk/2I2zZjP/I9TPvcgCc+nUWoqNzI6yxxGEhbfd2GNDoTB5DHMfw6bKUUgP21ud2+h5vvmbZk7z7YBOho91TOJsS97jaeY5W6v98++OOXM6NdLXg0Ha4c7mpDD8mLx/Q8I8NneP7UfvuYg4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779888154; c=relaxed/simple;
	bh=y6mcySY1KgvSHOhqYhxruwxs+MS1OeSpwqaRCGqSMkI=;
	h=To:Subject:From:Message-Id:Date; b=IQjYJfaBMMfVZOMfzdZTKCNoNZag5NGuBYA5dC31RN9n3PdzFDlOqcirxII/Zpt7PSjQjwDNKmU/HdEyqk85BuoLrdq8wsX45gtCeIPMCPW+Kx6kQGYk/y6MmgExbPiY+XftHeoQ64F5cm3urRM0RCvalQcdgc0O5rzhI1FYwjw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LFPIxkac; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LFPIxkac"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C78DBC2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 13:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779888153;
	bh=y6mcySY1KgvSHOhqYhxruwxs+MS1OeSpwqaRCGqSMkI=;
	h=To:Subject:From:Date:From;
	b=LFPIxkacg+k1JdwY0Mfhoa2hsNIjQiGjY3qeFq50hV/NTHRMhCNIHaqMD/RgsBzx3
	 cvDZt1RNUAiFOndM1+EOTyc4CiTSXnlG72IbPkDwDwKq1nG2sShS/yYYhnyJv3ThMM
	 JJ7Koz+LAM4wB7F5vtgbfiX42xyxeZ1HuEs8DDZ6fUVUOkFOnIEJMgVGUfKn+4m1ey
	 mYm/VV7QaSfy8ROR9SUHZXUphNkaP3TGqmn0LSkWuRth81DWFC3y+Fftq1wLMwWPOT
	 WIsfGl6N8C54rDSIlsJym3Pz4hLMhLCah1hnKQ+0DFewPU4dUD/F1Nha/1738Kut4B
	 0fBFlZMZWyK5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD863CD5BD5
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 13:22:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177988815370.6733.5855643981758891951.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 518bf97d06f85034fc1e755ec4f361724277269ff27637fd173b8eb8f94d96d3
Date: Wed, 27 May 2026 13:22:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779888153
