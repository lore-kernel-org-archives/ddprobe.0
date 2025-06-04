Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F9C7111BF
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749066595; cv=none; b=UY1M9IRHuhn2sGmUnnwLXVRnMhOiODed7Er+H9utVh3cWBfWP/+V/EbDxMVvLUVKPsZQIq9jjbVNF/ugRIJShuJJpZAGXUUOVlcjTwRMYWhkqK+2g9RFIJAUNvCT9SePyy/SAm1nJB74zLvA/KfRebqElT5Z4QUlzUg6mLVZDjo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749066595; c=relaxed/simple;
	bh=G1xgl7FKSUFRWOXe36SnwbQnWZgUuMuuXauo+NwOSYw=;
	h=To:Subject:From:Message-Id:Date; b=Pg4mk3wbeFC2xSZB9m96BBj38zsmCE98/Kw8sJdSjS+//Au+AE+hrqdPVApE+5BCzVmE5Scg8kpjvWsl2d5ly6/90+Y9qn9tEiFLJuJyR/HHReRU7ZRzVcznqompB81zQErZ0/V6vrq4sW7kkpWw6wlsr5TYcqSZgh41c9JBwMc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fCeDq/Nn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fCeDq/Nn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3B55C4CEE4
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749066593;
	bh=G1xgl7FKSUFRWOXe36SnwbQnWZgUuMuuXauo+NwOSYw=;
	h=To:Subject:From:Date:From;
	b=fCeDq/NndSlq91nOqY2WCCOOH7Q4nTUPAjcsD2VYWrQR+d6dmSQi8ShJdXmS1x4Mc
	 Y+LiQEGaWVkcPz6pB7gRLEssS12Tot/9k1mbE1dJ8rkJVabq93QZ+5/4bxUvNWbXUi
	 jOK5eNwcOYgHMkEzy5B6DGzla9X2KdkFi5Y/seT/NuMxVEOsIQCYcm9SzAEiuOFBBi
	 NFQLXTnyvp6jwrEz94SfHf7gVRIiac+BU9W0RthjGoKCLySuuJnWvvywXTc1yK4/fj
	 zKO69j+lO2vJOOMsQATFWCXs/DyRbF06t99LsOrwICNL1xvEuv/6aPkaEg3M5RKwO2
	 +MNsVheUeG6Uw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90022C5B549
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174906659358.26674.18272130628146792351.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6037581619cc195385ef6aaa83bb761828cf97b2da36a0ce1bf031aab7d1edc3
Date: Wed, 04 Jun 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749066593
