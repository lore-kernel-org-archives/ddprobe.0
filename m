Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 289F5129E6E
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747818594; cv=none; b=NPFAFcSGYDhAmqut5NbpyrNMy2ZylKZ04Z1CqpxP8jt6UW5r2iiQxnyHgNQJKOOX+oRQiETPnCVw7DiR3jSb2+9VaqXlGVTSlrf+ZtifMsU5eoUXESk6F2sCy0BGHbIflBHJ6YuOKha+7mZTQCas3qiqQSR+G8SMtKnK///W/1Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747818594; c=relaxed/simple;
	bh=qUdBRzKuYn7yR3ODU9k2E8l5s5sSScqFqD6GvmKIJUg=;
	h=To:Subject:From:Message-Id:Date; b=kYmLZlkBw+z0JVzBAMPpcrqItp2cHNbdfmNXo2IGiy173wRFuR0uXYUwtzpp9DQW+Boo+GSGgCzMmspXw6gAeBvyJgqVdtSanfNJHBzjx3Yh/HG67iQBrlt257Va0zWSNMSkjOsdoz4bxa3AEcrYnOFHoRtor2JWN2UlzYNAqWM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gqamzQVe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gqamzQVe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A020CC4CEEA
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747818593;
	bh=qUdBRzKuYn7yR3ODU9k2E8l5s5sSScqFqD6GvmKIJUg=;
	h=To:Subject:From:Date:From;
	b=gqamzQVeJXZUj2IyEBZWpnHyY3ubFT+uK0adXZio/K1FtuFx3bt/hLPvlWE54bLZO
	 F98bx6pRhX4TxRZB3UqYyGO3XqaiKIdohvnR6P3vQsm2BhScpSdsqFVAi6TnNJBbSS
	 31vgX+IX1fSwz3KiWLAnDtvfw7nY0CIJFmM0SvIyODRxv4/8MGO+8AdOUP8YCWXXcv
	 YfwlSoABdAiRFpCivXpWDWbrClgarmyuOQuKuYsR5NemtRSfhO62wo1ZnboPb4tIoM
	 8/mv3YwE+konbNEmw3B43o1dqs4ivHB8UF2iPpsDKUrKVA1Ti7Z+se7WiTBxuzCqYi
	 MWEU7US5BTzFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90028C54E65
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174781859358.7604.5358979630278730682.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6a714d2858a499ea4798baba21f42cf5c5750e40dea49db647b6d83dd5c53b3
Date: Wed, 21 May 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747818593
