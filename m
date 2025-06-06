Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1C212206B2
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749240593; cv=none; b=nTxOKYwP4dv6oXVa53kgdiJGjBWVceYscLvUf+qBPrO5SzSByp8zMe/W170dJ66r0gt1COeYZqjsJrfnpHVaFFJwr+HOgMp1AjYtFSZ4D2eL1CMnpBsRgBxKBup7VjUms1dDljBejzuLJLYP9ZV+EG89eSdpI27nNPhCOcMf+r0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749240593; c=relaxed/simple;
	bh=Iv4yYQqKHYI7R938gX8B3GDoXppHJV6Hi3BhWs41zLI=;
	h=To:Subject:From:Message-Id:Date; b=QP5keLisGtnWIPWWDO5fFXVBstBeT7GX9UBRegpE+ogrj2l/fhJpxQYBMhp4j67qIZOJ750pvG/TXbCn4upttQkx7iArO05NjcXJqx9btww19PSEkhMMC6zUn0ksFrb0nVrn7IcwdfygVFhhGP3gX6hWhVyVsT5m7tVLS7mY/Es=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GRp7adXW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GRp7adXW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A39ADC4CEEE
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749240593;
	bh=Iv4yYQqKHYI7R938gX8B3GDoXppHJV6Hi3BhWs41zLI=;
	h=To:Subject:From:Date:From;
	b=GRp7adXW9zFRsIidwmMR6U272No0ejJWy9AHc3c4dkBhEKIOj6XHTEK3z1/aMcvaZ
	 L0LfkSMnmh2lf0iDujbWAF6p2lT+dpPvUPaWPkPsukWmdRYsTEThFev29fC4Bh/SOC
	 pJ5fwnf7+efD7z1hYrUeyz21aA0MuB5UXbWPmq7hhtLtJIfK0TQ6js2joSYSh07IMj
	 iaURRcDSRt5eFGBNj9tc7UT16KH9qCirIEsdAkBb6SXZJMogBkdq8QAkqb7lPE6do8
	 qywyAj8nVtzwtLVArCXjvkRKKoj7dWH3If3vvC7FN68TkhJs4NwXixsaWdF2Is3UmN
	 aPa4E+H6ZKYHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92E69C61CE7
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174924059359.21986.12367294343659176256.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7565a0705920ee3a6a894a5c49a02864f416a7235fe2d92c133b734c648fdfe3
Date: Fri, 06 Jun 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749240593
