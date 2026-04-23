Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AC213EDAD7
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 12:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776949054; cv=none; b=jPd3sKO+yOjK1kQjPfZNhtZRwu2A4/EXHjqVnpkXPT3EQuYucXy3haD3KPXqJQCCIPI8qL2/qYK0xxuvj4dh87Qb9lVFM+30mTRKZ91MUcbZzgrFSMgTOpugeoSuP0vWchdluRBPawPssBDnF+aic3XXgJh4X/5v5KQ6gTmTjS4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776949054; c=relaxed/simple;
	bh=10LDiRoaoZBvT5t//56GwUxOkzBubjcT3u5nKqV0r5c=;
	h=To:Subject:From:Message-Id:Date; b=WHYYhfUE8cSBSbVw2Fjw5XZazyajgN9h4hcq/nOaopmmYn8OE4QUiwL8EIgyrCiWRdXeZNol1XfaVP+BXmXuMeVl8Jwzd9lgCQaaCjIkHrtDINQqa5laH/Ir3bKTGscHYE3ZadnfSeOQqhx2sUHy2jhAd2FnX4vTjMeUz94jkN8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=miZko+6O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="miZko+6O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4C83C2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 12:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776949053;
	bh=10LDiRoaoZBvT5t//56GwUxOkzBubjcT3u5nKqV0r5c=;
	h=To:Subject:From:Date:From;
	b=miZko+6ObPfvGLtlZxodY8mA6AtH5pr21BQNsg58i9ftByMwJZHzb5cX2Q6zUG0J0
	 Oi+zKo0W09xl6pQJbbcItKFGlrfK6nBvu6lnnGZp8kVuEuQkHtieax+WeCIUVaErjy
	 /rivobuZC5xxWZdPuhOFkAiNgB5mBhiw7D4+MZpZef0POHZoNKD4qAX1/6GazTZeNF
	 C0xeIVwoYzDZ2lvebWvC9oKPQEuccCWTTaEx+dzSq+78vRdukIV1RAHHKRMohntnIc
	 usYdEmIhgbzlmtNV8zn/A8yUtZUP/na1hBb4/DFc3gesag44wq5FVyeFqx0pmL1tiv
	 ZHuxXh51L+ezA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9F88F589C4
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 12:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177694905368.1337.12122413990854113178.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e59702b88bc6d8a06429cdbbd511fc471e9ac391dcc85c2e50be4d8e17556dc
Date: Thu, 23 Apr 2026 12:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776949053
