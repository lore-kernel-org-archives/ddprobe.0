Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45A0B3FF1
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 14:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767538434; cv=none; b=rS66rH2rJhgYE7tzcOZ2SHgUDNyjmddsDR6z7sKOSLpi4RN3MZ0f/zuEmpRPx7xVl/GXhHc/eaZQgmH0Jgi4z3B9T5UhyUVTxXXpD2WWidnQZoYtdpWVTalI6QlApqfJ3jAS226NxkaZ6IIBns8B9oODnz7/GHKLSU8gHBKHryI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767538434; c=relaxed/simple;
	bh=H7RoSpKfh23KMCyevwr1laeBRTC+gVMwrsk9qu8yxEQ=;
	h=To:Subject:From:Message-Id:Date; b=YL9ACCKK3LGPeHhHqDcMepnHhTK8YaDCUKxpzzB+Pehnzk+I6Iwe0k6wvd99WKX22YU30k6YB18sp1wQOggfEAJA6R4OKRKiic4dzf4GOhKQwg68hUruWGp9idx+m2apBUp5rJ65KSqxb+8kOx8dJ7MpQRHpPHvoquNstfQ6Y0Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZJHkVqKb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZJHkVqKb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1AD2C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 14:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767538433;
	bh=H7RoSpKfh23KMCyevwr1laeBRTC+gVMwrsk9qu8yxEQ=;
	h=To:Subject:From:Date:From;
	b=ZJHkVqKbvCkzt1G/dLqXv4KwqtMTXIHKGdf7L/UaW4Ea051DBe0inI/ME/TAa1W+j
	 trjYAl907oLWktXMcq6c811lYT8JuGg29OkV2tjsHjcb+L7rMDLxEJuGXCZdfNeXZ/
	 KAbzqMGRz2PpJv/Hb6f5tapbgNQKctcMnQTr3F82NyP6FjFwfsvyejNp+72UVJCzcK
	 Zm0t6EOUFQzTTBfZFY9k/r5f0yPW7hweJalXNqpBL6ErDJ/bcMAcmeNFgzmQFfLuna
	 stV85EZyZ3gL9g27Cw9DqmdcqedC1Zp35IV/RJSYqF3yGaCasEkoPpU00gMh00js5m
	 qYTjyWLnlPAPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F74CC2A062
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 14:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176753843357.32194.1096933699022103887.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 663e7641de200643f06f3ecd6ec22ff2cbd476498ef7765b5cb41a565d51f9bc
Date: Sun, 04 Jan 2026 14:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767538433
