Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34F3E13AD3F
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752907794; cv=none; b=Kusgp0+LSg9XjUJl1uNGHK3H3X7AWD0p1aVahs5DIbpM6ty8rrXJ1XZd0KwCID+V9T9m7nhK/It/6tnkZLxVb9PEd2eESijZNMjyz8BfhV0LbIOlcxdAyuBSpps/PJIn2PcgRrkeqkS1vXJj/KS3bgTNjTcpnd8ZhSkdfx2EK0Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752907794; c=relaxed/simple;
	bh=0GUz5BjjyVfSnNqaclVd4GOKR32+D+qIB4TJl4L4e2o=;
	h=To:Subject:From:Message-Id:Date; b=YNSsFBby12XDDjHE0MhTMqP1zIPZSTItdIW+NtPaK2gn/1kCQYlR68RYIzoOHsxJhnPLU0UcrpWhKgopEMQ66NSY4REm8WpQ/ZLTLNpj7uNIhjBO64CuCRDpAzdtYJyiFAYckBMBa1VYM25GCWN8c8xY28TbZhYCR8qEdkmmNM0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J3D5aCI7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J3D5aCI7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEABAC4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752907793;
	bh=0GUz5BjjyVfSnNqaclVd4GOKR32+D+qIB4TJl4L4e2o=;
	h=To:Subject:From:Date:From;
	b=J3D5aCI7kCOaOSV+dRGAx8aQNG6qfYJF1NLB5A9GBpG4KMI3bdW6AXTrFnZy0TXxU
	 OAP6Qvkrcub75BQ8qFiGKjXejh8mR9JRSR1TAV7yhVA18VjvVgkt9Rjf84wVq1ADik
	 9xSd2Oaa+Lk82ptPFlzXQ6GiBVbAUGLNufoQZoTxKy00xBY+qPT5XZUPB369jWATP5
	 +yzzKrYi7ibfbGVmVpdGv3BwKE9G+uR4EQXXCtePcXMWPqkJ0tQ0scpPDdOnVdWbkf
	 UtVA/J2WfWVOrrYGO2p4ml/ZRgNKRnvDpwc3k2PfS/pj/RA86w8YL4uK5XKCdTni9M
	 eEWPTrjgf721Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99652C83F34
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175290779358.5351.16967669603534244806.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b0c13e2256762bada3a97a7ae5da500d4554f2b23f97ef167fbfe942eabb631
Date: Sat, 19 Jul 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752907793
