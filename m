Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 236BA2C11EB
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761597594; cv=none; b=bOfX9a3O7Q/3RjEPcfl5MzUUr4611xodvnKSKdTxDiYA26oQURrr3+0JqB/LIMB+HffO2YkVUEzFcGG1SmTEd7FFXNUseHArITsZu9t3UKCNihHgV3U16N45dxVjha/Mfobk15+7itWl0HW2GSaeqpzWHvVMBDUQro+tlSnvKsU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761597594; c=relaxed/simple;
	bh=8Y3wTc49D58gF1GwK5V44GXohtuj3VMrrDFFVP77SrA=;
	h=To:Subject:From:Message-Id:Date; b=dDIUJwIldhF70S6UXOM3BgFkXUsQFUEX1aHzzVsdS9/7exdmYXK2SQCa82eTR1RguFR7nz3IkJ9X8Zro1P+CDkw6m9ftbL6IZNZXzsHquY10s32vQTp8QjZFud/ZsAeTt2sxjXM5LBUKTRLzkcII9pJ06l98yn6hs7vvWkPSMqY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kmov//jT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kmov//jT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3228C4CEFD
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761597593;
	bh=8Y3wTc49D58gF1GwK5V44GXohtuj3VMrrDFFVP77SrA=;
	h=To:Subject:From:Date:From;
	b=kmov//jT/ALMHm8RUNi9bLDAWodahsAsQZQ+IgG+RSSRldslfPsWCKHB/dfxuXU1Y
	 6zh//w7NQYtXphgTukwcezF6Dgnijjf37x9WYmU37MxmvWw6aK/i6KUqWSzdncw/6x
	 o/UnoFsZYXqgasqtjZVz84ZZKkWlv5m3wJgi6PGM4FVrWd1/b2m5/osEZA6xdrajYR
	 GuYgxJqbXCn/YsdYGlt2btXx3PuDsIe29YQNl5d0XQZNd34tXiWTwafWJy6YPgoOhh
	 OAo+Z65hYsiGcE5xgPaKSdmfaHfQ9+ttLXIEihrZdhaUsszHThL5YfTHIBI0+9SFAb
	 mXUSVMpV48LEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FEE8CCF9EB
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176159759358.16345.13825605823565142962.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 373e6973ca6d83fbf8306fa8e1b75a98c93b67689b7535b8ceddb88e1e6b0d0a
Date: Mon, 27 Oct 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761597593
