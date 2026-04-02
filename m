Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 312D53126D6
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 04:55:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775105734; cv=none; b=jqtRXJZCc62jtyvRvg1HwNXRipVOkijQqyACcuPE+10CUkrZzHRkVC+jK51x0BoAOtHawtvazp+Mk3dH2hvuPkYMSgTzC7c1SsgtHTv+pLR8nDtgrr3l3WK0uxPsAFJMHENpNpz7Sl21+jT27oHBwQCbE0UIbmLG8bW0sJfI+nI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775105734; c=relaxed/simple;
	bh=pS95whBwOnIKaQCaRtIIoL3+BZ0zNrAys6SpMVeWKkQ=;
	h=To:Subject:From:Message-Id:Date; b=MgIciBLBUYt1qECBUK2ojIyWyR2Zkm8hR6UXji6GjACEhZPkb/q5zpZNN5QCrzY9PrXC/jmN68u2GR6UDhEAjUNRLDGLNK8aL+kQp0GAydvXf4/QaAg6DBN/bdV83DVc+H3wPqtBXpRySmkLnj6DppieUpIxRHb5lmmADcG5Pok=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WcGWummO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WcGWummO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAF28C19423
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 04:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775105733;
	bh=pS95whBwOnIKaQCaRtIIoL3+BZ0zNrAys6SpMVeWKkQ=;
	h=To:Subject:From:Date:From;
	b=WcGWummONojKtoJwj2FP4oBmWZyF0Q2Oc6a/dfQ3GSTluQG1JFBFIT/zjR+ILym/m
	 flt9+gg0JlQaHT/MjRDnIzXRmjnbYXCPapv9aWWJ85WS4dDEUlbEmP9TdSgEx0zM53
	 s/E5m8pA8ODzkwMZo5+UsikmIbRzCqTV2EpscbN7oGkXnTddn1WRbUJ//5nc+obugA
	 9Bn9AVB7iJmFMuYl+IbuNi32lMXPZ6Gzu3riNqtPnbkw/joAHad3MCNpikWWyqFvlB
	 JnYOKfIVLBc875iNeNJH3MGoI8vsJKWgvcXBKYCrR9Bc6iuubgC2q879sjmK5BuLSj
	 lnkZrRU4gVUqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABE62CC6B01
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 04:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177510573369.3211.14543665394144435322.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ff8313f05fdc76be1cafd4e35fd2b08b42659c59f563f56115fb556c5135cd4
Date: Thu, 02 Apr 2026 04:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775105733
