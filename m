Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FE90319860
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 23:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768778634; cv=none; b=o16TWNHast9rlUWG5Xv3vH5wHOY2yO6sHJKbgg+pmPOHIic6wNbX32+MOOlcni5fW4aDFUNu6AJDK6hDfZIk2/qRQol2qTKHzIEONWgbJdb+5sO8hrpbIuap7+iPw+rvLEwzZq5bzCs0HB1kJd1Ly7HocaV/dfXX0zM9++UI0NU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768778634; c=relaxed/simple;
	bh=2s6NINkJ8q76HqpcW+5Ij557zhWIv99JdJM/hvBzDuU=;
	h=To:Subject:From:Message-Id:Date; b=XQDPf1K6YyPevCbAidzmdEDrROII2PfCP9ATHElG+ZATQAnP50OiBXVU8hv8K31YUcJAU98hSiBZ8oo/sXHJWOkvUHaF3fAnnbH3V3lejpePW4IYAIGo56WdDUItgVlLMGVhpxSKCal6bod95a9bDYO8n7LPnR3wQKq8iUAnHu4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IfpIbqBl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IfpIbqBl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC908C19421
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 23:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768778633;
	bh=2s6NINkJ8q76HqpcW+5Ij557zhWIv99JdJM/hvBzDuU=;
	h=To:Subject:From:Date:From;
	b=IfpIbqBlcNpnRd0Y9FcMTuLKx9ny8tc/HYNvcQoHubLTWmtUJuSnXo/ZW4RVTNvBk
	 K/yefeQw2oMMM8ZqACYnPw+p5IB1kov3zos7gdbdWXDrllM8B/kXh2MGYHwpRZitUV
	 gScJdyCVi5cxhQSFMgKub7VbRgTZtBimdza0xtvL8UhhhtEj4NwYZK+N8t5J+Ebg1t
	 DB4RfVrD14UioQ6UmSQvIt5Q084CDhbjF/vgeC6xDEPxPYE6/Bw2HEgF+kV3aHMCQr
	 LMLTyayeE5Ly7nl3ba/Ds7ppIgG4AfQi9BhNzi3G0fH/whdMJGRvBYulxE2FE5wan6
	 XUW4eZIGxtGcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D905C98315
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 23:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176877863363.30704.564966473287328621.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 795e2934ae5c6780cb0edf2095cc8a33cdee1bdd72bfa5cffe94b181023a8c87
Date: Sun, 18 Jan 2026 23:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768778633
