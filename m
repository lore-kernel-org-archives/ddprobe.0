Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFD0D303C9E
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 23:43:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766360635; cv=none; b=m6wmTDTFX6JkGxmPBE3Q9o+v5aBN9qW3bJnLfoyV+qa2eE7bzjhYZtze5nETc1xTGIhZ6Jldf3g/JOVHLpKzHZ320igdssFUdNRSHC3DV+klsAhfBW9GUchMnl7DDVsesDfjcWeKpcSaE2cNYuFqvt5JVXSJqkrTP3HT5by49GU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766360635; c=relaxed/simple;
	bh=7E4qpRSfV9zjpjGVGT0YSHS7PdD2AMs4ebAHvWshoaQ=;
	h=To:Subject:From:Message-Id:Date; b=fQy8UhZ9p3yLCJkeq+KKA7SADE9udWiIha68PqHZeqOSx29ryCIcqSzljHVDtviuKLJVPLbvXgulKMJvzGIGpz4pGWO2GiqL32/IDl74wo4GQ/RdMFSqMFcUCDVWPOOHKfYtQ0naGx7zHFplujDBqcuIWuu3fL5W1iOLaDn2y/w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mIaezWIm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mIaezWIm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 96968C116B1
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 23:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766360633;
	bh=7E4qpRSfV9zjpjGVGT0YSHS7PdD2AMs4ebAHvWshoaQ=;
	h=To:Subject:From:Date:From;
	b=mIaezWIm1rqEFnXi6KPSjxWfncCxbAgL2hfA1SqUTC47YxGJg4z625Bo/geQchOqv
	 LykillHMNgyfMkJJaMJMeNAh8TOmy2hwq/MeM75EvFicZ5MbN6OxpAANqAsYxd9XG2
	 znP68E48xSKEJ2lC2IESCrhnn5+hKrqz+GQRDSzvkHa5iV56EaRJD/vnmd3lw9PH1W
	 3olnePZVz/WUmW50u9e6aukhsQnMIVHk3Y2qG6X0vIDJldoy7mUd8B2x74uuL0Ddjt
	 pb06/HeknU71AEEOTcXqF/wM5m6qa/09l8CezFKHywoC0BrOb9oMiktFayOObOK9L4
	 Blu5U7L5nWaYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F892D68BD5
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 23:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176636063358.14687.470004790185350450.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1c97a5f872a6cdaa68bb2c4b3d6d4d321d62b823bd31e28f4ec13ba05c7b5d8
Date: Sun, 21 Dec 2025 23:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766360633
