Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57F651E515
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 12:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786191634; cv=none; b=bi0Klbq6bchG3FurU5ifIqdnRV1tAMueKxDqkcco16sbfbhRolDwFtVoG1SeX2dECDPh7yZ/VTMzemKINOkyCtmrqaJrvsWjMDn731dqCnr3LIexbkmKxPXgx3fvTHpwMAo7HmCoGd4Oav7DL6mNJj2o1pO9+m0E6p1IFjD/rxU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786191634; c=relaxed/simple;
	bh=XkmFyN6tVktkxGiGB8gwQmkuNbNiygzjJwgkl7j3DzQ=;
	h=To:Subject:From:Message-Id:Date; b=oT+RMWhlHlWM79QxBVqS4y9BHCtE0On20at7a+ze0lKDP49G7pjAvl4Yj2sO+b5dM4bCyF+cV9/lWp1/y8pDHzyxnhLVAxVfUFR2T4v3V5PC/oeRb6pIxp5iIbKzIdoSPnXWjOWK5dhThkWMRQtITm/nZdJsRPo2/3Nv93B3Qrk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mUfRXVKV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mUfRXVKV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6103C2BCB8
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 12:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786191633;
	bh=XkmFyN6tVktkxGiGB8gwQmkuNbNiygzjJwgkl7j3DzQ=;
	h=To:Subject:From:Date:From;
	b=mUfRXVKVG52M7XnmXY8vU6ZfnJU0rAwjC1uuDOrLsoUh8l4srp0Rat+WYl3bHq02c
	 4gHQE/Q/ZGCkHYjOJ5/vZrdYRgjQgYdetoULpaGx1y/xkgpjH55g8yPV9xILLnnzXO
	 LdvyHFGQ/LxtEczn9YfcmpekPjHICc7lU4UgfTlVSqMK5KSgBmF4h1B892DlYP2rMU
	 yMvIPgHvlKHcdfvzwFy07mZxI7dlZRfuIL0yogK8eLU5v3lee45nB+PP0mC1T36FYt
	 mltdcSHFIOBtQxhdfyfoCdganVzmioAGccTerkKcdkmY9Msj0MkEibJOKII14CmpOX
	 F7uv0mhqpTheA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEAB4C55174
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 12:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178619163369.21567.12357393509140047214.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7b2ecc5549f7422a4b15c2d76b97933399407081bad7dd281b1a80346ae7e9b
Date: Sat, 08 Aug 2026 12:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786191633
