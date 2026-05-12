Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F61086334
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 00:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778545834; cv=none; b=MSPWoP1WtOI3N43zw86mhuzTCJpYkXI88Xda2voKPZnl8fxEUnv80dS520oJQnEPg+3EklDBEVvzmZRQH2UVvLDblTJWBhDYsLRlLCGc2kDBG08KNGjA7NOgTlFhVE5dIYAnWieea6QWpY/zqknxCRqBkhe6WWbSot49MgRXVxA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778545834; c=relaxed/simple;
	bh=TrNTUn7erkliQ+YUugoSArlmUt4Xs2DmNauVBtNq1Ww=;
	h=To:Subject:From:Message-Id:Date; b=A8hF9F27HXm81igHaH1CUxsQ5PCzAdF8V7ZKTzYc1Zfv0Yg0umGMF/mqH6kjyGONSQG33fOXcUQy85py6ElytZ68HoDhnC7fc3khT+CruUO4Zkm2aepI4YGbH7dTECMNQBuhZoDSWYjFOt2KSwMepjraxl6MnF1/flSTHgms6vY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tbl4Ty18; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tbl4Ty18"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2D01C2BCB0
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 00:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778545833;
	bh=TrNTUn7erkliQ+YUugoSArlmUt4Xs2DmNauVBtNq1Ww=;
	h=To:Subject:From:Date:From;
	b=tbl4Ty181uvjKBCiTPQ/Hdeigh4v1jQa8RvHX/cRpJ3cyniHE7kHwrIy04lBDPatZ
	 CTl6Uj3mKy07nlZfwuxfQj4+aXdDxlck0RihWctZXZZPaGt+TwQJDQt+A6rBA57/1U
	 C9/R6fxOmny9Riip3OLHp5W7VqGexfSdTmaUlWtczehRwRToIdqrKdcUBxxJHBpkOO
	 ICQK/UUanH3SSPU+K6ijJcjq99aJb1MEtlqPW8MLDOr32wgzmnF+R2dWSUacrjFw+L
	 G6F9NPAsk7+A2jBO+YDu8nt1c/AhFgI16W4JPsVs3x7vExqn+Q4QlONKZoXYxqNaSM
	 ZR8yBhrz9EhvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B058DCD37BE
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 00:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177854583368.28067.10912812286332766622.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dfcf14e70f10fc1facf921edaae7d741c5ff57fb0477802c5430ba4d53006fb1
Date: Tue, 12 May 2026 00:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778545833
