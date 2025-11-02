Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D543F9EC
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762118394; cv=none; b=bM2Ybv2Z33IQNgaWPvlidLSryPAPdsa+7gzMx59WAK0e8GRTp87Bf2FA3JD5/z9hI2+U7uEkHH+VjZrhz5B9DsfN8l9iV7ZRCDaAp5g7pVEzeNjY0fULzat2Ka8u2WbduYurPJc5N+8uIT/Oy+LpXY/LF1SaVbt6z6hGiGf5PCs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762118394; c=relaxed/simple;
	bh=a3NUMYGMUXtY2uDBlxA8cC4UsXnv6FTwidp1xbevVII=;
	h=To:Subject:From:Message-Id:Date; b=jcnKDaWBeAbBPfAZZadg2pb8OxcKaKqtlJDVPifq8uxT9gOk5WM9fKND4dPLueGB/54Fs9ucc6k+YdnMTIT/WqA8z3F02GzS3reBL4kkRUwiqmM7lSzKpYv0E45oHkAoqKh2K3FpIHMqD836iU1JeL3bwlk5pGXOkS+WqBtzB+I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BfNUcDGa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BfNUcDGa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5107C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762118393;
	bh=a3NUMYGMUXtY2uDBlxA8cC4UsXnv6FTwidp1xbevVII=;
	h=To:Subject:From:Date:From;
	b=BfNUcDGanGDRM+BsWMoY/ZP7IcH3yExIDeHJd9xQ63vp7ou3ws8DmeHksEiNxI/Qp
	 yOlezCPf6W5Y4mOVtt8k7utppxmvbTE22LRQau3mAfIPT6VYPyZCvQrpiI4oJZE4mD
	 c5ru97AunxdLul92tv9f0S19ne6jzq6lnNjsuviB2BdTYtt6nEsrmKW9JK2menykyS
	 vmUd3YbImMcKa8dZDLgkSjX1yFOJv5l/1wUublVYmVvbMX/yjPOPYSOEk1oQzJmYuz
	 FsmOckKM+mujSXoX3SYqy6nf5BBA5xqG9MqVPi4g+Cf60f1noeFdPK6FwhQsShiHR/
	 6OIZCywAYXuCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96BA7CCF9E3
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176211839358.3178.15081739989781705717.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9bfe690fb13544aaaf7f0fd3e6c2fb2e5be2b211d8e0c449467365c6b1a21794
Date: Sun, 02 Nov 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762118393
