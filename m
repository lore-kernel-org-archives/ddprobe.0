Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23C371C6A5
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 04:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727498754; cv=none; b=fhMdcZf/onyVRswFiYLyeXiKHMM7jQwTMPhbhB91kUyAoQQMbRnU/gmizlXlddnWRA6FDN5751lVD9jV91vHkn/ZWbiTTCmAhZKszKvja5Gkcnf5Bj+m/gB0bJ1SsQFrDLFdbHsfr7xWGXBcQm73pU78YZgIAbFQOLRhVkag4tk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727498754; c=relaxed/simple;
	bh=0bPsKz5YKozReGD6t7FeOFZLiUztuTi18xphB+FwNdE=;
	h=To:Subject:From:Message-Id:Date; b=lonaJwpK/teLvceMRqkhXvPYcXH3IL1dWYtfMwKV6StqTuXilnHsS22pL3xMaNqM2UhUAsRJSLKhLjeX0R0fgQYZrC2Ag7yJNwODDL6V4DwASYZGbK8omTTp4kdXKvzaoGYXoO05e7z28AEY1JGo6Xd5h5lKgSJYLUhBJk5YH18=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B+xjCaN0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B+xjCaN0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB590C4CECD
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 04:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727498753;
	bh=0bPsKz5YKozReGD6t7FeOFZLiUztuTi18xphB+FwNdE=;
	h=To:Subject:From:Date:From;
	b=B+xjCaN0NI9UK72Nriu5QmnA3+4Ij+ILJrhu+X7S1xrIKXqwWWVcj+dBAOOg7Cqs0
	 ++082WQoDbyTUrnJcGQCETp5QaTHupOFgw9+ZYNdHSuWzOCXQ3Omatkoe/Cs3mZ6Mj
	 qu072Sip4tK2pYi/9E2obFI6hTDU6VJaDsrUFWxHMeKVvbxMJvrsXNyiQXLzlyo1fz
	 hAutORWkboaFV9c6w1l1vR8J60utVf23QYuON/NDFpnQhiGt65MUPey/OZg0L3cTqU
	 PcKwxCQregEPrwkzLh9zyO4yFSesLN94TzGvpxZQLks7cRDz0UTS+a6KVryMh1sobw
	 EGfhclSKAkJnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97EC8CF649B
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 04:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172749875361.5827.9749167654965507027.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5236851c1e61287d89d0aea83fd955f0d8053b1b2e217c617541b4b72378b0cc
Date: Sat, 28 Sep 2024 04:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727498753
