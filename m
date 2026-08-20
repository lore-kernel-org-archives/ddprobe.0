Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33E3F2FE59C
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 18:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787250634; cv=none; b=U5xPuw00lpL/mK4WavQ9mPPCMXjsTgC/2SHsljjX6eAFVnHGaxdoEtYC6yXOLd0ZqCl4h1fy8QK+P4k2hTI3KFYmSpimhGK19be7YakadThKUQuXysLlP+3jJTJcsccB3hGr/cpYzXSaxTM5Ox+WYztwTlWOwTez/fyr2Izvuwk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787250634; c=relaxed/simple;
	bh=/TRFSzJAI7mP2BzR7euWPg4dJlP3YknVSpTAePRu52o=;
	h=To:Subject:From:Message-Id:Date; b=GOE9Kgh3Cfbm3M5RosgRWcFzeBgxW712qI1iyyJbArFizwA8N4sSSn5zgGyUyhkf/zu0PgRbUpDNjtB2wRwri6wh7ty93KYiGpzMno5avT8pYPmxsDqL+XnpfFJB48w+YTMkvWtzD2sfsQE0MYG4ABjEfHdQ0XjkWVUDVcFhCpQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jMbZ6gxy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jMbZ6gxy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8675C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 18:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787250633;
	bh=/TRFSzJAI7mP2BzR7euWPg4dJlP3YknVSpTAePRu52o=;
	h=To:Subject:From:Date:From;
	b=jMbZ6gxyV82rLfZAN8fecdIPpi0W1t46Iyb+O/XidorqFqWXs+NEHNTkjRJQpgnDV
	 IuJVdaRY7MfDfQVQSWM/dLqyo5oWCSpXx/BVZ0cC/X/PvVxntttiirinq3q6oIog+9
	 84Pr73sBNC6SzCwztRYA1QiEcO2S6hjNvq4x4BbVE0VmDJhKREiXHQ0tcir2WnADgD
	 +tI1fS4KjIrpHoEPk+Nxw5wRVMyEhDUfp1oxs3LQxgddveN6y/ULbnitFjFdSZNxFt
	 qM1tvJAuzp5tQnh7FOXuYrzaUxkaVkNm7yH05AhCMeJ7nglsrZ9+9s2fxPyZRIutU4
	 pAHWpnyLOI4gg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B27C1C5DF82
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 18:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178725063372.18500.8779985559623072839.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 685d42543e8a1b770d5f220cb11702ffcd70a20af5268e07a07ba22386e85d63
Date: Thu, 20 Aug 2026 18:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787250633
