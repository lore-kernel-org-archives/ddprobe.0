Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3632E33E7
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758742194; cv=none; b=S3hhuSWTON0WK2RJf4JlZkD9J22XCtlyjU8fH9GKPegDkUNqiCpKzOauO3EV/vGDgVwUfvXntFdBkFXLW9+5FK6uEa2fzNpv0xgaALDCD8F5R/8AfvR6eulzKiAo+IkO9F6a2e/jW5iw1bTtnRPYBaLY4itTb0vosHPcHACEG30=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758742194; c=relaxed/simple;
	bh=2r0S/3Kut4bS9nxWl0LKu05BeCPjjg+bh7YCEZXCtM8=;
	h=To:Subject:From:Message-Id:Date; b=Tf0hyIFlhX3Y+iqRvvm09Dhrwts2IsRE4mXaLunqeyxK79xkMELMSqcUjy2QFPdajh/LLHBT/WY3IZA76+9gGOLzyszv+HPE0o1ANRTUI92Ujis07Sjs7EoBFUl5qwxd+7gDyW3GYTTJwd0dNaaIgpNwURYeqq/HhHeatfx8wPY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r6X/tyui; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r6X/tyui"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B015CC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758742193;
	bh=2r0S/3Kut4bS9nxWl0LKu05BeCPjjg+bh7YCEZXCtM8=;
	h=To:Subject:From:Date:From;
	b=r6X/tyui3OAXTrkKg/i2Jr1W5/Y/7kLCZktc4z6i5WR5BG7qOPMFL5Y52EFaKrXOk
	 m/prakI2IG7f1mOpv2faTMdWS/ShTYMTQm7mFeyYyGchAC9O9+NPr+g/udYjr69N6d
	 SEtWe9oKX7NYhfi+1jCyQF5I4Ds6RnPXLDZMQdr/QGL/q4RNemIzClP079rNY/sHBZ
	 uiipAp+MxbQ+oLpzvwJXrSpJtO6BK1FOT6cyrUTGuqVpeCO7Xd674X5wImU5UzLUQ3
	 H8biJGhzosIO13goqDfzbblNySW1IdNN9As1AsNwA0lduPg/diljl3Q2sePrsciiOx
	 u+NTvjBN193xA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 977BDCAC5AE
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175874219359.26348.17525166419667751883.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8711ea14af87b4e2ed062f3f8d741138017a57d82a9ca1f2fea3c56e201fcf06
Date: Wed, 24 Sep 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758742193
