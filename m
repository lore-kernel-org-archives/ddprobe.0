Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AAC7364953
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 16:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779034234; cv=none; b=poGfkH7xDBGy1qKM1vIOMB5EPnF7ZW/CsG7rYs5aK7yIRHWHZoEEc21QjCW5zz0aS/8mc74T2x5LtCSVuQX3jmB5zzcAc3IGr7dZuwC3Y044O+A8vFbLc+fIJKHKSm/jbdE7YswJByvizXJyz1qQOW/ozg0B7Yzko1PAjdvv+tU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779034234; c=relaxed/simple;
	bh=8FjGVwYifR5W4YwqS+XxKmFtAlh/vMXO7Z90v0b7aMQ=;
	h=To:Subject:From:Message-Id:Date; b=HU/1h9FR8osN9BIqBpudsgYAPj7uo/XzgpCxYB4e1/EMjk/kSEcmAkeJ4D/TWI11nfne9Rvs/jgKezMJC0hdzvYUXMgUVGUQU1iTw9MMMO36C5cH+x6TIJ0Am62JqxSEf1yDOSPeYm9GIKCGlp7Dv7hRfdGlanf6T7yTHT2Vy0Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Iaz5dlBu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Iaz5dlBu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C77E1C2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 16:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779034233;
	bh=8FjGVwYifR5W4YwqS+XxKmFtAlh/vMXO7Z90v0b7aMQ=;
	h=To:Subject:From:Date:From;
	b=Iaz5dlBuC2aUAsGGlxDwtl1WOWYp7PdJhAHTcmDORhm2z4TyryTtshC4A8v64RwS6
	 KBZbq8NDOOnL6aiFsnrpo82sHQab0gnt08BL8mlUzJlIndUXwESBWmZsHki151ikDo
	 Tpf6a1GLJcfaujWOnGHl0NupL2posjTj5LEG5QP5++VXKNiaDR2AXNXEbSQMGH6qwP
	 OrlP8DMawuQHdJtaVe0pIVcMPUPFIswij9bq/qhY92nvyzKOaktGUgA0/hMPGJ5IUN
	 kL+FAwg1jM5iW63W/p03IJb0h8hnz7OGB8Xtr09BA2hAJhoM+p3LOpAITqAdFIOUi4
	 KORnjBC3J68ZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF878CD4F4A
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 16:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177903423369.16459.10026278071909420235.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2f2cd4cd1b6086c7ef83190e6d09b3c221b418dc76d7e5b454d7a0b7a9b530f
Date: Sun, 17 May 2026 16:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779034233
