Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D31A1BD4FF
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 16:45:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719938723; cv=none; b=WbE1c4B4UEAp9UGYy7cWDN6eN1+rCXqrdRl37d9dxo1ulJ5OGhGLsBqrpquOkukmOJRKhg7xX+3FGBJcrDx8liX+zI3BsTHAiAE9m0WuYX3RVFj6jbh+e9WcS78vrWTkHXUdkGNECZ77OAV9SawnpTbElaQCxrQcr70Qfs/4128=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719938723; c=relaxed/simple;
	bh=dtVkwKpm3JFCdJaUOXUT9HRySjbC7itVJJkwPbMxs6s=;
	h=To:Subject:From:Message-Id:Date; b=Ybq2B12oX6xmFY+qeBn/I4UxwUIhEH/YUGOyBd3iS/qgVnoLHr9Q8btXpKQzq2c8/h7x50Tlu2WhAbSon0xlvWROXS0YSrRH7oG2phs26h1B7iz8ZFp9EM3M8fuTCWb/GjykmggxZpeutPj8tr6PaA7lpkN4GMo6dkZOVk1tBaQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I+NDzm6A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I+NDzm6A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D135AC116B1
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 16:45:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719938722;
	bh=dtVkwKpm3JFCdJaUOXUT9HRySjbC7itVJJkwPbMxs6s=;
	h=To:Subject:From:Date:From;
	b=I+NDzm6AiJkJHbqtxN8Zr7SwRVzcN9dXHmmCo6grkOlEVuCbsf7TnvGH6ctTIkb7h
	 dzDVpBc6atvuRgykuTRRt2ys7KmjU9yQr5RdXiZxdOqv08uodbWeZMcllrL9YbIU1O
	 fnNgl5cVy/e1GS7Wi2aBVZsxUKhchgbZGjFDgGS3p3ALM6eBMrAb6Me7nZ2+hELLLA
	 6CRbzJ0mlR3mAggBjMMFvnPc4VG76XzD8x4gdNIJSZBIEwLYgpVgyGxWDfzqSwSmlq
	 1c2fyDbyT5+u1DFtdge985MK1WeMiBMYByTdufmNElOSfa+zt9ngebcxGRrwgudE5n
	 H4TUZYrER+Jlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDD51C30658
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 16:45:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171993872276.20174.1109405022177076625.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b847874a272d410868e583eae5fa088992f2ee63629b3d84e73026d57b3416e
Date: Tue, 02 Jul 2024 16:45:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719938722
