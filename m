Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6918A28D8D0
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 09:19:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758964795; cv=none; b=m7h9wuaixIov440qNRHB/aRQygq1nT9XHp8yw1q0VGbVZ3FZJmxmexNBDEXrIkM0Z+NtK4r1b9b46LBDtb6WeOgNIJJEsuubyaoobWYUT+Z4GTi+Z2ErpIL/3Fr1P21DfZGZil2L8H7WuKlGRUgI7C/4GYUNUlbU9TDIC3zmme4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758964795; c=relaxed/simple;
	bh=b/Mis9LUcv6WM7sBh182gGdggfNRmAu+eLqSZNXLxss=;
	h=To:Subject:From:Message-Id:Date; b=ok3td+kW2XwxTQaWy46N4VXYHJkDUrKsry57ttJyaoLKEn+KYv9Qc4bh5l6NQvYDphh2ctyPsxqUeINSkF1P5H1PlNp1kMcfyu36ep/mU68VpvaTjT9U8voltHjJQ8/rLxy1Ihbu/hb2q5i2AhW7vaBVyBCxnyGh0GWE4Zzm5T8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VI0MMiAu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VI0MMiAu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC0ACC4CEF8
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758964793;
	bh=b/Mis9LUcv6WM7sBh182gGdggfNRmAu+eLqSZNXLxss=;
	h=To:Subject:From:Date:From;
	b=VI0MMiAuuUgQqloKG+4C9qbvbbYP0MatawOZiLDvh3p3hLJufdjqd0wGBv4KWD7d+
	 wTTDH+yJNDAnozu284t5k/Ictm1TXxxUii7ipN5fgcH9vzys+3Slf+2frAnqgK8m9b
	 1Xlewe9A+8dPNx4kpY+qCxb3c8Fb/0g+JrjLunCbjLjdt1n+Wbyf7J20+jnUJyMlw0
	 oA9/nKK2vRdPKNqwfTHgk3mgxX99D624ZMh64EaB9mYCwngN4r7LLpJppFhlbbZgyW
	 frSZOg0jpxa83BddPeHTTlbfUAct2m7DHg0hLAnkqBd5B57motFrzTI1t3r2x9v10Q
	 mHZM2Sy0s6Tkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAA0CCAC5B9
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175896479366.14618.8186173042718528692.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f867e106b9961097f17a6a390acca5573d10227a153cf6a80fe6f04038769f44
Date: Sat, 27 Sep 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758964793
