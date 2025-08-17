Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22A2B7262D
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755395394; cv=none; b=H/zIBGqrKeK7RrwRfZVvG8j/eYRIy2/TlLShDTDHwd4B+Uwa55glDvCV01/LAcH6sRQ87ugOdSRHBxxeEf4hQHIvl7m2JOHJdbMcrMQbp8fYUKSx3n73VVS6XmWikOnWO/gfa+422EL9zR4Q0GcX8E/wQ2lpzmYZw0JnjG06ZpA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755395394; c=relaxed/simple;
	bh=//Te3+RBBOG67Lp4E4r9I8whRf15iN7aczzClyIjlKY=;
	h=To:Subject:From:Message-Id:Date; b=eXEZx9ti2Jn76xhWGwDeTCK0/MiWBMwJ+lvkm2qT+zfHAkkjh7yD6W6/bss5V6xgDeYgFvtfqIQZ9woSMj2qrq7GV+vw/tR88qDWmTp4nIUBdw7rQhiWsKHxpDWGB0IMCXREZJC4nR+Sp+9LSBDkleaSbRJnLJs9iDKk1QfdY/8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZOgI+q21; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZOgI+q21"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3956C4CEEF
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755395393;
	bh=//Te3+RBBOG67Lp4E4r9I8whRf15iN7aczzClyIjlKY=;
	h=To:Subject:From:Date:From;
	b=ZOgI+q21ZNLmlPP/j2EerrIKFn0C69pS6Iukc/56cMIW8qkKt0g74K8HaYxPf0AEb
	 5+5R61//CocbAHAhTNbC/ivLomgAFfUj/WYiySjwDM7sZJbpx5IiG7lZNL8UyRnLGd
	 EV4ot8AFcqG2Ww4uOdR5yfLT0gl6q37poG0s18gv78pHj1UfKX5+kKxWxD6RAicqgr
	 5wo6fHuoidvuQcDHjAlU/MU8SZDa4O6TGYBi4PLvuiEjXxZ30cUeMzLluOjYdXiyX2
	 cJn7D19vCXgFK/iU2KYT6gRUEuooMOTGGTmo7nZdY1pplpivdRFBZDr1VkKisfkL6u
	 pRW+x7hLUEVZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91CAFCA0EE6
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175539539357.17366.10892097550878332300.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a899f18c8b58e175a398e07cfe5473fc2fa682e32dfb52d104e04f32b5c88348
Date: Sun, 17 Aug 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755395393
