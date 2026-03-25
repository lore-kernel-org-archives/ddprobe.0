Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11432407112
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 19:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774467894; cv=none; b=dOa5hU8OyC/LR6zzHPb5wSnBADcv2XThf4neM7UHGwpFpR/jC3xgNmNcWwgSEfngy4K6opnwXAgXKuLMhhGHUeKKqkPqS9kvwiUeMg0MpvW4MxYeIz/mg3IEA+48Y/uEGOxFXcnMU9W/FO1HazrxVTXl0Tk8J/md9oadv4XJEwo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774467894; c=relaxed/simple;
	bh=lcCouuhwNKhMu2MuIYHxfmnd/PuYlVtSlw+fa7wV5Tg=;
	h=To:Subject:From:Message-Id:Date; b=TDn/k7NKt2MJP6A/YejTc1Q31OjC3KM4d/koc8ZYTcOPnMChx32eABWE0lbZEybTVh30SbEw7+XruinNo7NhnL0VbVKxuZavZq9/1LFjeVmVedkvf0qDtEZHA5E7eKplj8AEIGogeNE+6au7M3veJVwjL+jvX3zrakx+6j7zUvo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kDoA0quK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kDoA0quK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7369C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 19:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774467893;
	bh=lcCouuhwNKhMu2MuIYHxfmnd/PuYlVtSlw+fa7wV5Tg=;
	h=To:Subject:From:Date:From;
	b=kDoA0quK67mmYBczCNECgVESByFTO39JMzVu92u/r9rEl8I5IrJUrDZwqCx6mYaJz
	 7rn2KZEmqog204cAbla1VVjJeRxoDVRrKBNQuO1TwNrZThclAgrqGEq90txu8mfuzd
	 kjG/Mm49aK/GlPV5wOf6GLz6UrUFTlUohUXMfvelwTX/g8LtUiRYHPqF+AFxCivuj6
	 pQSpaY07CL0vaONmlN6maDRGrqlJO839szaK0WdsucCZ2p4iuZ4NTwuhwniLpue8Rx
	 Ry5LxNgEnPZteewIPJbowpQKwwsApYYQcpHMzvAYOOJCI6PT6+hNYD+m66ONNP/530
	 rWrU/rROvnVFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92602109C057
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 19:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177446789358.23272.9339495169065052591.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74237691a20ac6b861c7d48ccff23bb9623f7bf311bf2eb9866485d039bba9dc
Date: Wed, 25 Mar 2026 19:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774467893
