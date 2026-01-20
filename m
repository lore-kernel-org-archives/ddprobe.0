Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26FA42367D9
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 02:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768876434; cv=none; b=eFD+WqRru/icmqadZz91GPmzntzRbXhaB16e1sl/cD6MHrAWfyClrH5p1HIwQZTLDqXC1wg/gIJOdzMmfYeR2KQlUh6fiHvSeLmqjh/Nfuh12rBuchEr8uC0JiP46DyxXXjgh+VFEzXDK24R9NbuiiuMvPFIu9N8g8N+Yxyk9AI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768876434; c=relaxed/simple;
	bh=gtVjDDRqHlc/eKkd4SvUFRTRV8ikKAUnAxBHzcR0DCg=;
	h=To:Subject:From:Message-Id:Date; b=cWnJy8RhSlJGpv3DQKbjzryw5TmL43WS3O9r9H3Jh4A02Tt9OaXSHHPdgo9xfqaTPBvSfNSTwfb4d4WOKEnYAIZJohduk+Up6SgCnuUd/favf/tNiGAAZi7HVKCJNvVbYAG6DLSPhOcio7HBMXFipmvP4VF3X2jGhKMCGjwvQAU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uyo1vPc/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uyo1vPc/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC5E4C16AAE
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 02:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768876433;
	bh=gtVjDDRqHlc/eKkd4SvUFRTRV8ikKAUnAxBHzcR0DCg=;
	h=To:Subject:From:Date:From;
	b=uyo1vPc/XS14jKIpbpNVtIwAM2ae19honlUJmbMA4SobxtPuKYWHs1K+3a0x3eaXY
	 7aYrFk/tCwWHgsl/pHxRyvvTVbWQVWMzu4u1JKqSEFGFDljBTJbypqpV856KLS4rWO
	 dpyFaokS0Mpj1q30OBwGZ3GG3dVoJVQx0kGuAlh0EvuGnSjDybT4cAsCZFRmLcb5Ri
	 FhHaFUsALWAAFFYn3wxF69gRgGRseLGpCmAJGSNQcuExa8bfJeBI8G3hnZgHPyN45d
	 sXttQPOg889NQo458WZD1F++FdhuJOuHHIXa2VQc5/uy4xchJInXuOzi/aYXT5yg7Z
	 P1Y7H/DPZY0ow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A436D2ECEF
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 02:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176887643362.18370.7582158485321904173.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b65fddaa163ca670275aa28fa60b7ee02e00373e33102a55dd4de7631898ec7c
Date: Tue, 20 Jan 2026 02:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768876433
