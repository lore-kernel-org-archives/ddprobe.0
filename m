Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21371364045
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 22:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785623434; cv=none; b=imkQQp19it1G/X5k8LkRnem8D4PtTFgdk/I3YIJo5fJ4YYX2ju40E/rDKdK5eMqSxsCiPz3lb60bDlHpF1QbYNv+vAVUoozzKnHAKiOCdnmTS6ZJkrf0MH1kni2ymVUwEgUV0pOZRynwqSEfV6lls6Q9HGEAMTth70vSRkxGbfU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785623434; c=relaxed/simple;
	bh=46L2zLuQIxuEgwMIs7hvG2kSJqOYba7kApmYYShylow=;
	h=To:Subject:From:Message-Id:Date; b=klYkbkf7SMPqtPteJdaM4LeCgTlFILXwVokMlqUf8TPmfZN4FKcNizuXDfgGIP1J60oGzMTQQiTfWK+evgGtph4oTkKId/sLzxsX1OtvL7jEVI89ZbgeXwCBPoXdVkQU3Nl/ArmzV1TiHs4m1nbtsC1+PsPwam/4KW3pf7XK/Ys=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DqvIj8vs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DqvIj8vs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0389C2BCB3
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 22:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785623433;
	bh=46L2zLuQIxuEgwMIs7hvG2kSJqOYba7kApmYYShylow=;
	h=To:Subject:From:Date:From;
	b=DqvIj8vsqm2P8SHzAzhcgJsE7MfD0pD5Jsb6qvXeMzlF7sf5P/mYpkd9xeHmJ631V
	 vaOtziINjXwlMQnV1fBN+f5o5btik6Gi9NoM/gmYlw0/WFYK7XhJWxqsu6Q2SFoHrh
	 v0PD+bJfaAmcme6laT94uc2LgPxUdCd9arghKQFkl2hzQm6eMataUkfEy5Ezq8Av8E
	 cZcaHW9KlhDm50xUa71K2hJ6Ck4XQ1vr3qirY1WCD7DR6NPJwpAmAZTuRNWQH9KLED
	 lZrc6SAbMf3XlyR9M+JefCyqyTN9PgUIvhjOX4oflf3SUfYHtGXe6YNT0cKJCf6p1f
	 IArgvi64NdPeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA729C5516F
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 22:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178562343368.9290.2130348230986119540.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e12b55b0d8a8e035b2e549389dc33c3ec2fd9ca0334ae50c471b01688a04c2d
Date: Sat, 01 Aug 2026 22:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785623433
