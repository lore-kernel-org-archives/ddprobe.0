Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ADBC21C184
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751084394; cv=none; b=Oxt3YrvujMnxYX+DK7SC1QP+8lcJpuU+BOh2Rl1Y1rk6P7SZ7k00J8r3K7HvU7f2UJZkcSfC+MjseJw5ZaA5V83sL8UyiWrjvD/eKlkACR94KyaFqna7GMIExCKSQifagPKbVQ/4JNYW03EN4qh3WvcZBGPjLGtg+bVJ+uWnw/M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751084394; c=relaxed/simple;
	bh=GLg+2S7Fnf44yGGD0T8jdQnpdDqaNX6aM/0GC/Z8fDU=;
	h=To:Subject:From:Message-Id:Date; b=OUFKtrGRVSwACWiRS7w3wd8MuHsJRTr0P1aU18P0oP1nCXhHbaEkdYLSLnZFzTxPKqAVSOu743m1xWrpKNJs9bRfkprDQ9PaWHu10OFTlzTRK4sh8M2ulgL6xDL5OowkXgXCQY7+s3U/J8sJr6wN1XqJg4p/Yu3ystCgSwmyWGs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pJP31Lx9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pJP31Lx9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9375C4CEEA
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751084393;
	bh=GLg+2S7Fnf44yGGD0T8jdQnpdDqaNX6aM/0GC/Z8fDU=;
	h=To:Subject:From:Date:From;
	b=pJP31Lx9yw2SeHdCusaMr254nMB6lEmWxyD4OdNSKr3IJGkoU+DziBymlcGU9MEii
	 B0OerPs3wu82sCNAmiU1+AkTiPrPrDJTj700DRB10oAOmcrqqvB9C22oiOCu0i0BOk
	 jy6tK+KFM8JI8mXB81VPF81jA0O4ClGZ85WactCytoLeOYK7WD4NQJuT+Z2DZudFjh
	 Sl6PCAdfa8DFYY731uEAwhaYf2x+cd4v8vyL/sMnCFqYYA3v6doIBGevu/678+E+TA
	 u6ni+M3BLj/oGUceFsLdWTnj6t7npUcqUUQQNXu6mSvvt2EIvIgRCPPGv33pyeV4YF
	 Ji3u2Lf70XdGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A82EC77B7F
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175108439359.19708.6692024822323361493.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d1f731cb69658b1cce96e684db081a68221af6cdee98c1871510bca5288140b
Date: Sat, 28 Jun 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751084393
