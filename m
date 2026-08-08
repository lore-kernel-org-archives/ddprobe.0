Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43CA62E6CB3
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 12:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786190434; cv=none; b=iBQquWOuDu3vfV9Us3o+Qnc+fdRhJspDyqPr5nQD8rjQWy1pd4VIm1vLYrVJ5eVQKrRpGnEbHXb4wmswJ4JaPvlodnr02ymCV3LIeVExw1mQm0o5oSWjyX3W2i6Ux6mAdjmCrklSa6/fBZu3MnhL11L2eFSikElUr9Nl6pk9ERM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786190434; c=relaxed/simple;
	bh=vNs2mn60V/HvlLDA+64tL6FCnvIGmq88iKxpgRUuA44=;
	h=To:Subject:From:Message-Id:Date; b=CVoVgv2fkBIOJ/ho12AlE8KSH7eP0wqa3JYsI7o7OWQnpRja7MWk1UBPWi+OH6talbaG/YVRHLkyGcxtmFngiJhoGcqPo/271WkLjK8kQgu4q4nMQf1OOpbjhzV+nJmUnk/M8KPfqF24i5F5VPocxOy8ZoUJIu64VlutXjSpK4M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SH7s7ZWi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SH7s7ZWi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D94B9C2BCF5
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 12:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786190433;
	bh=vNs2mn60V/HvlLDA+64tL6FCnvIGmq88iKxpgRUuA44=;
	h=To:Subject:From:Date:From;
	b=SH7s7ZWiHExH561kJJVEnU0tmaSAByxMfrCmzhdGYaI7YoLpuYH58jURAQ/rLD2YI
	 oYVcOLBln66UhwflSgSDnTs/r6unOGiZF9dWrAm7ucuaKZ86lL8OZmzJXiGqXPwPLg
	 G4qesfSDayQjZkdZKsVAgpq4qi0f6w7hH5s+fHGPNmltsZfyMx2ch4oGK703IkNCly
	 i37SmbSyppnPCwDx8LA6HsGgJG9dXpMRpjxF7sFSOxuAcOcNCZZTDNhsezLVpTuYm/
	 6JvMmJbIGeC1Q+4sLMpgxg+vJQK/GPT0JzG3XwENTxUSW4Ohhvp+SALsd0HGqvKkzp
	 iNXXFr3DuFvbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B116FC5AC67
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 12:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178619043369.15942.17130419227802277838.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0275b63ba9e34406ecf2be68e8bbee3aa5c1436cec5efe56d345a47a2b7cfc1c
Date: Sat, 08 Aug 2026 12:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786190433
