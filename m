Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4CBA341056
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 02:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768532033; cv=none; b=StWRYrKBGLxIQHl1POEdMb3Z68bxZ1QF0tShO7jl1Wkb9fxoQxM7kytboIragYLOQq+D3kuLRbFynWBMTmtBwZFkxspZOO6bEEW3LunvrqKOUGsO1vmsRHYXpDUO4BsXU+t4GxFBcTRcIVUbxa7ovdKzHiICXYsRkZUxlinjG4A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768532033; c=relaxed/simple;
	bh=vv9yobj9hluvoM/GTs+ulToOvMIwXwgwztm5t1rRNRM=;
	h=To:Subject:From:Message-Id:Date; b=kC+cE0dX4+C00xRFrgeoHMH1QJsX0guHOwGYu458ntiwT6Zi0ZO1Kl/9P4ZtjWHfBgVlJwS88JlWOp7tjpgM1unIlC/8YogK+6IC0szam9XdAOm3gTV3+0VSzhreWX4KQ90cfbIfkIlNE4DHaATMArSX7HNf4cuMLtCtptx3XiU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DikhBAH8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DikhBAH8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0819C116D0
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 02:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768532033;
	bh=vv9yobj9hluvoM/GTs+ulToOvMIwXwgwztm5t1rRNRM=;
	h=To:Subject:From:Date:From;
	b=DikhBAH8a8iCWUP+BmQDOIMNMpZY+ui+sWfpulHPLsV1PB61PPYsdKcSn00T3QjjS
	 JGkKEVG4tPvYXbEzQliOaM7X1lpNNye3RQVFFGCA5hLsC43a92JF8aqwHONEhzKCVY
	 JHyIcLlcMtLiRTEhm/aTEXCvu7XnSm+O6dqeGpBGWG3NEcD9a15MkJiqizF+qQccFL
	 AWwVgUJcFLTxZXTRU9N1zMlC7ltI3cRNOqnrwoQ1mHxMxQKLxhGMddHMncS/QGBW9s
	 +6bkDWanL9dbQ3DKXKnY4di/zDh9qb2XUrWTLY2Uh5aqb/yM9GqpYKV7WakXhd00Tp
	 jRRjG533BJ5tg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F3CED4A5EB
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 02:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176853203357.1632.11395062844129437296.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8362f2ddc3dff77ed9621143a7b19c7bd2f4c01c0168b8de2440b885c42f854f
Date: Fri, 16 Jan 2026 02:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768532033
