Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 196402BD58F
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751896795; cv=none; b=ilKDuteyzOI1bHnqEEhDlRpaWyGr4L3LRH0G/B3zkOsLbqJDxJQmaBK/Sh95NtKfbwzYb/jO1rmKQ67SBG7DE6xAnmh5nAr5jx6c3GGW+Moi2ygftftiX5a2+Ukstuo7EBnx7KofATxJ3/sngiMX2F2rKWzrj+LM+6ItxHFD+wk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751896795; c=relaxed/simple;
	bh=3zg+jchy26yMRW6FcfvGGSjp+aqtiwe4xve4YAbmXWg=;
	h=To:Subject:From:Message-Id:Date; b=t0lvSOoUT287KrY55dVQIfLGLeIHDtZ+4o5f1dVKHR5l/roiLeZIH/xsvACg8BF7cZ7fGaIytp6k00AH87DVynsBNpkhZTcVUVD/zAMJsCEiLlbSlQRtmsydh/sY+n37KtOUaBgwtH3YCnoTS+baN0zwXwn9PBU0leBgFxXitrU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AjGBeomB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AjGBeomB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A094DC4CEF5
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751896793;
	bh=3zg+jchy26yMRW6FcfvGGSjp+aqtiwe4xve4YAbmXWg=;
	h=To:Subject:From:Date:From;
	b=AjGBeomBQ9qPYas9IJMwYX7x3fVEN4kVKnqX7OFFWfchFrfw7P6NRw6BmFus9eBlY
	 qv2U8qp7vZzaWPC162SgXukJuCPF4s87a1pgaqIaDZiqgnfnpXIkNFMmgIGYwOEghj
	 Yi1AxfQNDxzmENuRyo9mPPMyq7cg1I4PIiODQTWVAOja91r9hcFTPyM/oTuDrC0MOc
	 5FEec3kaHx3Mhp/tbuhmVUWXOmrKuq4J3UjJkiQQi5nnlcpsQDexpUv/+F0U5oIq2+
	 wTNbw7J5j0HH6yWb0FLolaCVbi331lqHsYWOdzM1rH8/ILmjlF0On+9Dfkw5tmwttL
	 ioqMniGpavhoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F3E7C8303C
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175189679357.11084.3214903946040594682.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b620a44ddc90aa043d25d1b3ed14c21517b2368ac9f53609e30db0d40c0d36b0
Date: Mon, 07 Jul 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751896793
