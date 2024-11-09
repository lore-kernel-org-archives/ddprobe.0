Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31222233D7D
	for <ddprobe@lists.linux.dev>; Sat,  9 Nov 2024 15:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731167154; cv=none; b=Cqax+HBk2e5EWZCvC3XQvmtgDGhI/gx6ec/0yj/Y3hVhcX6ar69lIyYX3iOtflhZCa71gHVKFLS6ghazkg+56FXxoPATfxrPX9QNkyOpDwaVDRT9mu4MseGnaP1/ory3hUvKPcwvGziLed8ibSGd66lKTOT2vmlVXiDd4ZtyCv4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731167154; c=relaxed/simple;
	bh=fjBnIz7CWOjAeW7SnMdEhYXBDRKVvj7NndMKVn08irc=;
	h=To:Subject:From:Message-Id:Date; b=AmTtyoBt5TqUqT4fJH6W5y6A5Dyi0CrZIDZWqGmV+nOj6VQP7HrggeHQq1PLR6qs24raMgrna3rZN9p1R85GlbIxDGZbsctR12JbWepLbY3pwwEc/MQVvhHd7nf++YBln+bffgqyjBZ3sxwi2qqAyycJRsr0akqloAcAdGNqdNo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NKYHW/iC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NKYHW/iC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0C46C4CECE
	for <ddprobe@lists.linux.dev>; Sat,  9 Nov 2024 15:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731167153;
	bh=fjBnIz7CWOjAeW7SnMdEhYXBDRKVvj7NndMKVn08irc=;
	h=To:Subject:From:Date:From;
	b=NKYHW/iCdxaL0ZwjlwHZup3i2kKrjDTz3Rd59CpgIP4kh6+iWaEcHBGxfco9FqvMf
	 YPcsfxnFUBfKGC40iJK87Snf/CrQCIpPkw3PQN1wbtI4X2kZobX6rFPnqguW4fp7R8
	 U2Cckg+FiNoxB1eTqJ2s6rZTRySpoTEglcz8KKcp9QBYm06Z0dywizQi2IXULdoHZ0
	 ivPM5aptJfsw/hd4ENWzzYkk8AEfnqml4X8076z8GTPW3TCjAYx3zsE6mBxdt42NFi
	 p02hnr5EZ1GHv8qgtQhqP1HeK8fsAeSoyDF8h9k3cB9sgAnKrr6422HB9JgsrbYdSn
	 iaEj/pwpMHVhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 983FED5E373
	for <ddprobe@lists.linux.dev>; Sat,  9 Nov 2024 15:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173116715359.8255.14596049716216494603.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be21052945e8727ce3085360d03029be844ed67b7a98239ccd34e93342ebfcb1
Date: Sat, 09 Nov 2024 15:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731167153
