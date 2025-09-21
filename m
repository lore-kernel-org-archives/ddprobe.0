Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D1061D54D8
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758480594; cv=none; b=lrZ2yjZj+aps1Zx2DzXlPdbgx1OqAF4eTcs4IvBPt3nAwOitka5tsLCmsJamcbT0Wc0uAfijC7UBc/WDbNMj7Rdb7i6s7LopAnZu3BsYLS+ecOvpJdhJCXXTDkxrzlamSMb+8GZSiXXVxDn4lhx/dSYGMLaRTb++jcsWQXWk38I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758480594; c=relaxed/simple;
	bh=1nKRC4AWfKC8zyKexOoWprB82pwS5ogbsNecBnujtOs=;
	h=To:Subject:From:Message-Id:Date; b=dnMbu5yQq74nJdEKl396o0RRHwOB8rdMl3a2NoR6+h4Hmf8tvwJAjdZKkbs81RiZ7HzJ0fCbLoY3lzB6r5TneWZfnZrWpKc0dumlXhF7p9CN3nhOouNLGGTOzs4RCG7/b3s1UsXqXDEmU8YMQTKE+0oJULUJHYndg8MpuOGWY4w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IM/vjPs7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IM/vjPs7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A45F7C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758480593;
	bh=1nKRC4AWfKC8zyKexOoWprB82pwS5ogbsNecBnujtOs=;
	h=To:Subject:From:Date:From;
	b=IM/vjPs7rcZdYxBTtYDtRdFjDU5/r7YyKXAIgRx+qTqURzvmVQKDaG5MuqELDzjcb
	 dceqD7EjE1aOay8HIPJ+nsJvY9IqSOOSIRWaHxyt+D2gIEHVqlht31PKkcPFHQMYmB
	 SsPT2okiPHBq+yKvKZ+LxQ+BtSYCfaG23uhFtrTSQq4hoz1K94eRynmjkdgyuT6Kc+
	 S7xBtBq3EOoBMjRlekOoAecLWm/XZzr/dW5F9r2cj7Vus6pgSfVE4b1bJi7PEitjbT
	 XDeoJQCgwyjIlAvsC3xUaJuZLSRLNnL2Rbq6ghgBiiMJ2gXkcsoo6uX27U4IU2UjNF
	 j/q3KJqaHzvGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93E7CCAC5A7
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175848059357.11520.6237012322018169994.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7e4896fba110f75d02c2904d541549d02565970a31f0b709054754b5b8f54a9
Date: Sun, 21 Sep 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758480593
