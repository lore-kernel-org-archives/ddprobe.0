Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE49723B628
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762963193; cv=none; b=Tm+gPh6QFjyuA043r6IOnJAVy4CCcaKMaSNcJGhvcYI9/ilv/34Jsenv6rp2l9hBPkGNtLph3+Uyr+veMG3oKmQvGuJIijIH6S/BFUe/pWmaDbAOTKOlz6v+NL+LEKYwSpeK5+SUkd/nz9s/TLYxZRp+ioqDG4Ou80F/Vd0vIO0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762963193; c=relaxed/simple;
	bh=S98kjDmIitkCBQQclYRDV+Q6cv7YiRG6CwuiojNbgjE=;
	h=To:Subject:From:Message-Id:Date; b=pzfxBOB9mBPAg0tpncyMI0QgCSIuag3wo2iz2zJMGML/gsPh4SYAS1BR+RWhdyK9ZbPYWQlBW1nLLgd2drJPPr+xB9qlr5wY54z3IQ1vB0ww1NSYZgjFv/JHQy+ECuvnYzQKKrwxZSrxoq4NVkMVPHVC1mlej0PsWosrLZSWMBI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZBwmLCOQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZBwmLCOQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9AEC6C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762963193;
	bh=S98kjDmIitkCBQQclYRDV+Q6cv7YiRG6CwuiojNbgjE=;
	h=To:Subject:From:Date:From;
	b=ZBwmLCOQw0MUOuq0TaVNc0HEfW4y5HJFr6UoiMT6LUmL1GLmB+cwYx1vkcjruKQxJ
	 4KXCjwmIFKn+kTBBWsJTm8830K44bIjbEXCrtn9NLTOkJu92UxB95eE6KP51W9RW8n
	 sbcUy0CCsIxgahWN7RK8/5Qz3GsztoaOXiyqJT/cjE4NIJqoztLCHo+x5EH15JaoLd
	 ZRWC4kUaH8jH4AN3zbirnzUY2YVAUWpB4YOwq8IWMr+oEY5Y0laUpxIltjjvaAPyfE
	 UAupBw8IsBJvW1DxBu1zD51h7pXcrxrOrmcA94yirWqc+USos4qwmAvutP/pgilPOf
	 yKagB/6DNbekg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F7A0CD13DD
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176296319358.26194.5676680261664092348.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a98cfcc8430a4f7593fbaaaf31b0451f09c08458eda01277adcd0d7696a8305b
Date: Wed, 12 Nov 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762963193
