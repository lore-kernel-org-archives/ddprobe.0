Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19171391E72
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 19:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778788234; cv=none; b=UBfA/XjuZA66vqzUSK1+PuzTxQyA6fsJQBsMX7Of3co8IdXuAAb3seOq1WJywZVUtNpf8ZFge/38tgEKJvXNAU3AmG7pcqRAFls6JpzpT9YZ+AlIwiq2FURY+kqGd1m1+bfbc/Dn0kl7AYuR6hgFiPFE1R4UdOhkrEq8ESQbRjw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778788234; c=relaxed/simple;
	bh=ocpjYmxZZT81b7/AV7unItg8FwEX3s6onRBw2fQRE8E=;
	h=To:Subject:From:Message-Id:Date; b=Dtg+/iBm68Fcnbxkh02ZSoYQ9Akm4vAT+R15KmpMzFakClIbadpIoMGPxVLwWKOiscU4EG6PDQzWs0zI/uZGGBghEYaljmXCN15iZ74IM6flSHEkE3EGWZ6+5gGnCfp16c5GA5eJCYdEM4FKgQdMbD1ztxBJy2J7WeBR/MU56vA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ndfzVqtT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ndfzVqtT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB5ADC2BCB7
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 19:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778788233;
	bh=ocpjYmxZZT81b7/AV7unItg8FwEX3s6onRBw2fQRE8E=;
	h=To:Subject:From:Date:From;
	b=ndfzVqtT0W1Yqmkhx9Rl9ygs2Vc57DgWMui4th3s+xWia09wlpqYKs6T000ay+6F+
	 1bpDQtDMwZ6ns1cP/3k9l9+tYKgFgjh+ZqRh6FKpgLvCKG4pbudJNksWCaUYQ5gkJN
	 friUUXJlTYybQOfpb3qJluIiQ3oG6uneQ2XdEFUbJzdf+8XKPA6Fj37OE4Ofzav6WM
	 fu3F8+SVW3iSQi/bXSSXGZyUQ+GCpUDSef/QlSwcoYUgq6SaBXYCocWXG8CdoWhYob
	 fSyjseBpvW5yDcI9azaT/HwsDaMEl5/s43qOicUSukdZc1rTjR18osNlBtCZ94SW6Q
	 Y3Y31yqsMUlcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABADBCD4F39
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 19:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177878823369.563.4520434262952606100.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21ec02fc44530c441a1700058b0a79bf8c35f49bdf279cdedcba3b0f8d8a3a17
Date: Thu, 14 May 2026 19:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778788233
