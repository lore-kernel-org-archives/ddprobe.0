Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30C1D13B284
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 03:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764993174; cv=none; b=KuMCtNq/wuybgIWXFy9jyq+7Mz+6IHnOmfnJs2Ar6Hxv+F9D1MVu1sjCrnRCSGgZriEi5vcbb7KexCJVQNLJDn5H53vHWpzl3CEblBT3QeQAtnCXoRFOMqUCHwdKDSa+RO+dD13P1q0xC3rnFUj/Xm+10CGYEYP6TzljzkNCvTo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764993174; c=relaxed/simple;
	bh=AKMDea7XVf7gVXRUMpK2AwF2yZpJTyvISQMqjlE4jsA=;
	h=To:Subject:From:Message-Id:Date; b=bF5z+bTmnTY172tNzQITqh3Hzl8liIAdBPiTF/rBZkTQe36EWehVkjwwG91CRy9SXuuI6Tb5IAxiGtmrIgiXnIOfIDzRdiZp8fSy2tNcqZ19PoKrZMlf1+0/y1aDcPfotq1cmz2N7kWJco9YGrGxcN0Ed06x7ryy8ADSK6oo89M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U8e07K66; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U8e07K66"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4427C4CEF5
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 03:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764993173;
	bh=AKMDea7XVf7gVXRUMpK2AwF2yZpJTyvISQMqjlE4jsA=;
	h=To:Subject:From:Date:From;
	b=U8e07K66uVHqYsNjBe0TWY2k4x3iqgnksblhPRE/JDo5Wb1Q60VhSg7Bx4bnVrldK
	 5Gi62QfD7yGpaESFm3IyGBmmC6HjS8Fbgr8HJ0hUL0YXAQtWkSmfgNxCNER2Tg7zbb
	 xCVJyQ2gqSd5FfDee055ahpfKqItbXak0SjZlHbBTOiZyinwC5tC9pSWaTgqkP4/9G
	 Vnq1mEaFYaFURewo82ydI76HeETLhahk8KEouRfwqgxynvQBnjBG/RnmSlOcpDiI+V
	 diNur03tE5e0EsFa7CLx1VLNFoQzafV5YShDjAT8EeEDto2pIWiM028e1aW1PoO15h
	 Yb8Ods2Y2Cypw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90EF9D3ABE7
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 03:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176499317358.31747.17589654157370240652.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ce62e11ca83a2e71d1b6e3ac8168a29f96ebc9a60e6c6f7e5de132fcf972ae9
Date: Sat, 06 Dec 2025 03:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764993173
