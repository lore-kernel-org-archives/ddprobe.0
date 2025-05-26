Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42AB81F3B87
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748253594; cv=none; b=msAt/4HQyv9mp9RiYbWzF9TAHCWrrgoQQS2wSaGrlzoG+4cidBciD4BSImrk0MJuyscSAmAriAsWn2Aw7brZmNUddWnQV+c+LtdqTSEzgG5mYqda79Y8TPwBhSM8i1uIHVmBffD2beGEwaw/0zGvQJEI04hOIIQm3mLB63BMWbo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748253594; c=relaxed/simple;
	bh=I1ewahy+RbkHhcnk0B9cHu35WJwRrP1hxs980KTmiDs=;
	h=To:Subject:From:Message-Id:Date; b=ih+Wv74Orm0KZ6e5rMRQC3ojFVI0vpuDF8xwG6ucbZxKwpBpjtQuVQSYjLzvTkUMIZFhk5lw6Q5kSp6gA+T6oDNPb6rpzuNMPMMb3t+tnclB0pSm6aP5F6xhiRjutu3q8YP0lcV3iIaoPiHq6QYHMffzF5hOZmpFYlleDLL+Zxc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ctKSQ6le; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ctKSQ6le"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4781C4CEEE
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748253593;
	bh=I1ewahy+RbkHhcnk0B9cHu35WJwRrP1hxs980KTmiDs=;
	h=To:Subject:From:Date:From;
	b=ctKSQ6leoZWrnVfu1an1G3Jh7irUSfm6k1epYQ4B8l2LlQYcA0oK31/mcBaWzM7Kd
	 uYdyMND8LUdYrpKK/M3CwPAvlJaZQHK7+eFsfPMHsJI9CqdXKmG7BaFCj2RUSTAzZH
	 PaOIM7ZMiAkKb437md+liba7L/G64AXv4eBZbrnzqOPFZx1zeSZPhGmPM2NK5e5FKn
	 DpE3cAu1R1a+pbVJdEKIR/FmK9lNPMDPIZqNGq4my0Gpp5VXnyHQc8caCgnv4qptvo
	 4w7Ju+HBRksmp8I6mj0QDHRJ4XTaDxWq932FRfUj/pxvXdX2xLNf7trWavr6NbLuJy
	 7bSgHHQKdGGOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9113CC54FB3
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174825359358.26649.540088861134651397.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b81652afb461c7d9cb9f5d37acab0f1b6ea939756bf22b1780c8636153c95480
Date: Mon, 26 May 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748253593
