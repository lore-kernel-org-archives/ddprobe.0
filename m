Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14FDD15AD9C
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 10:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732877754; cv=none; b=Kvm0Mj6QAUNKmTJnwKQ3PtvsGMnlB6+YQ/UYBkE8TVfS7GOTsb0SKv9LggYMN5EOCYhl2hT7sHKbKV98MmE3ocP6Zyk1iGHseMvM++lxRMH9dCso7/dU3Hvc70wHiK84MqTv/4wqFMeYaupXmcgRiS66Uho6M8kpa6Eb9DAduog=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732877754; c=relaxed/simple;
	bh=oe/VnIlFBVJgc1UYtaIBhLYIiSOJsbgWSjMk30juENY=;
	h=To:Subject:From:Message-Id:Date; b=no0FSQm5rwARTuGGTRFZXRkV/hO8eokEzo8mTbcqC2+D64OCNwz0OuQYZZ7JtQq9cSDTdZUqRbi9ui7PVuo7N0k8EHxsbf0UIV2S21vJ+VBpqGw6fNUNyFXETJLcXVNC8fVheJv1tIRSsXD6kUIFXVvDhn/wI8KXdgmro0pmkcc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uH8J6rll; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uH8J6rll"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0A50C4CECF
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 10:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732877753;
	bh=oe/VnIlFBVJgc1UYtaIBhLYIiSOJsbgWSjMk30juENY=;
	h=To:Subject:From:Date:From;
	b=uH8J6rllyLGpTaqDffLWtGep9b56NPSF3dKQyBZFJa/m76tAWPCqlq6+7LggO9G4m
	 OGSomPam4b6alTQ3vEpOTotSsWXlFtGOqHUtw2QGjGQsb7gMS54O2c/w/kM2llyT9b
	 RxrI+RrjkcBdchvsyhw8kBVL4BhrYT+tJdrWUMktumojbd43ZuA8QCv7IBdIlxaJUJ
	 C/l2/kGMW6EWqO46dfiQQv8azz5uqlT7ZwP3a6ATCFW3zP3eiiA+1kbDvW/x5r4TZ8
	 iOLRiMJ7hLMzF7yxZRXUhQ5aPK2dFWWpquB/eH2cseU2dYSBk7mGzKNjQrxx6IuYsI
	 sqwIIJRMbcSWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A452D6EBFF
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 10:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173287775362.30562.11564677724534308211.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d7906b817f3f0a52fe8062d4096bcc70fd8af7a0b6f2753c06829bbfd6389c3
Date: Fri, 29 Nov 2024 10:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732877753
