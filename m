Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37B3525A621
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 18:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737917754; cv=none; b=QljVMVh3VS/tpeCLzVvuu5kTQAvcnxxuXUS9ER/ojNJws3u4ZoKC4F9ThHc/JyvdTtOtLoRFfTLaxwxSrdWUrpnyUjLLVmixXvgziwA4RshG31zebEzPr1ArHby1cuBDvIW/ZYBTUrCBsB7ZxoCm/co8qhy/ijfaEId+t824B/w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737917754; c=relaxed/simple;
	bh=VvQcnpVaWPqiunqcxtl/EqqpdHaABqdEe7UcgnTNvrA=;
	h=To:Subject:From:Message-Id:Date; b=tCcfQmj13KysWToOrJKJG3TyH0E06Fr+6mi2PBAjNrr4DIFkbwebsURMaoJkmE0hzm9jM39hQqdJnJzf0f96b8m+1jPt8V2/4w6CPBCEAY8V+h93Oox5bHn1RVrWP8KjrO0HKK4YGMhgko4UbFABkiNvf2xra1iVX/GUM2z7BuE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EDJtpR8E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EDJtpR8E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB295C4CED3
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 18:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737917753;
	bh=VvQcnpVaWPqiunqcxtl/EqqpdHaABqdEe7UcgnTNvrA=;
	h=To:Subject:From:Date:From;
	b=EDJtpR8EtIWXpFNJdcdf56/TA/Pve/BiS4f0vcdeG/MszivXFb3AsrUHmaurFZlQf
	 AQgtsLZOcpWJ6GtyjUOFRcgY9hXGZREyuNfsx8UNZ5pWymoCnduKrmcsvACqfx528D
	 I7O9X9DeFCiSIOc4KFpaz5eqntfsE/iv1izUlc7BPttZBDCN3v+n5/Q6Js/f2z+B1N
	 BoXPGx1ucHGKWSZX9ruE68buLD0L3LkN57S7hgbYBKxgVAbBkrGCRVL51Ag40jCnSE
	 112SF+RshzykMfrkGLNwAgjPu5ybBA0cJX7zeEG6h5X/IJQga8bY2EiblNoxIJRLRE
	 KW9z9uE0L7GZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98348C02181
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 18:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173791775358.23981.12094851565786546065.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86de92d35f076c4436ddd0791a4deeac65dcc0e1dcbd948bb517c6a8fadac1fe
Date: Sun, 26 Jan 2025 18:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737917753
