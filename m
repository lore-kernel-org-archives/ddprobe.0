Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B5783911A2
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 06:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785739234; cv=none; b=YbOjvaliN+1O5dnXySh0xCRKdrC5LnAw1UghIeipKT6EJRN60q3MjOg5OJIDoOWoT5cSEg9Guyu13Mom5XH//2n+yCDE3rj4jPIvbAFGwr1kCsi7vXgKX4xffvMFDdknl3vFfrgMN5OtcjFDeuduzMw7kWxepPk00HmOKnKxucQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785739234; c=relaxed/simple;
	bh=UnU9ExFjjGWbV/SsRRfOlqN5yMINXTC++mdFg5bNmQI=;
	h=To:Subject:From:Message-Id:Date; b=EeacBZ3sw9WzGBH6DBE+0CvJhoWTH1e3TklEOr6XOsCBcCj+p7uVzzPRdxZxXgi72m1JAzr0ApU0EvGizL7obZH0hIX+zERC03qcWDrS7OyAX7dCz7g2EYgU7BWIWZuelwHWF263Og/JhMPCgbIQ6acgb7o3KbUSXzspNDlazLE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EsKau9wd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EsKau9wd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 1FE97C2BCB9
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 06:40:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785739234;
	bh=UnU9ExFjjGWbV/SsRRfOlqN5yMINXTC++mdFg5bNmQI=;
	h=To:Subject:From:Date:From;
	b=EsKau9wd912IwwFJSgmFaqr8BFsW46OfgmDoBSnGaai69ELNQCRztyZru+WhDFrZe
	 1/j7B3gH1AQjGOWWwBsNfF2u1uFX3s4VHPuyKI2RmoTcFu38aENBZmlqRXA+MAbBDv
	 ez67g1plE8n+4z52xrD4aibG2YCko+rVcpzmA1puWsFtkt8jAv26rp+HXXl8oJpmNT
	 FYvPpimFL5W5tW+/PtpyxC+9eTzc8ibLAE9cy66C2HdFk/XCAxbfTjnZ2FqxmxlbdI
	 ZQurwj72e/FAgHRzvbjzagrWWDDFt9mE2lbHJ4VECJLU9YkI48A3CYIdueiwOdsssm
	 Xc4hvBE2pK2wg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E7071C55162
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 06:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178573923392.21027.11688754083241895008.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f4a6d984f87b29eb554d328d1baba4fdd1e87dff50f29b1334b65ff0d8aa17c
Date: Mon, 03 Aug 2026 06:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785739233
