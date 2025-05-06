Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38901284B55
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746557995; cv=none; b=dA3hYjpsa9F95vEHYg8y3TdGSkAtYqm5VSDUp8RjAS4Xm/x8vcUeSwED7q87S0uz/P5GU6DFS7z8KMDGVF6i18UciqQAcoI/cTzoapqwVJbU9YM4TA5Q1Ai3KtSlfHyYdduQ0Z2e7AiV8qk5+aRXBbW+aqq4xRYTRtSpTZEYtGs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746557995; c=relaxed/simple;
	bh=EAUIoF9xrIMZ57dqJFJ5m42UsyVvng0V/RCMffVK29c=;
	h=To:Subject:From:Message-Id:Date; b=YShMgMFr5cHAcByGzy48ZvcE6l2iQy9ZWHCgxe8sqgTDWLGtyYmDtbWGcnPoT3lYDiPt96feSiziP5sAXkbs64oCXemg0l3y2Nj7jM02hWvG64OUw4i6+bRwPH9oPvqo2jw40ExOw5EIX5mH1+mFFYHy3QX3v1CZRGjlTuWIYW8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Eg2jnpIN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Eg2jnpIN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0E97C4CEE4
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746557993;
	bh=EAUIoF9xrIMZ57dqJFJ5m42UsyVvng0V/RCMffVK29c=;
	h=To:Subject:From:Date:From;
	b=Eg2jnpINTLVCuVEYcxHbOzOTO9dLWlVjayUWkpm/mnaT/mE2baxXmqIHda7Mnk5K4
	 iLMLvW3Kyof08rmVNzlTAmuJu1zSqnCwNpqEsa1uC4qx+XA8Cbgjr0VGPG4Uf9SLIj
	 NTn6IRthFS1K2NQYRlG88otCqjJ+6oCz4DlSb3AbivG9cfo0FNZ+s34xi7mFv4cgbX
	 ipFYxIrTKM816KiWCn1Q0jTb2CHY00bGFpcP8p4oz29W1vr3dVSIhVFyiFoNJ87VSI
	 HgHdcW14W5vAWT7PBxk+KRAZmUcRgjxSABUv8ovtfxTpLzPKCK1r/YobtYhBoNhz+J
	 pFN69Nt7sZ1Pg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E153C3ABBC
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174655799357.8958.8486825877306352132.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3127d6ce0244ad3be78fac59fb3e8dca26dc0695e5185db8d3096526b0df9f63
Date: Tue, 06 May 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746557993
