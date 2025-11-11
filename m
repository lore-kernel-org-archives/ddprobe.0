Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26D0932E6A6
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762828194; cv=none; b=AVFFa2wCk+IP6RfvqqJ0qdt6Y3CYdqXeyRzCmo8inZcJX697BhiAX5Hd1/mlKA6/5AGsJB+xT009Qbjtg8GqGqXdkNyCV0kjg/kVUpAvR66brGtKultGpzKjU4AqMrvQhN+CAgpW20Dw06y5slwr7sopcMwVit7sgA8bcxHcc7s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762828194; c=relaxed/simple;
	bh=iXWDDYDq9IhNGKb1MbUb5znqb9sMw/D8vard93f5Dwk=;
	h=To:Subject:From:Message-Id:Date; b=D0AoI0by0gKVzL4PTJN+ac02BsKDAaGLKcnFIWYOgoPHR7diyHTq8TWOtUg3Q4fRV0TxTB7Yzk34GL6kIaDU3b9hsrDYZQ/0B01gz/epAOVPWfQASEDvLBh3P+K6B5L4ZyWi2pVP47eUkAxE/sDFaQ6BC9d1Ppwmj3S2tZDNqio=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I4YjWYaz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I4YjWYaz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A275BC19421
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762828193;
	bh=iXWDDYDq9IhNGKb1MbUb5znqb9sMw/D8vard93f5Dwk=;
	h=To:Subject:From:Date:From;
	b=I4YjWYaz3jp1+NavgPGuLhQQLrk0qWROTGm49RL7NYgsnGo87rKIgzlFD8VHsDgOg
	 QYR1cOhrjzNi+TV0+jce9GtmXfKZ7cmDgIx5vx9PS6TU3PwwVDLxReAcl3oWl0D/B0
	 i0zsjPp7W8Z2zAPlqGiOu5KGl9nFT3FWpZMQEvssYsjPC0Ko1y4vxJz937oXIusIB9
	 AEql5xOOExpI1EUTorcYUkR+3031opR/e6i4r5kfS2geXcNGbHhJ5vGk+1bnmpWfVc
	 MJJCyOBnxOzdDV3fn2rMmh9l5Tu1ca+taeV6YVeobw8wWXF1cSLfXzIUPtpYaTz/UM
	 NH6D+KjL+93jQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 953EBCCFA13
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176282819359.22862.9253636101000468242.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7afd65e5c5ed91dccb62fbddfe72aa1f9046e264786c1c4969eb0fd5a2e33017
Date: Tue, 11 Nov 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762828193
