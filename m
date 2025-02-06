Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D653023C380
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 22:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738881353; cv=none; b=DUkFIeTJYNsPfgcPos764668d9gZ0Mm47kDH4VfpHYXL2q2YAMi6lUZe+GVM8kZuuoH+40HXhNikyJfFCem8H9YU2z79bX1VOXwGV9OMGrLbY1spWbh5VWvZMbp1WhVLK3ZaHYI56sY7vb8YOCuQajJC1mersBAuOvPRQoMKnh8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738881353; c=relaxed/simple;
	bh=xO8OmcFaPJv/vDH7OvsgOIHd1zGzez67PMVedjd3iBg=;
	h=To:Subject:From:Message-Id:Date; b=Mm5DH0a8NOeWK6cpsD8EWxQRsCpif65FmpwEpTBwDHGU5RQUpUsW1Cy2FBV5CmhbQVK9hj2xqawxUJWGSiVvwKyGbN8216RVC+C7+HvNha+mfJeO+LVO5LNMJN8lTXzvoBTms3+7c5erv46Snz1P/6eJBDAP2mdCwxoDU+LPvhY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k0+G2yHW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k0+G2yHW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B425BC4CEDD
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 22:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738881353;
	bh=xO8OmcFaPJv/vDH7OvsgOIHd1zGzez67PMVedjd3iBg=;
	h=To:Subject:From:Date:From;
	b=k0+G2yHWr0NenK8WJGaY2f4RUzkqgIOY55qTT13XE7oLKsQM5CTWRexuU5gp2q5YJ
	 K7jF8XtLzA9Yxfc9k6oXaAKonLrFPlXrtcIIytjKd+9jH8AaL3qaiF8NvF5jpIMeMD
	 8ZhxB2i+iFwov/FqDL2vA+2liN++oXFOBdW2h0bc8Y8NxILMyzxqDkXWmWN3fTdvJN
	 D0XD20gr1nCB+SV6VpDw3Shs4BpBv6MO1rlXvVdXM52On5NX1vF+3+4j3YtUnq1K0d
	 iZdxAAKtHesygohwdx6eEtEadFgX72rdf8qboIumOxg3wFL7mZOihpza3VehnIuqi4
	 wKSswN27bc7lA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B809C02194
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 22:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173888135362.13665.2273848661629189355.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d4c6c7b9dcba8fec25aeeb4a1fa681dbddff42ba944b4b904f8e61c2afada52
Date: Thu, 06 Feb 2025 22:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738881353
