Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78FA13E51F9
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 15:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781364994; cv=none; b=AmOZ6Z+bfrXgznnchcOMoTXT6a6PKpSPtcI6ggmjVcFa/+I5bJQ1SyGWFtordQ33KBuFryqpkH5b61eeDv9NOXDAOugewLPlFEWhl9FCV6C3/9RnTZwTKcLXSaUA3Qr1bnPDfEV4SW1PQsUUGbxcY4CX4F4VvxNTRExmQWv0sK8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781364994; c=relaxed/simple;
	bh=kP9KJYV6Q5GqDh5v58Xdx32PpiV8jR5Is1FAoYBKmgw=;
	h=To:Subject:From:Message-Id:Date; b=VT6kxjHVaibCstzkiarAoQwjce0f6RLxCuhWSVk48SXsxXTseNIRlquejjvI6VF4n5qB20eEDlyF3Uwnh/9ESEbo8QpMdXiVsKl5kdWJa8x/Nz5L6JZj5OpM4UZ12uAWUivByeYzneAHgIhESgn2DU8e8sSFJ5QED7pNicQc63I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ME2j6veB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ME2j6veB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD652C19425
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 15:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781364993;
	bh=kP9KJYV6Q5GqDh5v58Xdx32PpiV8jR5Is1FAoYBKmgw=;
	h=To:Subject:From:Date:From;
	b=ME2j6veBaihwd/9Psj7Zb1QAf2IuqDcifeHpJR1LcRfgzhKyw6UKZ/q+DVt6Pt7OM
	 Uw99I7odIQ7MJUiIWF9p6Rt/pRFAa+N1SR3k79jLk+dKCbB3730MzMR4esollHyEP1
	 UKBPPRJvxcVhnqyW9Eax6NOVxUclliacsH4B1sMvbKQ8XNC0K30jD1xoSJV+t21A5Z
	 TKWVOpo1rOPREG9LioOSigR7P+/PAI/NgagakB+evq7LH000bY0NCbShYVA3uHb5o/
	 QKEX3B9Yd3uVdwJWtwVBioiazrOaInEENbXIyjqgMkajIhU0/dp/7fVZC+9qyBk+by
	 NyP6yOhs0DzTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEFD4CD98D8
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 15:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178136499368.10584.11270868874676840986.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a86f1ffc3841a8fabe1b1cc35efc292e3c28353fb1b043f6da3f7c85646c18c5
Date: Sat, 13 Jun 2026 15:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781364993
