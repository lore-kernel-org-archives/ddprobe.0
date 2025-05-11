Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ED95B67A
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746925194; cv=none; b=UvZXKB36p5vIRTaFFy2f97/DgjC717dqY9xrDPWkeImumhRzn15umWHWhs+IZ+fmLAfgxmuaz1JCf5+Bi69BI5dzvt1n7GXmarLk6d8owzrtORRCWf6TukhmjBlNdu7ey2L0/Ccg5dExw3ZCx43CPvTALLsc7IxSPShb6vL7IuI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746925194; c=relaxed/simple;
	bh=PfOskJ1fd/4W5ENM1xvUJKlUE25hH/fCff+lFzZY/MU=;
	h=To:Subject:From:Message-Id:Date; b=Yan3sBdqTLoCRgUiW6rq/btS9bpg3pkKCZ90EiVmPRBTao8ZbhrrYEoduiIgYCA+xct5NSixc9Ed1MikKYYlKdjZh1ssCkF2TLbhzYoiasWkf/O/BrxMtyqRlATO8QmeiaL2XMPtsuSkGGmIWZoJc8DkDw8PJqqKohMP1phOPGk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k48puJzP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k48puJzP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6C76C4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746925193;
	bh=PfOskJ1fd/4W5ENM1xvUJKlUE25hH/fCff+lFzZY/MU=;
	h=To:Subject:From:Date:From;
	b=k48puJzPVeXwmK2+hB78SriodIr+9mmfLQ5PBtViXMxklmgXganwtHChG2rlP6JR3
	 n728HI0II0rjSTG3tzFfuiNpMRM9TE7B/OwQkbaGg9WKZbPCSKNYgynBBiJw41jR/f
	 DcBOsnOCzKcRpwjCMv36f0jGXgqpXBBH5jOHlD3ZbgIOu2i6oCuWcSUC814aIsMfVt
	 54IO9BxPNj76+1o3o1xVrZVlsBI0GzzEKtuZCO7sYyDA6yO3T2h4xgxMQwEz3mywiQ
	 Ci0vqp1GHRDHrUO8qQB/aPyH9hYzzo0xNIQMwLPSgins3VwsRwryLK/jDZvfO6i5bi
	 8HMkVwY7NOYnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 942C3C3ABC9
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174692519357.17331.9443001850926347237.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea713cd6097d81c2fb0bcd9df74255220a7af6e22304eb3ecd83852aebb2cc3b
Date: Sun, 11 May 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746925193
