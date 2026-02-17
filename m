Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 282B92F90DB
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 21:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771364694; cv=none; b=SUlfQ6y+yd8bo7T8fEjhVHi9ncY2aogfREwbDv9B03PRVuKAgDCaN+6I+wFZKxcZ/ML54HqYxzKU7jEkX/DD6lPPBoz3UMO5UrDZrj39hy5BHajVUWSoHzy6/WQxLCICq4bi8i7hChiJ9qhczVMpSRL/bVMm5sLJuNcMhYhLl4A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771364694; c=relaxed/simple;
	bh=FFfApiZZtEnAp1Q4TIHAdeulRKcKRBW0j/tc0R52PlE=;
	h=To:Subject:From:Message-Id:Date; b=ug2lOaYTYUMr+OdiS6CFZAlyhc/LE7l5/egBRpY8lRFpSELkH+7XvncKxbUF9cQDQauO9NBUAuKSRrDtxTIYkTfa+/TsUDzYR7V+kZRsgiyP2uyThiZaBdwGRFMIRzDEFsJcVBHDymx/sz8BeS3dtpWMiJcw8RqQmLG4vSEHePk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n4QVUUGa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n4QVUUGa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4444C4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 21:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771364693;
	bh=FFfApiZZtEnAp1Q4TIHAdeulRKcKRBW0j/tc0R52PlE=;
	h=To:Subject:From:Date:From;
	b=n4QVUUGakcV+VIqYf07YrfHf6oPE2I6JIRc2Gvm4kRbBIGiyEJ9R6POByKdlcBT7M
	 yTKfwU905//2X4RtBPFyU0/Ns4H45UOY1+Ahip18n0wEnMk9Rujyu2NLgOidmPfjqz
	 lcLB2Kishun0TzcAHHVdvEV1ZF43s+K0Fb+I8Fw/HzpMl91+pYn6FWkQcc4eNduSz6
	 h//bdmM/lgtbpGnbOtYt8UXxTo7ik91PqQBRgknE3t4RsUWcj6FJISo/VINkEirFlI
	 +uxfCWpAiezCk8asviGMfGbdwVxKXQAkIcN315WFNyHBbDXKNlRWl+p4vhsGBDEwML
	 DD6RloyrQA8aw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92380E9A03B
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 21:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177136469359.31482.11489718187235317252.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a50ca3428e097879d9b8234c781529877c00f3190d8a53615c5ba4783e213ce1
Date: Tue, 17 Feb 2026 21:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771364693
