Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EB701459FA
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751733595; cv=none; b=P06ybxpYlZb+ZDap8U887vlBf+bl5ylFbdYKVAMmMZ+BeKGkR0LVpsv40+Vlb1NzRuwutxx0AVEhQV++pavVviTnfNMzamLC1gWLlHUgw1c125VlewygFrWgT0j55pr0soj0rpox6HN97uD4k29dFkni4TiICH/8smq+n+TiOd4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751733595; c=relaxed/simple;
	bh=aYDPkC4GHmR15pfawnr5nnZJ15XH2bgQN98/1S9KcOY=;
	h=To:Subject:From:Message-Id:Date; b=su+JsJ8zgs+6SCJmTwHUhs1SE2GSWkIFfkJLi7uoS3o2tE0a/quuDUZ/qOgxfK3loDGnnO8DKEIZ3c5cnuU73xTKiJwNPiuQAb1InxL3gkb21Hv6EvTuai2+N3awuQ49wh6o7VtsneVbxTWjzQVOu50isnYqYsg3JTFVKak79+k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cwyoBDjh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cwyoBDjh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4CCDC4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751733593;
	bh=aYDPkC4GHmR15pfawnr5nnZJ15XH2bgQN98/1S9KcOY=;
	h=To:Subject:From:Date:From;
	b=cwyoBDjhdOpsKoNVTFeK/kpT0YHs55U5IN6TA6nGRiJi2bCyCq0otZqfkA4RahkzQ
	 ZOv/4rFKDc1ZkDdn/o6g6SKja8WazYkoWuwkPlY4UgGZFdz3akMPvpwUJLn51KYdsj
	 TdN7Vi5xUFlj4AZhYKulZrX6PXaxYbu5u2IaIlC2Pm2H4QnLosO2v9z7Gx+Qt0EAO1
	 8TS2Z3lFfvNPVsAcwlK65mT0gMlD5ht/JbQ2Wyv8EYE+5SIhgYMiaZvJwxUKcWYGRn
	 Di/R9suNt5VLiJKNd0lk+8F4zrVx191ccdp7bLUsCPeKwCBBmRXV+n0AMLO9HTfj8a
	 CnxduNlkMzHIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 910F5C83030
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175173359357.14989.7727147587979966829.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9dc32c71421f940ef6f7c70a0124d7eda79a2f13596c34f60f1dd010dd06032c
Date: Sat, 05 Jul 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751733593
