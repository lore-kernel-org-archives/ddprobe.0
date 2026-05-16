Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C7FD30C14E
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 09:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778923834; cv=none; b=ACqwQYdn/74hYOh+eLWzf4zqPsa1/Z2G63GzB3HaVHH8v4SC6HO7fvF0+YYJOG0UACOK5rA+A5bB6qjr6ZTsQGfw3zGtWfm+1nM06jfKBG4hlCuuF9qo4yFFDat+kKPjRZwhxn7iA1dT8Ht1DNTHgwZwkbG4DMRblCX7zy0GR/k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778923834; c=relaxed/simple;
	bh=SEauRqKQAWBo+e4aCQIZCmHNMCGJIf30IBcuSUQn73k=;
	h=To:Subject:From:Message-Id:Date; b=nh5/Nj8qXBbWJsOR6elSlgByXPlr1p8P7vURVhyFRQMT1MaiC8Bvwcqa+1otv0acoydxczprQm6a3pXAoptw1KxOscaNFxrdDn+avi7wIlJWX4APF2XxCBTzjatpVHJojzSU+aY8e0dpH6KRIUw086/s1CL76s7IqJkTQCPxdJM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XXuuKC36; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XXuuKC36"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2847C19425
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 09:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778923833;
	bh=SEauRqKQAWBo+e4aCQIZCmHNMCGJIf30IBcuSUQn73k=;
	h=To:Subject:From:Date:From;
	b=XXuuKC36WsQpwUuL1K4cLQDfOkR/RFtY8ltT6P1iDJfWTmVbGe1sdkyMWeZxUwU89
	 abzdRTK/rmbOyADeFubjnRb6Wo4uRDltL+ETun6sCyzgqqyKfFkDq5fJ3np09dXFsn
	 gygD+lM8DFPopc++KG4QR/PE7xcj1hjDI3rTQhaEB0C4+/kKs1c6DIwEn6+0PJsFOk
	 N3OvDoQGn/FL8mhQjaBnMkRDQzdXPG2rH6QImwpuvHeakPN5EJn86MG3Bi87BbjGRP
	 EtPidRYLe9Fo0G6l8s03BiaYJSIA2CGpPY86q6kcwWOp3L80hi8Yf/HgN+GBjIJMc1
	 g9TpodPz5yD9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B08EBCD4F25
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 09:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177892383368.2760.6379482970508483901.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dbd16e64d1c5352ce362526ecf84e4511d343c930ac88ecd3716db9f4f503a64
Date: Sat, 16 May 2026 09:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778923833
