Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 609C43DB314
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 17:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779211234; cv=none; b=VReCvy6uVeXXGenxb1Elm15pPwdWLCqQGgtuAyti/Hrm6zJuOYT1C/Ffy5O12As+Wo+Ur2eApZzyPUpDIkAxZULduqmWW8PouzM1JkvKMmJt4bFoUjNIKj1uGG13LxuG1wXl5GdMi8rzzGLQ6EHCUOJPCYdAtEyOSAU5HjLm9Hw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779211234; c=relaxed/simple;
	bh=k9OeuAwS4V/BftSNECrVgTw7abhQfPm6hPV9jR61VgE=;
	h=To:Subject:From:Message-Id:Date; b=g8Coc2JiGUO/3XNTs4jD6+78jDWsLzHMPgi4Wf6icTyZ9/kxL/qSvFspal6coild0EZoIJ+DQUzV+IQNA14urYQmMb4zjtrnUNRsSnfsMAkjc/UDR3ysFmAkQg3etBnvAJWywWMNr4Dh+YSArRoluPaGGnjUjqEnj/WuCQONkcE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F0d6bghm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F0d6bghm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB61AC2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 17:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779211233;
	bh=k9OeuAwS4V/BftSNECrVgTw7abhQfPm6hPV9jR61VgE=;
	h=To:Subject:From:Date:From;
	b=F0d6bghm5LsClCPk3GE0MPP4nXynfiRr1hPoWNww9ZIKQXdA/h+JmLBGWEXXVl0AF
	 MqJHH7czJpTvPbS3fBwDNRBkwJnW/i3vWt/yr4ybMTRyx4bxR5B+A6a4QdmZVFj/q+
	 7HL2NDVA0kR9RycStSCmGn6GbtWM4cwimk1EKELylhaTafLOIbn467yucVZSPWvU8L
	 N0PgDWddAzAro/ik9DVnXz8WYgwqig9oE6L8OiH2DgXiMXJDYEZPfQ5XM8rH4BAYdc
	 lGD1GXAKdyk4W9TuwDg5KgGirlOIU9xCVtweLf/FdQrtP5CUbL3d3M58YpgkFuKhyH
	 U+d/TbNRxgQpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B85D4CD4F5B
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 17:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177921123374.16274.6203982649436823584.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7cdd9dc88cd48b21b908f2ebb3c9bb853ddf2704a8ae3f026a94339a9232e745
Date: Tue, 19 May 2026 17:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779211233
