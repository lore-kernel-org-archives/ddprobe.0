Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39C0F306756
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 01:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783388314; cv=none; b=m7vlySYohIjxCGMcCOdQX538z3TZhxH7cGgutnXD2JdQeVLoCtqgvM39ITMYti6yzmOVFSnTr85GjgVbC3nnerMyAiYNbLtXg/uRnlieD9BveLBLYZZ63uFkj4uKSfIpUoH6G/g/WgXjC6vUm02d9VXmahSky2MKv/Ax5kQvSG8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783388314; c=relaxed/simple;
	bh=hPLtcEPXz3ainRUTOVStQ3TG2mPMInks+vP7kMY/qfA=;
	h=To:Subject:From:Message-Id:Date; b=T9OWgLOY/M8Ay5lzizV8+lp+Zt+8/LUpR4jX15ctYq88ZF8b07k6vLOrrHxrIFXFnhYVECtSxM03TGwhETgciCdZZBgOHdAu9adWbLJt+PUfbImhjvEQM3zGMZXNL7YQ08x3urewp+Z3KAvcXF7aJcFZBIxvPLwfWyt7VzkR7co=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UZ7qyBPR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UZ7qyBPR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C917BC2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 01:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783388313;
	bh=hPLtcEPXz3ainRUTOVStQ3TG2mPMInks+vP7kMY/qfA=;
	h=To:Subject:From:Date:From;
	b=UZ7qyBPRlfT9Z3vRSlpv6MqTMFBzrl0ox0909Um8vCbxHTIPOPINzEnCytHzYH+Yj
	 oCdOfLEH1Ma6PoMT1xiyFLDAx0gM+liFAsr+VhQgX7RrJSASLt//t05hnxfCFl2VnN
	 kX10cXh8Q8JIOuRZB/kWxPtx5Be/ed7fZQXZ2q3wlTVdgVYhXu4mqk/YxXs+T0N9Xs
	 Q3kG0VPsZN/OgrIrk5tD7VA60HQnxwf4ZlQXxLyFkdRuIVV5ccerKieyJqKrrkN/tB
	 A/9kXHGHgdqCur+fa+u0ywOa42tPwMhsRPFcSJJuZX+r5E+HD2wwhB0+HTosbuVsax
	 zJ3wMEnKXwDMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7DA8C43458
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 01:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178338831368.19882.8877393096547692350.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08a069eae4880b071972c32f503585e59800f67f1e3c1b624cd364de77d1539c
Date: Tue, 07 Jul 2026 01:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783388313
