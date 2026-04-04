Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B14A24BD03
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 05:35:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775280934; cv=none; b=NXno/pkxrxect9QWAcoFMmCaGYiLMD2T1EpfGOM6MgTK52GUQzZWZWefGTxoa+ReCmI3M/M7XFZanOevHESL6ebjAuJMb2ka9lXINnVLgkXwNF08khc/30cwV3+K+j2WIiBB4ecXrgcWrMpDZBhLe26LL06yO6x5bdw8n6CYgwY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775280934; c=relaxed/simple;
	bh=qsF5DjvEX+xa1h57bL4jK2YAiMWAfKP/4gsr226gV2Y=;
	h=To:Subject:From:Message-Id:Date; b=NmAI4mWS+n7xqFgPXQv/ietrhR5K553owikYtsOtTPYuTOzK4YN4LwtfGvjLnao3ef7pzZerqspJawLAJLNscxctHtqWukUntF2bbYwm84C6zsXHFlaZL9lvmsD2INLfM3lLcPkuAGHJZE3g4AhQzvqcqbDgPmtYJbWp+L+nbzs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aSpZCUZO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aSpZCUZO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEA5DC19423
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 05:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775280933;
	bh=qsF5DjvEX+xa1h57bL4jK2YAiMWAfKP/4gsr226gV2Y=;
	h=To:Subject:From:Date:From;
	b=aSpZCUZOXGUnq+HAhhN3zvNMcKrpmo92Wc9cn5TFW/t1B9IOA4eSVa1rWhTsL4u0Q
	 TIqYXLO8BEyZKmJm+K78ae5R++6lSKu09OBZMw8Nw0BtGkbz9PEu/oX9bHRfmxO/4p
	 QcqkKTHsanmT+AnhEismPqFHoVxtj+J4tOq3E5SNPtkmi5yzi/p1VTOH42zqBmVuQl
	 lim5rHRXgnBt1sF22K3YZeyYxA6XJwydIWklPMJavEG02HGmLodLZmzg3F1i9kZpuK
	 RtscbGxYCMPPCFj/D/XUDQo4BAUhuha1UAwnd/vnpS6Bxk+zf9bG6glol46Pr5p8Qp
	 9PsNPoxx08n0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACC2AE88D84
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 05:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177528093369.10361.8431028802148013812.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed2551a8270c5f71d4da2bc1a81d6bff91f0a2edff79fa9f2a548cf62211b7bc
Date: Sat, 04 Apr 2026 05:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775280933
