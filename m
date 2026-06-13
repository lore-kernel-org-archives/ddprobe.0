Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D09C35B633
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 17:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781372794; cv=none; b=gGjHr32PTUpwcMrh2F2tGdqF+TUPOCmb8q7ZBEWwcXvB2zo/Yey8h3/AuD3I+crHMHktqRkki7v37EmTdGZobh71e4cfUmWA+Si5fErDT5NUZhQJc7+Nhf8uP4CdqBSeePYGaqObjib+4Nfy8/US6aNttGG/SyY9Ts4Xvo1/mLg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781372794; c=relaxed/simple;
	bh=wbtpwFo+/sp4GtZaquPKxBQobNvr7cSTTffw1rYrQIo=;
	h=To:Subject:From:Message-Id:Date; b=AqmbIySByfF2Xj5mHl6fRJayQYQdhOFn0Zq+kAkijUkX7jtAG69uVo7Xx5zQ7EuAD2Ia/1+rY5qHQ69ymZRKnClLomtimxodT3DOfAd+v5q2oMPPVYi/whcDFaYr6NrzpVoZJ6mKOhjdx5XxJFB1ZhYiw9nd57kzmuRpd8RJnzE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UrpKqjn7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UrpKqjn7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C553DC19425
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 17:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781372793;
	bh=wbtpwFo+/sp4GtZaquPKxBQobNvr7cSTTffw1rYrQIo=;
	h=To:Subject:From:Date:From;
	b=UrpKqjn7SwED4/QPZC0CLykCPhpcffzNZKjDYn621Blka4JTWijbUqNRVHfEGrKZ3
	 X+fIVfBjXyIuCsWBBzH2g79uas4NykDeycLVsgisLuQ5Dv6b13G9IYvS4mWzhk9yww
	 tVX8236SVXYNLVF/sigMuqbIMefPUgCE242E5guO4at1G2nc/zm6Mr2JMkCG75KON+
	 p1+lDE4bFQzzeM+q+2qFdYrnMYMKzs2Arowg8iEN5UbqvzDVYeIOWy0vxSPMweRiIh
	 TWGgwBbYWqs0zI9FKSf7IZWAx/Bfdc+rbgtpvQDqMn8BaWS3nkokwFMYLvpXK7Q56t
	 nkKopxT1mjksA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9A6BCD98C5
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 17:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178137279367.30448.12793657204729573968.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cce889f73a9261eee5a6af3b3e9d1e960fa8459a63955e84c4f8e10781c96c55
Date: Sat, 13 Jun 2026 17:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781372793
