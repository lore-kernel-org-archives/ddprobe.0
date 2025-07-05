Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EA5E1A073F
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751722794; cv=none; b=f0Xy5jCRjbuWi/5JsRa+BmPUoBDfD5KT9Bp9Hotct+LvQrYN4lBfAURR/BT3ER3CpNt9XCKGU17JTsY5b22olyByqpQnDMKZoj0yIOJAH+9XUoH5dLLwY/VzCxkuz4RM+k8yC6gUApHnAZbbOEW6Tvb4fMzXX3lilO5gWUA1l9c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751722794; c=relaxed/simple;
	bh=kyGXdlXoVPyaxc71FYCmQn+mFUDksvhLg4n8Kt2KbDY=;
	h=To:Subject:From:Message-Id:Date; b=eVumdIqaCidMHNiMdruLkdmLkyATPl5HdU0YXWAzqo+D7jm8rtg/DGuLJp3f3qBX+AGe9l4pN0Xs9yyh2Zx7DyysSozns0Usnhh5Wm3u/RmCMwSha0xZ7gBeT2IoRncxw9YQQGbsWJduvnD9+uJbIFgkDdIapHmeLP72Pjx1jB4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UREqF2bZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UREqF2bZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A563EC4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751722793;
	bh=kyGXdlXoVPyaxc71FYCmQn+mFUDksvhLg4n8Kt2KbDY=;
	h=To:Subject:From:Date:From;
	b=UREqF2bZ5pDlk3nRsT8odU7hI2IvCCOQU4E/qIZyQvVoWB/W3fz00yNt9kR3rsb+D
	 nUHNCiqqEu4cZhu4UViWi71z4VzyrYMuv8jDms8J+h4LuRYYOy22YRh7WpApT6KolG
	 lJshQIkS1AKONFHEWsqpor0IaZm5CT3FCtHoYOd5oMwwLVOBQR4NK5YE04o0u1F6ox
	 hpseKseRp2mSrOdtctrIrasid3rzgagjrH/5h92Meblee/UEWOblln4d5n2LLZiPa5
	 RvMt2KXDPvGT06sn1n1YsKpF6jqb2z9Y+Hkz5M5XUiFaHsjJ+52ayFD/oir0yfXYTx
	 cUsmg1T6u+NTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 937E5C8303C
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175172279357.11961.4235931882196573736.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5563fb7d9aa2d7d861235be147808ee2cf78df61989b57c98a95980f0876df0b
Date: Sat, 05 Jul 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751722793
