Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 447C83F99E3
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 01:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784597314; cv=none; b=USds6kn940VqEy6Jopoa1y9KENgrhZCKPlsM86YwZ0qkeG7LkkBWrlP2QIrN1ReqRSKnF9iTA24Cm6ZAo7QXUzJgBJq0o/c3BJhwdDbSXFXeHbov6TopGanHCP/K4bcUEUuI0zqCIa5y0wAEBRUrrEHF+mwn1km/Z4vT8o1fSzg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784597314; c=relaxed/simple;
	bh=ovL44AEsBfRVo7ucWqaPh5xZ+C9I4wONevFFXev4aQ8=;
	h=To:Subject:From:Message-Id:Date; b=EctQIWX9vtluaAns0cLRnJnMgHTwZN0iw0UY9DIKyWfBdIDI5aO/+D5bAoPJzYNXPcnWrVZTPKCAC+ESDIN30i24VXxfYJDCHvSS4DB4yhfewdnT9osUyYf3oASasB9Pu9Pljg+bayNF4NllrWlm9hCjtnuPgD4ZwjdTnq28eBA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BWGDrREd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BWGDrREd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2D34C2BCC9
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 01:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784597313;
	bh=ovL44AEsBfRVo7ucWqaPh5xZ+C9I4wONevFFXev4aQ8=;
	h=To:Subject:From:Date:From;
	b=BWGDrREdO5UHn/L+AjIHGp9/lOvBkXsmGwrFXUS3uma5huCEK6/TZdyhhfOkcOOoV
	 YSzynWZ79G9LOFzVHc58ABcPNyUuxdJ9IWoSVqYoGQosWQT2DSWO5VOG8uk+xe7kh8
	 P+lDXY4gbAWUd13XyUexI9yE+E68hyiHY3yeonNI2Z3STmnx9Rt2JFBXBJZK/u2IzM
	 ztd3hx+dlczSqKd/HRCSQZvgmuv9p1g/B4PwmX6qAthdB7sv3TVnSoITeuLYKBVDng
	 VAhV4Vw+PBt6SutFjAxQhNAXtIK8FwwjRPRScUdSXANywfa9sI07u6idQbxawQwJSY
	 F2qHMfY1zgkkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEDE4C44515
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 01:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178459731370.1894.6539557017132445346.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ba74ad90ccb595b20f9950fe0b9a5aefed716e88ef50ad406a046c1b050e177
Date: Tue, 21 Jul 2026 01:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784597313
