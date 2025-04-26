Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30A9A282EE
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745629794; cv=none; b=svDN/sjoLpLqpwg07Aap8xFlKAOFxGaQyRNwLEam4AyDM/TTQxYPBtcHMhbwum0ok3hQecgyBuUOR9FE91Q+5KtfBTuVssb0CompNZIsSe2GLCzvwlekBAwWUAh4JPq3HdvoHOXO+IrIuYizVxAPPsXQKGqD3YZkud31M+fAJBI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745629794; c=relaxed/simple;
	bh=JUhh0irXjoBe6vj5sTOoYv10USdNxgg0Rc2ADUwfOTA=;
	h=To:Subject:From:Message-Id:Date; b=F0BlfqZ1jZLMy6rlzD9oxFQs3DUfp+0fmmqSQjXEz3Emkm46UE05lfuZ4fxeI5WHxavczeSTZEpngsZ1YZuYUTV3rLn5C6Ql/dUUhpXZIZeZLgk4dD7Y4ICJE+hT9iA+ceF8UyTvdzpCr4fJ53SG77ocNrom1XHkSdYersKFHs0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W0Qc0MsU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W0Qc0MsU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D146C4CEE4
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745629793;
	bh=JUhh0irXjoBe6vj5sTOoYv10USdNxgg0Rc2ADUwfOTA=;
	h=To:Subject:From:Date:From;
	b=W0Qc0MsUitF2PQqjz+Du/Mqf7nXhdAfjWuYYRu49vSlxrZSAhwxOtZVKS6JF1UI/O
	 o2Qe0FOVarXqtIiTRNLrsIUL+FN7KMjCSYxIxbGD2VsyV1ImaZXklCkxSo0rBdixbI
	 XLVmH9dksgcJP8jqJbDccZGFhNdNCdPwDEp585HgEmcnrxEArG1744YZ48xpWESyOo
	 Paobwo3T2l7OsGU9o1Y9CR1bVDMPzeuN2cqfBVeVWUPkiffd+opA/S3UlfgCyTMati
	 50rWDTj34ar+XKcaQFqYdUlCgX3UeNDc+ZL5JSzXBI3bW6LlV6CXKTMP7upiZ7EI3F
	 xAQnFOpVM78sA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E6C7C369D1
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174562979357.21576.3672334423335397514.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76e3836c91b25edea2b786d11529d75e72cc22e07919e3500795466ac820f396
Date: Sat, 26 Apr 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745629793
