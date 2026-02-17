Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E87B20E023
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 01:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771291494; cv=none; b=qCL4BlS68X88v+rSi5hzwtnMLVlkBmCbGrUOmkw0v0D9RTSpGwONiCOwftJ0SKTf/l+vYInrIQLk0b5B6cjc3iheKT0JwTs2B4wSWhn+ClQF5nsN1uVwE+8qP2pyZlNjNACbgPY1rdBnJN8U2OEbkwdEIIbb0pLaypJBTSnD598=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771291494; c=relaxed/simple;
	bh=RVlpY1yBBI6xYnGTO+PgR73lUwMMt+mSbqWTTISVRPo=;
	h=To:Subject:From:Message-Id:Date; b=LzfbFBDIIAwP+9AKo46PDWneEdDAdAq8e97p5obXTYLy83e91XHJ2dNUZuC67DACsgM1cU5MF4zD8nT3RExGj4TA1xCyuvpbDFXvHx4CJdEE80hNDTCnFmMhl3bRi9UUnDTOicXJfGvz6J+SjZH3fjjr00htiY767EiIi3rbAco=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cZey4aNL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cZey4aNL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9C0FC116C6
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 01:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771291493;
	bh=RVlpY1yBBI6xYnGTO+PgR73lUwMMt+mSbqWTTISVRPo=;
	h=To:Subject:From:Date:From;
	b=cZey4aNLQESQKozPpVkltnmT8CTpdEEqz+vlonCc8gbddqDORooBm1YaeVGlv11Ht
	 TLXktI0Sq2wsGkHc6Cz1bPxcC7QO7P5u4z3tsdfwryf8+usuw58UAR82wbEYpaz2Ok
	 O+/mkSNMrAtxgEZtbrBYVARln5T5IMBWv+jZ63eRpibBA5n+n/I1mttDxIcdADhld0
	 +BG86I3EEIdCpMZGiZLl92K5KxRZaS8G7XmbspP4n46uTlmEU74IE5++b7Tyq9hJc4
	 KQmVlenQrD9ApHuDh8IbHeR0v5eKUUddFEASgBfAlBrqJWu/WeZrgEQLmlbX+w79ub
	 cenoZ7qKb5eCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95995E83848
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 01:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177129149358.6863.5181480884822024878.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7419b3fc7075cb3530c603762929d11076f5ebce1dcde8ca5251ca3b6fdc20d0
Date: Tue, 17 Feb 2026 01:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771291493
