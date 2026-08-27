Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE355401A33
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 11:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787829635; cv=none; b=finAmuMkgvlboCZltvL/KxeiNKcviZDNocg5yZpcyq3KknPIOYefqYOsdOmpH6y+NBynDGIqRiAIhLexMGAA0t/Rm9lVgo4TfN234r+cuhRSj86UAckf4LM/b+vESNfhpsAr9fygMY2YNkQvpKmiGI+I2xc2kWEML7sBchIJuHI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787829635; c=relaxed/simple;
	bh=8YmWUY8Wk70hcDQO0XxS2SmmWCrf0tu2GniyPuLDfvE=;
	h=To:Subject:From:Message-Id:Date; b=FcSDZftun0s+YSElQWQprMCCybKXZBxpSunxTpy93nnIY2WHjSQAaGsz66NUaFJDRsE/EqmADwUChlsa1xx00Yu3Vm+pCAeqiWV/FIJI/CE1xMEDUTCQS9nCvZdknaM22HL5qxXjiEWkz70KOeZcciR0ScftHU4XzrqT3/D4n5M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DI1WP963; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DI1WP963"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D71E1C2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 11:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787829633;
	bh=8YmWUY8Wk70hcDQO0XxS2SmmWCrf0tu2GniyPuLDfvE=;
	h=To:Subject:From:Date:From;
	b=DI1WP963zBP3Z5NrthskTZkDvbSkgiA22ay9pNRRRMH5zk0/kOtAvE1tXQbQZ/OYw
	 6f48C+6yJ5BqRXCjBOM7gX/534Dtk2hCIO6NMxtPhbAH0ngeeAhd+VStdAmBZBbdjt
	 hixPRIJ31gSFrnhH9MPiP8pj78zz+7mO2ZnaR0K1KhTWaIt2Yz+kpUc7hslVKthP1K
	 uZinmwcJUNrp3xGoFQhzDN+Di9EiMGIh3be63CaavjhPLqODkK50IcShpn0X05DyGN
	 wDiGPL22pnFLdPQWqm4paR0BODgqlIhNHq9xNCq6wCs/rfsuDng8bAFpmKGDRArVIp
	 wgt8ZJ93nlUCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4D9FC61DC2
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 11:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178782963373.19440.322616701443418955.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5ffd041287f98970e4cfb602bee00f8df12206d7a8b3a83b9ad535902c895c1
Date: Thu, 27 Aug 2026 11:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787829633
