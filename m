Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1206220FA81
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 12:32:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779712354; cv=none; b=hEn+w74vV7CIYovPng8GLkczxAzS4LbBKb8IEYBNyaRi8pDp6D4UiQocF4vCb3zY5luBNDFzhYxaCqhkOmhuEGAENZ1khHrUFtSxb2YqxmfadoD2KxOpoq2vE+UH3HaYtSa3XYva+AXgEN7EBs0lBpMtWJfmhHrDG4cWpdgbNco=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779712354; c=relaxed/simple;
	bh=A71Q/Swn6NWo6xaPHZ8KEQEKRQvd5a+6NiDZbLd4RYY=;
	h=To:Subject:From:Message-Id:Date; b=EFST4KRY4Ds8ppJLBVEXBccfYPeI4H/OWtTkVIal0NWwsN5AD22VGFp9G8JI6lwdBFWJEkhP22pYELe9/6Gw4r8UGde79kPpBJwyvyNDAm9wyu0nfjV2XP07jpWj0bqOPZmKg2OzVbNPQRVHP6GG9b2JNGJstcWOgMv+6pSXNSA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jtza7mCL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jtza7mCL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C692EC2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 12:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779712353;
	bh=A71Q/Swn6NWo6xaPHZ8KEQEKRQvd5a+6NiDZbLd4RYY=;
	h=To:Subject:From:Date:From;
	b=jtza7mCL83rpu+wN9whes2C4V3P/YuF4ZShiAc23aZMCD89S35+xXzl+5SH+R8P2d
	 f9ANvFWQAZnJXgb/8y7SyTlaXR5RSpyXmRXF2PrA5yZnOEF0MZtGEenlTiEBavSOAE
	 n+/mdcPf07Qekjp+FYV/+PgYuun6FR14MMrPJY2EuhzgJWuF0V5nDnNQ4m8l7nx1od
	 zOeUjAPhKrQF5jwx2iBXxJJxKDNaNjvC93Qp1na96+h+gvrlJLwIWqU+UR1Bz3/+Bi
	 Nng2h35WaMYW7VB2i38GL2G2fKQidJYuCcjn8IAOBqlEJsQYQjD2mADiSFMnvpCfzG
	 pfSYjAXtjBdRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABBB5CD5BB1
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 12:32:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177971235369.14624.11343196487354860161.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5598f7af3b7f18c98da8e818f4dbc3da2740fa812d77ab3fb554397e90aaf735
Date: Mon, 25 May 2026 12:32:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779712353
