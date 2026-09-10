Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BE7537B021
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 23:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789082434; cv=none; b=fcH4utV1uAa3VrOq6oBbMRSmNSH1dBEGwVhlHHT1TL3L5m32dJ1T45gQ60aEIfgXeMWoxQ9ZaL4SU24ahceTl04XZPKIEbYKgzndM8bqxq0CUtrs1FnbbmD7Lh1KpDFxBDclIlkObHX1LREMbvxbhy0YKeElD9mN/kHgyMhfBvw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789082434; c=relaxed/simple;
	bh=a3U3yWeJj6azj+bFFWCwedG+MhRT/rC+9MuL47Vql9w=;
	h=To:Subject:From:Message-Id:Date; b=Pvm2aLlaHzDZg63KQy9hByAapbYGiufGKHYY/abScZXV26k0wMy2Rahb0py7LhugniHzqUbLgbK8H/6cD/1kdkAJfag9bRZP9Ib9Tfj4J60F9sQccDlg1D/N9PPg+AcJPz70SW+k6vTM/NgIZGVAmTSZgRg52H/zRODjBQ3pCgk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ONTIVxO/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ONTIVxO/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF9F4C2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 23:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789082433;
	bh=a3U3yWeJj6azj+bFFWCwedG+MhRT/rC+9MuL47Vql9w=;
	h=To:Subject:From:Date:From;
	b=ONTIVxO/UBxL3MQqS2tfc/yDScP8BwpfMm13xn6O1khgPJedPOYCw8WxtUPW1pCPH
	 ANiG17nk66Vv7ytD6MJRKBza5x/EagUJDqm9p7ii2rkaEs5pfqoXJq+Gd1wxIlz3IZ
	 j+iDBYMDgNxAKiFzx8HKikKH3S6TbdnkEbI64XmVpcqp3Z7Rw6MSncBiaHAAF9SUi+
	 fP32/IkiBP748fyK7Es4faE50dcDqSb6NimVMhFd+WXq44dyGoNyKtUtBxUQO6t2wV
	 B2f0NNf95HlIaoSZJltwjDNxaKKAwzOsOh4t2+V3i4gvvHKcE4gq71fYIXvUlPv8Xd
	 OiZOrEkqM/D8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAC92C88E41
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 23:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178908243369.17048.17042393995078347776.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e50ea7ec0164ccfef5939e175df7d9cddb8b381502efd447c3d6342aef29955
Date: Thu, 10 Sep 2026 23:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789082433
