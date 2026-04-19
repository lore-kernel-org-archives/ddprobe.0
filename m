Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F86513B7AE
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 01:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776562054; cv=none; b=laseoFP5wBY7DaBC0EXi9mZnn4x8niw5Gs2cwU6bLqAki/3bHie8Njwn/ilU7xd6feCbAZ1lI+HwIzGhuMZnXpIH64yj45nsw5FFfD1p0TVp3iHMoU52ToHstZrDqZBrUrhk+hECmBpd8Yyaz/5meFfOiLeiIZzenhrAWy4wVMM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776562054; c=relaxed/simple;
	bh=QrpAc00zwks7pq7SpYSBvg2VutWImNiwO/aNwLiaEZ8=;
	h=To:Subject:From:Message-Id:Date; b=oMpwC2RdHwV4vwoPtW8501y4l0h1pm0RTNVl4t6UAgOPytRgkyWs/jzM6BTWP97I6Nj0GseJ5KM5Jnjvk31n0Q/PmRYguLWQIM+rsnOuAY+MsQJuvmEt/+PSKNgpVg9/sjQ0JSEZlGO/LxN4xMW6HjvaRMF0hTiqWYv4NaQTTMQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qESpgyQc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qESpgyQc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0629C19424
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 01:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776562053;
	bh=QrpAc00zwks7pq7SpYSBvg2VutWImNiwO/aNwLiaEZ8=;
	h=To:Subject:From:Date:From;
	b=qESpgyQc/bHLjiJAUexd+j2ecowwMs4NxeFRysqlvR1zJ9E9Q946LKUr2yHEkDCAk
	 KSsaz7hzTcoezQfU4FRRK6yUJYl1EoZwhd5qBK7bJAqsS1WricYZ5VVvQ2/4gotb1E
	 Gf8pC5Mz1NV/5LXJCWN/AuSjNSAT8i51CbWJEMyHMYhAydJjMwpgk9kzYS6mQb+NuO
	 DEEKwfSHQO5MPnVkKblWXPoybnzJZDgXrmDsJR7C1Nb5Pr0z2saV6mM5FtXyQQG273
	 FGHcC6YKDboIrslegG2/v7xNbbJsK2sW9p1jNKDn7hjlqFzNWkDsRIzH7D01hMspoO
	 J49MrSp9jFxWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFC51F99C92
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 01:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177656205368.26056.1662320198252934644.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fbce6df6a290106c61e82b4d10b9fc2f0030920450fb475bc95232fe6c809552
Date: Sun, 19 Apr 2026 01:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776562053
