Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3422A399348
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 08:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781426794; cv=none; b=RF4q11NmIsKw51gWZTYgA1YODDhqnDzpqLFpl3Vx6kECCPQqXbM80OfIvkMRYPySjcWjvEzYoffBUPWJF/P0DsaaLa6C/LCTEXGWCFI3ECfq07xccwYwCT7xNPMxajG84qIIMWLmgS0hRo/jGD2z8zkF4PAjDRFMDMf/vM9QAkA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781426794; c=relaxed/simple;
	bh=KC4hmVmr5Cv/jOxXwKVDIS4CRP+rR/wPw3nUE7gZoWs=;
	h=To:Subject:From:Message-Id:Date; b=OCQBO1ogUeuoe08wVkkaA9B1aGWlF4KaWq7XbL8mFBMJM4Ryviz0H4Gckk+Tm4LIrSSnRFrjDH2k9nOb5/4zECCcCyrrdC0m6JVy+K/l/Vhj795rtTPmkXaiL5wrT9GTgKqLZZUYnK27bgS2b11gRqovuoRX/yGyu/qDJCAczPQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bOJsVs72; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bOJsVs72"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF5D8C2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 08:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781426793;
	bh=KC4hmVmr5Cv/jOxXwKVDIS4CRP+rR/wPw3nUE7gZoWs=;
	h=To:Subject:From:Date:From;
	b=bOJsVs72U3ljwDAPTFhzQGgZBmGbefpQpoqgxsMVFgzEL+A9fuIp66U6Mx2O40rwJ
	 hyrmbK46AFvoi4YqptCXp9+xO53QpGVh5s9X1b2Y48JdBHn7W63hjfKhiuGdiBUbqJ
	 a20bRO/FrDSn2DkkzpQaA9aHWK+qBsopMno9GzqC3HsB5gXxdANIBIYnN/Fumlc2pw
	 66DsNwA1ZnER23JpGeooswHmEhWFiYmQJqc7+3NLKaqeV36kiFAxzoS5zvwgyCWkmS
	 sW7SZF/Pn9Y9efw+yO65hvBkM09T2iU7oIs6Gulkea9xXBbFvNR45PuinCp1+e3nM0
	 DcccSLspu9uDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3823CD98D2
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 08:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178142679369.14068.12356928603013262820.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97b0e8d3e95f21af72811035edc71253836353fc1b12e3220b59daddba7f5d05
Date: Sun, 14 Jun 2026 08:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781426793
