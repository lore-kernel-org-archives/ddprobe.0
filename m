Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6ADD42F2914
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 04:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791174634; cv=none; b=iBkJ9S9JfffaNQDrSWIQiJtMOb5pMLHOJKrNdQsteULxHesLYkaImxcTDKtNOZ/wj8ZrYRAcuDbFw2qsFhlA6LnYpSLxTwTQ4gqbyKMY9mDCljXqQNy1O9QRuVXxDLvaFKHNnkMzbMUDa+RYfTRKChDxQhaqCHFCH3tbnVNCkrI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791174634; c=relaxed/simple;
	bh=RBFwZAzpaD7R1p5R6KMCrMkjpTtWDa7zSpHBTNoWkQM=;
	h=To:Subject:From:Message-Id:Date; b=SX8TzTfW7/lFUnGWJDPaWdblK1XdcIUnaFB0ZmeGpHRD/TpcS72dKM2ElsII7lbP+SgRycdTqzvHzgyO+szQ1phjd3fXz4TNhZP2G43ve+OFXwomh6/4+yze07j5Rldb3Wc9uhV10qISmGdPO3v8x4EWPRw8lxCYlSh0iEvc960=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a1jKE0Uf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a1jKE0Uf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E076AC4AF0B
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 04:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791174633;
	bh=RBFwZAzpaD7R1p5R6KMCrMkjpTtWDa7zSpHBTNoWkQM=;
	h=To:Subject:From:Date:From;
	b=a1jKE0UfPxBuFzyu/W+4yliffwyRco9WhoPf1hfKQHh7gP9wKAi4Gu+IC7HIeDWO0
	 aoixJeiqZCAOuDH5Q8ucuKOlmTB8R310/QUlrWq8/VLzQQVba5e6A05yA7Jgdh4aPD
	 IC4h0H4O5qWjhkFsX+wVnMBFyuBhH8L5UjQ2+hJmBV4AC1c3SyQYHhuxoUtfEY8itN
	 b0aJl4CEccMJyubMMcPWGIwoOU01WmEw92/flIUb8JIgfF0W+xXnjaa1qgdtF76iOv
	 +ti+9AtFjV3vjcEOklgnhwmZguF9AEbRhM62EpTf1yexyCE9F9AJHd9izDILywERZe
	 lLgdMO7ClX4MA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9017CA5FCE
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 04:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179117463374.29812.6708093097908216830.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d0479d03693b41658880562c6544a2eafdf31573131cea79d9cc16b9608f04f
Date: Mon, 05 Oct 2026 04:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791174633
