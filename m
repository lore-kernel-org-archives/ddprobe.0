Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30BB24C6D
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 10:51:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763895114; cv=none; b=NyKMjUCpQvmq46BivapfZOAdZ8cvMGWe08ym5cE2/iuQtBJWHJVxHA39N7j76oUhbdOW6WfPt26HCvFuS+j7TPyMreI/W3cQQRh5+44tWDlrL/Gi0cuesxOgUg7UUdkfTrrBAneMyuNvr4ICxDg16Nf5jD/YXtvwMdu7WOoH4TA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763895114; c=relaxed/simple;
	bh=flAupeDNmPsYyR4rog4Pd5kLvBtXcTOX8vGK3LZlTH0=;
	h=To:Subject:From:Message-Id:Date; b=gGzB8WqIPiJmw5PTw3zKYly5s1Q7qwxUqklfTjt6yfoC3mERRVYZZ98748Zx93ki37Lc56u6pskgDJMJXeX0IrpFao18alN7tqTHLMVrtnwoanIQZ3qpoACOq/w7+UJYd5sJspEmzXOBYMVdOEvVjZ3VxUWDYbGoyEzTQ2Y8SQs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JazzXsYp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JazzXsYp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAC16C113D0
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 10:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763895113;
	bh=flAupeDNmPsYyR4rog4Pd5kLvBtXcTOX8vGK3LZlTH0=;
	h=To:Subject:From:Date:From;
	b=JazzXsYp25tehX8kARaW7l9vkxGMmbA1W0YsugIOAANdS07R8ciwyK8DJar9m5rTq
	 QIvIvYYFCQpBn15EJVMS9/cSzAXGuDdyUMethv4BPsUW+N3Or6MDSNuM7l+Kw5COkG
	 5x8F6UUGB6M2WNfiM/5iofuUEcdYwTLkg/G84M2gig/C2XO+remcAA3JBfbwDr2nvp
	 krlkHcfTIhYkvAnIPIN8cKF4oBqIfyNTM9rkLY9N4hV64tU1qODEny8pnKkShC5yDj
	 99cm1FugYLOscWOayY1o/3v+FBHutb5mOK+4ylCJIIMxnKlneRh0flr9xysMaklQ7L
	 yvBDc7oJiwtRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94E79CFA46B
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 10:51:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176389511358.19886.7834929337714947854.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6842daacc0435b52c51176c2d3f5774a810b5e99c212e23420cf5ee58ef8ddfc
Date: Sun, 23 Nov 2025 10:51:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763895113
