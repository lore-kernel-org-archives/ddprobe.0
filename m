Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 702594E0203
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 10:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791885634; cv=none; b=TS266nR4HRwBvMK2sFpwM5OHd8+qwcAou/8lCkmDvib7yjph9w+LbCuobQ/xvS/EnSMGsbEwhLSp/4c9k8ajXIwOqVE9bZ1L+xai0gxDwIGh/mRUMyNZJJVBlg8rgkNe5RzJqJVPbr9vMFwEmZKiOQg1w9UfhAdYs+R/uns7r7M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791885634; c=relaxed/simple;
	bh=e9nMKEfGeqXb8dukxoCmhwr6Nr1himotrx9LRmmFpbM=;
	h=To:Subject:From:Message-Id:Date; b=mHvRXnQwTzKLQCY9n1VN7WQf1KklenUF3CxU8RS5I8mWVAH2/iNs3LVbGGg/ljqVxacrQYuKh2C/uYPyYr059x49UNBz1gnd+t00Tc4Ux+yv8EsBeKyTtpw7lYH0fcJ/+yzhKcl+tCb0AlNaz7tBe56XjM3DuQijVjkwXnIyC+I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sBN0wBc0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sBN0wBc0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F1352C2BCF4
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 10:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791885634;
	bh=e9nMKEfGeqXb8dukxoCmhwr6Nr1himotrx9LRmmFpbM=;
	h=To:Subject:From:Date:From;
	b=sBN0wBc0Vcx0K92BuBks4zy/bbz6XsQmxaOm6kZAITu/150izt4CKVOuDadUK0Loq
	 SBkWAzPhKjgK2F/U97lXKiOaBbSMwxvAwX7u9P5RHfzINVxUBEKg1RiMQ8UyJbpnYV
	 cQBL6mo81CKCgzxit/tkZFDFwls85cVx28ykH6FRXXrhqdB0T2m/pA0z3mK3Y8+KcA
	 duBWvtffW40IU0qhsjD7jHYqUoAuUNiMwIc8VMznHASmd7xBffLZaKuVd5H2gzFP3o
	 Y8v+PuCfVOIn+QArizlX8Ob6RyqsdmjcCZuPihYs412MqcbEm2y36f/rDYzzUFwoBQ
	 NHEXHb/6DApPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2E7ECC6B08
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 10:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179188563371.22844.7736749931342935279.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f49324f2b2793d487796224c5d43c09e628c76fa44720c67de8fc7985a209bf8
Date: Tue, 13 Oct 2026 10:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791885633
