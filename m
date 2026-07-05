Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4863219E7F7
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 02:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783219114; cv=none; b=nUtPvocbksdBEQ4axKhq66bBKBUvvi/6/chJ4TLnxHjkC9sPYpdFNYo3+7b+3Rjou7CIhYsDVZxQy+teRF2vrlY41IzMNExdVj0+omUaJ0HnikoqukJjteWhIWrtXWF1BQ+wa8nlVh078Pk+TFnxbjc49PHvqeWdIj9U/fN7mQ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783219114; c=relaxed/simple;
	bh=ysgCmCnfamtLT9ZnFewcI6r02+gxp2x5TgVVc/e2F1M=;
	h=To:Subject:From:Message-Id:Date; b=goVybEWHd1dfX5m+p6B1uMGVyC1FLzb/gMjUEV1pXmDKLx6SrW+MQzl9YtIN/awdss6z4MQT75SGoIDaIE3pn5N4FKJhK+7E0JqFlS/bTmCFQ5WilyI2eRTffxxsUsnm79V+NPlA1TACtOlLFGNW6VI8za7FGLpc8QMgkT33RXc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MPT4CEoZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MPT4CEoZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0BEEC19425
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 02:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783219113;
	bh=ysgCmCnfamtLT9ZnFewcI6r02+gxp2x5TgVVc/e2F1M=;
	h=To:Subject:From:Date:From;
	b=MPT4CEoZgmwMD/PQj098AEsvg8UoSiIyEvn3eGULwZJaNh/75U4x1OvuZv76aWQW4
	 m/lKDd8M+pX9pzu4BdcNGrqFWc4r4ishP3NRZ4SRAqh3X/p1Wzm2FxGbdd/g0Ybk8z
	 I1jUhdNc3QGboUWNkyWHlnPjbZV500MeD1S2T+mHj1jP86btp+31A72wZBK78yMZEj
	 h804uTx+K9XSocSdvHfwi1BwfhQ6+GUS/mxnXCuPdPjWIacuMv+0CoEQujviJxsyiz
	 OUUUHbDl4pkTOpunvBqhWwm0uypCUchEAqNOzIsRgTmCAQyVM8Kxydd4FxzQ9YoqSo
	 LvCGsPzL4jOiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC078C43458
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 02:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178321911368.3416.14294392895958065842.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58643b7ad0250b9f8b0f65ea4ce7da35e3c27a2d19b3e41cbe46274986f79828
Date: Sun, 05 Jul 2026 02:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783219113
