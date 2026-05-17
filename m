Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D3702868A7
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 03:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778988034; cv=none; b=AqAL3zWk+zIU4nFWaJKGVp1cisrO5qN7V3Bjz1YhlQ5etUTBHSppz53WTbDw5O3VGPbry2vLgIemkztcknhX5JWzopyxE6uLLX3S8Of7yghfARneMf81dl4OvS3laxQP3DhWRfHE2G8e61k0DC7VL4eUDe+lKd1VtvUqvwyK67Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778988034; c=relaxed/simple;
	bh=y0ZMyl6wYTLY/ydSjqHay4mwx0g6WEO7RIepcGJIAGA=;
	h=To:Subject:From:Message-Id:Date; b=rgVNwpWUeE30M4yoFAePk8WpIIrmIQz34DOIS6YdpPmGZ1R2Vo4OMujJ9CESceNsTW2ZVsC/Z5g6SjiU6SaZ6asJ4+edTd0Ijd2oO9zKSLAtHtDFQVY14l8IDQL82lgotE6Q4RnFBSTYKZwW8ruFR3c5iMZ5N0U49JLaQmlxhDk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AZfUwF3g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AZfUwF3g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3372C2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 03:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778988033;
	bh=y0ZMyl6wYTLY/ydSjqHay4mwx0g6WEO7RIepcGJIAGA=;
	h=To:Subject:From:Date:From;
	b=AZfUwF3gP7QblQDoH3YPIcHS0d1D/mp1/1sQjKk9hyIFKaVJxbgOZ4u4H9vOzgptM
	 WXsOm+/f03PwIBvsTrzTKvqjBgFxpYtYsTp4pgawUKfTQE283NaUWvY1YjfmSNtGgg
	 4QdT/Qd2TXp2usCKtiR7OwcJo6y4jnx+ykN3CrksOk7r+RybyxISG/5AicrEAB/beM
	 T1Fo1DGFOrT1p+AYSf71rp1wEmGJe3EmUimehK+1/fua33FeU30wKjXPSYQR49Kh+4
	 32TKj8CGSFFTzQNU4jHn5yrvnt3Sj+G/BP1OhgnXsiawHHujpy+l86645zvyIkJB2G
	 /58SbCN4eQP/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0564CD4851
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 03:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177898803368.31367.12829855375311363890.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1672d40d60cb16a8fa096231f050c65b4020a89b0fb8e86bba8d9c0c6ed7996
Date: Sun, 17 May 2026 03:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778988033
