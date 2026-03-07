Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 066B124503F
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 13:24:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772889894; cv=none; b=ECA4hV7FekreTyOtpOAm4FEs5XzZZfuryHOXlHSyakYr9donCcLxhWn8SMEfWbA1rL3DjDMuGQdqTZIiTo0/5RPjzynO1TjM1QA1x0E7jjhOHE4p37VhE4JqUNcAzkw8mqV1UJ/31f3EoLOySyaCoviBjoseWH/QGQhnWAc2ZhU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772889894; c=relaxed/simple;
	bh=NKFKAKw/46o8I8DTQO0YRwWERSVcqxOpzNBCzWXRqRQ=;
	h=To:Subject:From:Message-Id:Date; b=dnZop8cB6/Zd0G7SHRwtARnT3ZZSIJ8lZBK/AUAiTkTFYiv5WsWrrkcUdQIH/E4Onw+YY+WsLydOVFS5uDZL4XbjCJXK6SGtDixNZErRN/yrYCir9WCsgn0+rG0slVQFO+kTnA12wqoAAfRFcNJkORzRZC5L8j0kO64FPtt38v8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D0uIipcH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D0uIipcH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D55E0C19422
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 13:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772889893;
	bh=NKFKAKw/46o8I8DTQO0YRwWERSVcqxOpzNBCzWXRqRQ=;
	h=To:Subject:From:Date:From;
	b=D0uIipcHg+gEQM18OUbZxrU/T5qFXAEMTgOdkh2nOpnlNg0IVFJUgOrSnaL8yZYIA
	 OeFrSwX79D3jaW1f7C8gfnuWTuTOQ+aeW0ad/C+TE+k9R8vNVwZrMw+TGRBbmlMKmF
	 RrVwKpbVb/arbZENKocR5+Zy3ynPXm/fqeQK5uW1+piYsIKC2d2N6mc1zgvDEJ0EeZ
	 HRbjNtzkleufhMw8QO8GM4CndzINmrltam+3aKqNjnsAkH/sxL/s+oB+FwvtWaBeZ6
	 /lnEQky0HGBakXWwOvJTn+/dkXH/1npzmTMDTwIvOQi8ymeqsFqo5x55/zu/eLxdTK
	 aAao69BuoxQpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B12D3FC9ED5
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 13:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177288989364.11824.1422078847579521465.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68c874c52620d62dd6e77d3d1a5750afbd05085852f6a7f71aea782861bdc4bd
Date: Sat, 07 Mar 2026 13:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772889893
