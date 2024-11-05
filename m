Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5238F29D05
	for <ddprobe@lists.linux.dev>; Tue,  5 Nov 2024 04:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730782554; cv=none; b=dIxH2mn/TnidSTDL05RiYOG/5XAGh763II9k+svbrjze6BlNmiC3hGEmZCO9/iGJMA1EkuJh8gb8qs+Qf2txtgqEsWqKfW5JaL3r4EY8jSQBhCR/hYvK5zEzdpaE3xhdXOvq1m61D/88Pg4n8KQA+VMRHlnf9dW9gwosES/CRf8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730782554; c=relaxed/simple;
	bh=Fm6oi+OJGKP+3qeRPeVNC0IMVYZEa/ilmG/xR885DSo=;
	h=To:Subject:From:Message-Id:Date; b=b7v+SDgn5yM3tDSnrjplqSYiwBCeXDbSigofVIavCuWuzTXAPpkEZe6G+rmyU5f106M4duq2YTXsWcF7a3Nmulrm8oZKeRRDeoWnHV3lKX27cuS2BnXAR6ZUK9Y4cQR/UoXZ5D45BrhlFzOVsMmCSnZdwSG16QZG6WdCb53eVXg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q/YPv6MJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q/YPv6MJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2131C4CECF
	for <ddprobe@lists.linux.dev>; Tue,  5 Nov 2024 04:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730782553;
	bh=Fm6oi+OJGKP+3qeRPeVNC0IMVYZEa/ilmG/xR885DSo=;
	h=To:Subject:From:Date:From;
	b=Q/YPv6MJOQrYu8pw03Uos/rfdVLf2HTchll4lO7juxvdhkomBULpWMhNl5pCI6DwJ
	 wAYSRJ0TVeZ1wH/vG43UG063keYUqExL2APePHPQRHTjgPpr3lqDDCRltjWkJwm7fV
	 IwlIuYy5wdokpDIaFj18k5xxoF9/XSpr41vWu7EBw/kyPAr9w3fGTJWTBIzoGh2l3f
	 j5xu7NVtQCm7cGlTY3JYLfWGUN2+Rfah+T5rkeAQ6QZ8OSvMXkf8Iv4f1FOM8m4Hn+
	 yDxXNk84ooLcgnLrR9bcxE3R7dC61Vz9h34Ps2R1KIciC7BU05HBoQUcYGOnd5Hvwf
	 DltgIawq/puNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8AB6D1CA26
	for <ddprobe@lists.linux.dev>; Tue,  5 Nov 2024 04:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173078255368.25868.17093222654913535797.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 131af1053caa2c93a2daac1fb6db4195113d6e4b914f5240580118a61c086f34
Date: Tue, 05 Nov 2024 04:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730782553
