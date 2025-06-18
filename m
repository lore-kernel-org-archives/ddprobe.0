Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25DF6199939
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750215594; cv=none; b=fsCm8GM+q9k31EUJSQ+SpOpDlDc2D/XaTjotqq87bnC0MC2We8GBYRAdnDXMh9dQisboZa4Ezin7V/xKDbUNVJ4S2jmew4ruwu53TFf6LOxZ53ROXTEpaGhb4kOBpqdCFPM1kN+pYj5kZV4FUiru01qCoY4WoZbX1Y+yjGxYqxk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750215594; c=relaxed/simple;
	bh=QfSK/HmOG64u4sy9BGWc9t6MsH59kxvfWYZecDJpEpI=;
	h=To:Subject:From:Message-Id:Date; b=LnKf7G1YIruTDVz1BXVCO5MWhpwFEf+rpg0KHMsSf6yvquI+42YZmcoxpsN2yoRolSMuQ13rV0zOsAwrmpL/MndSHRz4ioZ8feiaMa/mmrW1Xv345v2FPzUQwL47ptoFR0QW3Vb+pysXSYDERXSjSLN73ibS6xExeerCM47MMe4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OnaVN8yl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OnaVN8yl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0300C4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750215593;
	bh=QfSK/HmOG64u4sy9BGWc9t6MsH59kxvfWYZecDJpEpI=;
	h=To:Subject:From:Date:From;
	b=OnaVN8ylNnCcRKCyb1ws1M+G4cl0G53QWx6wPkTB5xk6MFq1jYuJZew9Kikv/9SCi
	 YjleJrDMJZm1OZmKKvuURbhcwi5eDOFkLdF+MeIdbBBCE9T5fkboWpkTxFjRqDGazk
	 k/EyE8Dh09siSl4FGtQNgV/b4CsD8NPLiX4z5fQZDgM9hfqTAl02LyZtBtoTLMmVcu
	 M2a1AKfk9vy3gW5d4Wo8lZUZXUgMnIafpwCXtvQ3HuRiLldXyhlo1/ZRMMyUYwgqOz
	 L5CXvsXxo5GNhioK4ImWO7pOvlKO8eGKYAw3BgX/iehcCug+O/rHLlNpi2dZuJ5xAD
	 FV9Twgc3tbLCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E8F5C71155
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175021559357.26902.14207214849340972409.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1fe33fbc3686f4ec96b08ca0652c47eab8058e5a60e830a70515bf00cbfd7559
Date: Wed, 18 Jun 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750215593
