Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2231A204F99
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753531794; cv=none; b=pGBci2oEkGwAdJffMYMAddlKgmUHpga1kUqpZucWlagI85wk21m3p6aRDyEK7p54/hw68uQ5KSjB0sEheY5k+GOKnMTgr50vEs1OB2WGCMbRclWoVDDoQw6KnC5lOiZKATzJbrTGKmqjyPcpzzpRF1qYqJAGe7QQEeYBKJ5NnU4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753531794; c=relaxed/simple;
	bh=N7D6wJBE2V0XOJdI2fCVFwPQzkZC0/DCYDaKWvXmPII=;
	h=To:Subject:From:Message-Id:Date; b=h0ei85/n+wKmwUGLE45A2ONYALggWArllvvW0yb7ZTtCPYoVGBzrzmwvq7sqlUtcgDadpp/05Csx4Vl7rOwlj1y4JlWvZ7MfyIi0GxK4y+FRh2fOZ5csAR/0Dwi2fMKnsE4AP753rAB997UMEj9mR/GtJcKBbHsTEEF5XwnitSg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tAHhnyfM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tAHhnyfM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A07DFC4CEED
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753531793;
	bh=N7D6wJBE2V0XOJdI2fCVFwPQzkZC0/DCYDaKWvXmPII=;
	h=To:Subject:From:Date:From;
	b=tAHhnyfMPebbBbTbe+ccjaOvm7rSPN8LDHvOHIbav7z0kWgL4exR50LJzfE/+ZKB5
	 kenQXcEWIH3EN43UROem3Ybdz388JKQWbu4l4U2gPL1DaQhYyuAxGkvZFrUD10NVt4
	 UD5aOVTDr4N9vaAdIhi2s/rKf9m36mCUveh17ZqyiqyQS7LYHKJF0WGBYgOv401PWe
	 +3ptPad3j/8SoT7Zb+CTXJoGKTxQc+A5CSRD7wOgrcOxyKh8FArr20wdVLYqr96Wc4
	 3FZvZ1+im6kcVzQnW1cuz9zpyDIP64rZYY8zECzRVXJCUk4XonsLIsvtnvj0m27cjL
	 0Al+ipZUahclg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F3C7C87FCA
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175353179357.19221.17702731394719191775.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cdaa87ae5ecaeab174a2bf9f5c6563473e61768d434bc2ea0ad00ab6e0eecbdf
Date: Sat, 26 Jul 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753531793
