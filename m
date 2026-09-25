Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52B0D4C97
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 01:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790298034; cv=none; b=d3S14jEfjgZbdo0umzlb2Ui4ZGNk1/8yxi6V3Zic9cYKMhV56hK7yuPxx5ITG/ufNa3xP0TxtvJnBCebrkex2jA838G6R+T+MFS0ZLjztOa98OIpnKxHrSqRKecqguTjnXETxA3fP0rkUirUdtOdyJLMKvO2bCBzbRRDCwa+7ug=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790298034; c=relaxed/simple;
	bh=sQ0cSB9kCFqPqsAP5cNLo3A15WcS3Twg6LfwwYLN6Kk=;
	h=To:Subject:From:Message-Id:Date; b=t5AMaFqSgczIxC9cup0xdxWpDCbxtRyWD31jUa91bmG+FRUXmoh69PqRzbTuuMWsGszB1qG/ZsnzdcndM9oD6eSkgIH15ekJmM+7JFExC0s01nQllkHdjmwkBZ+hBpLBNWgqfmIzaMuAvppzDsFE5fq9ptTx4vv1rYkonbT3i9o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PKg7h8hA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PKg7h8hA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D52BAC2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 01:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790298033;
	bh=sQ0cSB9kCFqPqsAP5cNLo3A15WcS3Twg6LfwwYLN6Kk=;
	h=To:Subject:From:Date:From;
	b=PKg7h8hAx5Kznl7fdfF8+LXvSSt/6Bpin91v7SaFBdOBF1yZqF2H7hwzPCSJu71m4
	 4UYsxR+sPgMmh+l0IF7YeF6EVPHO0YzOSqkTN0XtufyzQWLn3wHamC9Xw7bfFYbFQl
	 nAyqkOfBNTTeK3o0zuR65/iGbK58H87AMDI1SCPvfwp9VAPMG7LnTeYLiP3KBOg0nK
	 xYRMP3Ro/1K5Plt96sV1EwANQVEI5FU/SHiHnShiyHH7Kp0ZdeqQp5dgeS29Kxp9QP
	 vNqM5ixWjmIjuwbCCl61N6PajXcONIOSD4lM2e/dkpTQg0sr5CvnKgfhNJFBiEAi99
	 rdJG9luzhapdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF87EC9831E
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 01:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179029803369.23945.5284836884937534309.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8dd81d3af1cfa67a7251253d483e44fafdfaa6c8980de05f82636f37a988703
Date: Fri, 25 Sep 2026 01:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790298033
