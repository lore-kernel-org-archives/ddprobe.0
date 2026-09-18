Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53AFC1C2AA
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 16:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789747234; cv=none; b=kg8zYqcLqd1G1wcmvkogVITAgIX+IFtOk+QIcef08KV4r+auyRDmL6EUr+GcP8zknv6WZNtk7Xnub24GcKlUch5mFS4B4qBleu+lwGEqusM6a1Hu6+tTrQB8CfNP9EDFXNqdUrim7UJVdcXbdZSzvpusE1+InEa0d8IULcht0nc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789747234; c=relaxed/simple;
	bh=tB8ZUbNLxMKBtvlz42N2uJiMLH9EcdzvyoUANZalXag=;
	h=To:Subject:From:Message-Id:Date; b=h0NayTYGo7/81dLjmrJJ80RykNWrQhig3mKs9x2tQiI9jUur4zMM/QOqY8UO0nkdBJMSnV5WZLDEsOS3s5lyJqSIh6rbpP3i3dKbNNdEhUA4WNBcwtQsVBm5Ev51JK70yhOn3pQuyXxlft/dFilB7P4ttVc9M/b/VQdYMkcX4O8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BGxm1Vb/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BGxm1Vb/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1561C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 16:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789747233;
	bh=tB8ZUbNLxMKBtvlz42N2uJiMLH9EcdzvyoUANZalXag=;
	h=To:Subject:From:Date:From;
	b=BGxm1Vb/gX2P+qJOn1eC5a1y8hfJGQOJWrkxbRKcjLNVH9JB8ZYk/9l0ZInubPd/x
	 rtIRfwx98C6ffNPkfZUC33ftB/2xtIY5biqa/iQiRQi8YvvMAdlQpkLvWj821jRyiz
	 B2N99wl5ylO7xKsjf/f3uh+6BbvlJQbQZDviFrCN5nZVgUt2SqAy4Q7YRYKz9T2G5m
	 gqLhL+O8+0MB30tgTW98qU5AhX4Pdin0lTRXXDlVCE51ox6dsPGcf9fY4w+Ycr/qPr
	 VOt0r17zqQVmweCr6EOghGXbT74vR0+7ARSGSEchHFhiacTpc3cEZMAGbX0PvAKRDl
	 b03sD5XqxLfiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE50CC982DA
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 16:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178974723369.3113.808398939699504578.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 800206f9e8d85120dd1f8053e2f06a25f04533b2e9f1b2c67f27410832a52587
Date: Fri, 18 Sep 2026 16:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789747233
