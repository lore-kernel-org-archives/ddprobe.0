Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CED6627F003
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757161193; cv=none; b=emZgvWttv3DCA+n7W/j8vId2qcCOL9FN77FrWQyXpueRg5UTzXkVxjD3MHmSrYO/ViwM+DYe9fHlLPpoUpgiDf6k09iN3eUFvvLPvkwn7/N9tKDtZWMAFMYX/+hxV+FChi/2ql8TuIjObrSQdgfulri7M0kzgSLpsAY4ZfdaGq4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757161193; c=relaxed/simple;
	bh=g2BTi5RdCVJjnhZy7AGChNF3rBOf7PUcE5qwtxoZ6KE=;
	h=To:Subject:From:Message-Id:Date; b=afw419IDbKqr9zwsayk94JdRy9Kw047/7TNlqw/+0Hj5NLLtnYQXv/h1d/satvQ5nr4l7NavSjWvwRC4CmZTUkTCoeT/gyxB+VZ8QKP3dVf5DxW4EWT/vdfuoMd1V11ozGRcn/W25M2wlX8i2vEL931LQHMuqiWTZByaUFj++d8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QN6i0Y9R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QN6i0Y9R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A272CC4CEF4
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757161193;
	bh=g2BTi5RdCVJjnhZy7AGChNF3rBOf7PUcE5qwtxoZ6KE=;
	h=To:Subject:From:Date:From;
	b=QN6i0Y9RBYMI1qBIZ2nKKnYpx80erYt0s0RIlJ98awIrQWCRmvtMoRYXP0Wd9RC+t
	 NKpvFZkYuRKRMjQOu/dJuLiUB7hFeUwuLTSFqCYuv804AH3yxG+Cjp3lEzxEJ1Y6yP
	 UVYugbp5kNPITNyCFkU/MQoQRxXNgdLu84drdTOJp615xq6a4YfNcOB1EQlw+VOh00
	 QEqYQku9vfn39oZ3FKsux5YhjspGVbdx3WzSfEAfPhDKhJZy/OrukmOMm9V/bgKTf4
	 J2+e82yom1ePOwQePZ7n1ZBrJARgPgcrzn4tOq+UIJbWhf76I+aivhe2EF5A3ieGRt
	 tJ0H2JvVALK6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94937CA1002
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175716119357.24771.11530888037315927467.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc228ea7ca4ed063c3f3b0db48e2273b6e2147f0c8468ee7a70f9f5613dfa5dd
Date: Sat, 06 Sep 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757161193
