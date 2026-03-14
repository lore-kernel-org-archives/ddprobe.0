Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1632B1CD1E4
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 06:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773468294; cv=none; b=NoZF+RAX+k6qaP2OIZB9dAw92FHLT3rg7Hqa+xC6zwt81DS+gMYbmOLhhhMnRbMCZiaEFCs2lKXBg1Br+2Q69zdNGUrpTJqU4Oh9sU/9v7pLlISOHQb5i4RCrow45b2M7uJl/jXvuzY0GXVf0X+1IUljW0gdkfjKdiRtjJosTkI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773468294; c=relaxed/simple;
	bh=up0x/1GGpdG9TFpjQ98gjoJAlOzmi2nRcgJxf424Or0=;
	h=To:Subject:From:Message-Id:Date; b=Tuab4w2W3C5Rzaev91CY2puFC7/T3NcXzEGHnjT/CTSFImco4r6vWmyLha45D7dEMWmDOdMnYeygi/cNYhxXk790HofTXuLkmMaJdDEFgp5CVK+vxlE+xFZtfIHcX6YjASARpNRQ2kPqu+Rw0/xCDhlSiGztsjJl4HKqYzGZ904=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SyHHkOV5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SyHHkOV5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A324FC116C6
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 06:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773468293;
	bh=up0x/1GGpdG9TFpjQ98gjoJAlOzmi2nRcgJxf424Or0=;
	h=To:Subject:From:Date:From;
	b=SyHHkOV5MpMUB/IpiORr174pQfzV4WlAHLrBJmWXu4/KIja6ehG1BxUs9p5/ZiZ7l
	 uThNxvnTuerCjSfvOoJvwKcaSQm9bEcnbYxdz4isKwiB+vwcpaRGPXOJsYgvDuhpUt
	 NFGloOiB82LkOuWG/lXUZtUYv8DJKaCPWBPteGdLBYFWbBjyyYwi75Gygg5lTwiqFH
	 gb4ZILoAdXWtCTBym8r2sYfw7tIBlzTLOuCMgkjb1j7Jxogd5Urao+CcNbM5jCk/qE
	 /e3gJObeI487z3mSPl1JNX7+qrwUVwRoZDGbR/YCIx774Y0vQSRvE/itmCFAxEv9jx
	 8w93Z1ZXbs6Hg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 910C1107BCEB
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 06:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177346829358.12510.12282522757138666888.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83379b0a9445dd00205acb8f37980dee1924b111877a5d6887adab37b013b6e2
Date: Sat, 14 Mar 2026 06:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773468293
