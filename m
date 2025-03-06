Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33BEE1C84B8
	for <ddprobe@lists.linux.dev>; Thu,  6 Mar 2025 07:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741247934; cv=none; b=lhxrsTbUHkyEVWUTnkynNpqsWDTr12h3pg0VmpRvioS2BuwnEdzVXcsKCrYG2cEqHeKjFRp306wyl4G0RSsI1CaXapV5mGpHxMahfY9pTUYPvt+t9h4n3UE28+dwqXUF6MtDS1maeyE4uIzW8+pbwr8Rr4E6km8DqpC5sPETV30=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741247934; c=relaxed/simple;
	bh=oWHLvfitk735KLKAWhAm5+bHQTz92P02cR8j5Pdq+n0=;
	h=To:Subject:From:Message-Id:Date; b=NnuNayijJlMqMz6hbMwazkNyZ4uQP8kV+ZXWMASSpViIhgnwCwZ67objsQQyXBCi2vaIhzWFz6P5hW+zkZF8t7RmzHRcppHRKxQ7f6TpnVoHdnc19Jcef38DBchR8M2mVmvatgkrJ9ZLhtTKpnNBET4jJOUYPcwB6LRkadxICyU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z2zryeyq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z2zryeyq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA9A1C4CEE4
	for <ddprobe@lists.linux.dev>; Thu,  6 Mar 2025 07:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741247933;
	bh=oWHLvfitk735KLKAWhAm5+bHQTz92P02cR8j5Pdq+n0=;
	h=To:Subject:From:Date:From;
	b=Z2zryeyq0oui3EWLLmQkeD32SRsN3BA22f9JZAqHV3kgaEJUlBDg00VQhT8yN0o1C
	 PitRYE3bqlb6ZUowaOA2YZI7MOnvw7xIyy3x5MC5lrXB9Zn5wWnktSZiZmq+vQeCOx
	 tcp9uN1j4hgFqq7cGXb5bk5PGFIzAS9+AeNjGY4ZzMRpU4PYbYi4tIt6tCEN2Qd43T
	 bYc3YIAD2B5KegwhKqF2i00WvGjpwEmvzw49QSdKfohtzAH9ubgC5Qe7miiztH2x7m
	 14FEl0LImI4poPzAbqyYPEAO1njLXE5kyCnS20/8CTgz1H7owrI9Chf83T+/zCKtxj
	 DyMnBUGLRjJmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BAA1C282D1
	for <ddprobe@lists.linux.dev>; Thu,  6 Mar 2025 07:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174124793361.25360.5412728955294751496.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dea29b131eb4220b9b8f7b0c7bc50a5b21261557f6a4aff2983688d823d883fb
Date: Thu, 06 Mar 2025 07:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741247933
