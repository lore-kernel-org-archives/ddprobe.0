Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F3C930C153
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 21:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779052234; cv=none; b=OM0dUz0l0xpFDWiHsX7JuMuQtMx13SQr4cGj2pFHnIIVrJ2lV3wtF4vxmhdE/QiruNm5BJspB2p/wx1Vo8j1bu7XwbKSVI8WR4YxawurIPdA+Y/CdCbVy3OUWjVYsXR8ZQjo1yn/XUzi4Nf3A5r7T0OJKuqLdSc1Jxj7LMxb6dM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779052234; c=relaxed/simple;
	bh=a5iebL6OzK1XUkBCxzwWOPVp9UgJpOZ3qT0LdguNr8M=;
	h=To:Subject:From:Message-Id:Date; b=kn4ekylUnfvPildacBt5TspocROAEpgnCARLWjUGrEgBZnknXkzOWY+xiyacut/s5KeG6LXNOhW00YFrQGBL3h1+K0iojryn0e5fi1QcGCDMKdqpJdnGc1BWp3MbFs5Npnwypr5ksC3jCqt7ZT6VJAkC5mWvY+mbC/OqOqmm/UU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TSH8/cHa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TSH8/cHa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCDF6C2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 21:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779052233;
	bh=a5iebL6OzK1XUkBCxzwWOPVp9UgJpOZ3qT0LdguNr8M=;
	h=To:Subject:From:Date:From;
	b=TSH8/cHar6ATE1G+gMf9ET8wZHZOiIe8l3PA4ih6YADcPvXbuWO8YmXJMg+hX+aD3
	 zWTM6/iHtEf1FtmUoHzKxvkCJ9neVKC7v6R0pYQek2o2v9RyMNCZVKScR19B5eN0W5
	 sJRWphf/apAcdOhW8jaZMqjSuMc5M8N5g0ZjtOPywePNfy+KIakJ6xr25pWrPHrJas
	 oFBEfqlaZ+wDU3R+h6adVpwN+nJcMrWOq/xieC3meJb8ZCVa2o8Jpy5jZBDmTC7Z5Z
	 nIv+0m6cCqstpjVov5QUKhxb6cUuV5DC+gEIeNrM2VLR4AFY9m3uDbLscgqJhcHtPr
	 E28th3OzcdNlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB29BCD4F3D
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 21:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177905223369.10619.6154709565594227297.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad5bfbdac2f0e8da5feae1eef9f5003c74729daf57b6bc2acacf755a0fa20d2c
Date: Sun, 17 May 2026 21:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779052233
