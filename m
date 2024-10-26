Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C97BDF71
	for <ddprobe@lists.linux.dev>; Sat, 26 Oct 2024 15:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729957554; cv=none; b=LXL95Ajki3g+Djw3kEc+awOuaqi2jNo4+A5ujz7k1Y5qAYvIQkdYSA9CdN44bD9CEBxar1TMyb6kZEBfwqXoY0M1U894eN7Kh6HA4QXmJcxFXFux7X+tjaDoizECzpIaLNuloS/rASH7s8p1O22pmj1vdKbELgKE74s21zaS7x0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729957554; c=relaxed/simple;
	bh=bULyCIhfJ4RT1gKLR3l+Fuxb+TOLxJ+xE0isGvCbnyM=;
	h=To:Subject:From:Message-Id:Date; b=i4oVkvGdpIWawWe77zAO3nK4yM27OfpPxnzfiaNPu1oEUg6jrNUJNgUOnjrvqK9S18C4RdvYZrzofNjt4k3q2n3OI6PW1MBR4Zj9mRwN8NUAEVc+ZGpReAiPfgAa4l7lFZJ8+joylVWJ4y816xyumFS8yzNDhR+gZt14DN/6SEk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gh/g/XhU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gh/g/XhU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAE76C4CEC6
	for <ddprobe@lists.linux.dev>; Sat, 26 Oct 2024 15:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729957553;
	bh=bULyCIhfJ4RT1gKLR3l+Fuxb+TOLxJ+xE0isGvCbnyM=;
	h=To:Subject:From:Date:From;
	b=Gh/g/XhUZGwF/5A8k4QlVuII0XF2f7wqPMehDZtcOLNmBAsTqQyR/GneHfOWy2dhr
	 Lh+YnsY3fDbJR31WCiPg7/6phigkqs+gpTWKvirevHgnQU6q4xpPPj5ekzvhuMTuI0
	 Y7KSJ4QYwZc7UZ6YjxTMyATU3Ji38wnGUKdHvlqCCaEaUKANHZFPok2OXpslKEX1MX
	 OZlObcqMCMZrdQuljVv7lw7HnyhGx4GCr9Qiad62HITefm4P9t6upCCTkqhCNdqFLP
	 wkj8YeFPrwtbBhjlqmAk5KJH09/0+m3j7+NZT6xlmucUjTadSeGrwo4qTfePXLyilk
	 H8kCkRDsHn3bA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 969D5D10BFC
	for <ddprobe@lists.linux.dev>; Sat, 26 Oct 2024 15:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172995755360.15382.11313703553397661359.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2aa3e28dcb2f26374967488a0f79af015711468b898358d29e4ecc543c3e2c49
Date: Sat, 26 Oct 2024 15:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729957553
