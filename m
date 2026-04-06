Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B72770809
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 15:05:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775487934; cv=none; b=EKKBAkKvNKvylLL/PBmeAbc9CQ3sGbrcqRUfjEzXjYiG/co3ikVTyuWT+Day2F9ztq/D3a9j3927FbGqjAV1zO3+HSZ9APSYR+h9X8M0570gIZ5FoVaUnOFagaAWOHHQDkEJcMkL2eaTDSYFxVfdbglZnGHLr6CG0vz1cjBQPfQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775487934; c=relaxed/simple;
	bh=dXqQsaGNX4ZsD2PQS9uPo6TGb1vOjafW8cA71o64+9s=;
	h=To:Subject:From:Message-Id:Date; b=a3CcfL8iFKxEN+odI++7gzLVhiTxT+BVn6o7BsZPyr/OpuN99LAQ/2qRm5BFbwSOP8EkWe2l3Jk6fAYJI5oksKTLnFP8Jgnx4JlP/HaL8q6738VNuxfJ4s0HWBh5bVcvb5S78pC7AsT7sIdGczBOpyF6x4VKQyObAB1qVsXOFqM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mmxkUMts; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mmxkUMts"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC4D3C4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 15:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775487933;
	bh=dXqQsaGNX4ZsD2PQS9uPo6TGb1vOjafW8cA71o64+9s=;
	h=To:Subject:From:Date:From;
	b=mmxkUMtsgdo7o38zVVCKjhVTAwBzEhYsNyewgBDcsxggul38Cz6b9XPzpMtdalIhL
	 kZyzdsP+3LZhZILLg8oYa4CD6OFJcx93Btgb1hd/Nxb0LebYaamddx2zcRlXKZRAT9
	 athuNYe7nDPw/lJ2WiMMI4WgT2BI2iOt6c4GSkJ666U734G/UAtNXS+kCuODjJu5lm
	 UqdRF7wpVt3IyP16JDMGg0b5p5JJ9gJ+ZXdXWNA1RmfMDGz+Er/6X8TlqiJf6x7WZO
	 Kz9LB8/xjDxMh23Df2jxGFUk0tu5Qc3m1CEkYJ2JggDRdAd9NMA9g8POkjGnJrahYr
	 kUS1OBR3/S4sQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC4B0F46C45
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 15:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177548793369.12409.14763504369876017096.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8df6cefbbd97b9f45c90bbcd06f0622da5c26d0388f93eab99c6a5471cfc517c
Date: Mon, 06 Apr 2026 15:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775487933
