Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 296D878F2F
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 12:05:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775304334; cv=none; b=rPzVBY8CpR9yay9O+kPcihsVmPqypTqsp7Z7WEvHeq0YSAmITM7wRrk36wwFCwodv3dAQNzuDw8x6k2bQrW1TbuZxR46AltfBpijZ/aHa1fkb5dDNIaSJGap42D7MuAbmI5QjUS8UbKib2Uu5SPc7PCl3E53JFRn3Ms0TYnI4JQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775304334; c=relaxed/simple;
	bh=co0r+G71BW3Ms7hl3ldDNHzAPGG5On5EMVXxMxj0NRU=;
	h=To:Subject:From:Message-Id:Date; b=eAqNzgqTCzfyd3IUSaBXdMl8xqe3jxiSkA7t115eapD59S5uDTF7YGhBCB2yj+iZaUKhMA9n70aUb+HI0bqKchSKUaB4DIIzhkAyQnj75qnQskxmSkTaWwDFSkMvK4FCE9DRLPb5FksoLhNDLCAUrOrugG19mlr+hwjxNXX9Lbc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D/ug3RPq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D/ug3RPq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C835AC19421
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 12:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775304333;
	bh=co0r+G71BW3Ms7hl3ldDNHzAPGG5On5EMVXxMxj0NRU=;
	h=To:Subject:From:Date:From;
	b=D/ug3RPqZE4x+no4iX4s69+P3lNAk1LrfYlP5dV4ebcluFCJpweLypNrsjzXGYTxy
	 bESXeIbrMns4cnv2Fn0SIDZaQLrbTbelBkpf2v7NzpEztcyo7EZG3C8lBXQ5xFUZ8B
	 oFM8dzd37uankIUpVGwh84xN64tqNmOk3j6c1tnoXIAmTnDVxCPRiUDkSqyft0OzgK
	 9WTpML1R8gofXL5DsW++tHvRzt2FUIThS3D1nH3NVD9++L6pYZax6UFUFfXYGa4e8f
	 AMM1lNlZCyTtzcv6K+AOgDKGKN9GYsRFGYrzXwhXT4G2kNwQZDVqCnq9eb3rK7LXLr
	 WOk9nHaN6y1SQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B00D2E88D99
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 12:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177530433368.26789.12904154083178430353.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8611ad68840368d4ec8cc95750fa7ed98ccab97491179d172031e91f43a3116f
Date: Sat, 04 Apr 2026 12:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775304333
