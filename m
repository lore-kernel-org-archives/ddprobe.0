Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 269122E36FB
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751716194; cv=none; b=QbGCZpKpNN7FSCeau29sGRsjykY+dcDl64K6quAMc1ffUbLwBzE46kbv68ExahGBwyyiB3KvucM2sdaZtf+nY649HkbmkZmhCrQfCL1eSrup883Go45ESLLpU+So5xnINnpjXmj0w/3xcRiWlpy34B5u5YVlHsvnmoFoMrxeiVk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751716194; c=relaxed/simple;
	bh=WmxmudHk5EfOzB3eftviy961EP/D4ZKrGpTBd2BhfN8=;
	h=To:Subject:From:Message-Id:Date; b=qJIeegF/Fsoc+xcXYiPIm9zuZtbgI+wJ8igSZD8MCLknGMfRft8eSCjTNt8zb89SjoJcOzxQKMKD920QMLmB4yXoR3K8gBdQ6GnC9aP+gYLQ4bW00d5fqzEAc2ajoh+s8qCa+IYKETQkX/BEk0RUGhWMfE79pqoQXzbvWCnuHjM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N2ecDgkF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N2ecDgkF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3349C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751716193;
	bh=WmxmudHk5EfOzB3eftviy961EP/D4ZKrGpTBd2BhfN8=;
	h=To:Subject:From:Date:From;
	b=N2ecDgkFAsp1nyz5uJUssea9Wq0FkfGgy0uuBNGd8cvGvJptCoEFjnhtCn2HALpB8
	 L1kSU/T2u6eCNYTcfpRCu/Tapdw+nSYCgQM7dk23M04LRxqEAG8bF4g1YgPxu6TOQ0
	 iqJx3yMDUtvR2FCaZvG1hCziHP2yiin92ySz+E+10DQeSIDntweu6SyqwmDkER/+9v
	 oaecbUNy3gQ3LwSDl2yrt/CESJZluTWsfcKTS1mKWkJKDa+ddXjrelWseL299oDl1M
	 +cZtWyzlANU493O+WUXzzQdYGx5mGpFopaUc41nKvqa1Y1ztXGH4oWCssfpCwn/B22
	 qGBWGlXDiVBqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C27C8303D
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175171619357.719.10479792795426645025.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a75a0a73f239fc9ad6cf62221dde15066f1cd24e928945e570e29fe8a4cbff6
Date: Sat, 05 Jul 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751716193
