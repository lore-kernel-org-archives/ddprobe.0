Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30406272816
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 06:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786947034; cv=none; b=saZgGQn00qsm8nt4YQV9vUQ9K1/xeGqfgCoFGc4V3YiGXGxNum12CIZZG676SJYDYbZ6M18LAfRdKCKYwVC08QwyCJNswbU9YI85ScPJoGSywPcC9MFQiFhT7gtlQpCsOY0STu0iEkpznSbnUEf3nUAiP8rgfErxtu6+qrQ3PzA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786947034; c=relaxed/simple;
	bh=KMK0EiWFCTzqRwHNf0jpVaBS/Urk1rHBF5e7xaOsTt8=;
	h=To:Subject:From:Message-Id:Date; b=ja7doAVY6qCLaKRG8totdWEfQR6EaEOz0n1iXifmJMj0ICPL94B0GFjhOYXv3XJOAl24PIFQvmkMQt5+LDeEc6wSGidIb4mRfNfVfG+9Umm6ObeWm+EVuQmUJw6E1ZTt7O+suAhO77oA585OAte27A+O7msbe6tf1FW/neojP+4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bOMC54YJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bOMC54YJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF33CC2BCF7
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 06:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786947033;
	bh=KMK0EiWFCTzqRwHNf0jpVaBS/Urk1rHBF5e7xaOsTt8=;
	h=To:Subject:From:Date:From;
	b=bOMC54YJeAJZF/TGc+EONaXS+C13RDFwWKWcAAYRZvI9tAU/t3MgoaDf9ttrROrzy
	 /YMKcZmZAu4BSZwB8ZYx4MEwhEVTOcDBSvnpCToIOTmh3XHCn2fwvYvxnwEOENiMEF
	 a8+t/CSskD3j8k1Bix8mAVTIotGLnyNbnG4ItpA9BfoxxCdgnDPAGBSXKkpMxMlP3p
	 t2hVlspXOSrrTl5EeDCDk55KiunzZLrCpcVsTP3lEreqN7zZvVre76yYwiDwBzWhRl
	 eJqnIQvBzNs5BchYE1/JMKw4DbjBbLwqWOBcfBrVT9j8PnHh+lfkEkQ6r0Fo3JVdE2
	 /XqULZ//qEWuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB32FC5CFC1
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 06:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178694703369.15651.3054381906829885223.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bac949f84a358a96352e94a8c7e985b10f1e31d58d319c047dfb7877d3d0cf7e
Date: Mon, 17 Aug 2026 06:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786947033
