Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 284DB14EC73
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 03:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765078374; cv=none; b=eZK+gQUWzl1StThhaPjftvaTzHtTx6IP+r4rWJEh1e3GwncZjggehzZD5M9WDYLO9qv4dfnRzPKYhUZY9/tB5SqytgRp7xmeEn9zqDZdtUstgzj7z5qkizU4kWNtYbQb/YmsVSUOXYGguMFaQbZmKudIsQHmKlY9Lk+RoTwfYYg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765078374; c=relaxed/simple;
	bh=lwLRTfY7nAKgMf2I24tTY8JIHRjD6yoGj2m4fZBZf7Y=;
	h=To:Subject:From:Message-Id:Date; b=kid8nMMWW2HYp/gq3mEHvsWHQ5U3MZzNbLGqwq8+DDkhS4HMtVU6n7jFVOK2XWIq6gNGdfP/2IiUfOnHBjPF6rYtezmO/pn1eMA7OZxQP2k+6mBJTGrI0+pnVIoaEQUEEnIYDVC/Ec87+WTgaRmLF5dhDRPle7XiSKLFKWCLu50=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nuVLQLOT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nuVLQLOT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9C55C4CEF5
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 03:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765078373;
	bh=lwLRTfY7nAKgMf2I24tTY8JIHRjD6yoGj2m4fZBZf7Y=;
	h=To:Subject:From:Date:From;
	b=nuVLQLOT/93NohDjN7RImsol/svDCNY2LNdi94zG47q7ZGPtfa/v67moCWxC1/usG
	 lNZcWhxeVMtakGmiAmuNOr8Rh/RXX8NYlvKft/S7EPsXPD3Bk44zHfhHSxnOb4kEYe
	 I+bmHoFbBMS0VodpXX+JkweOYu1N9bFZ1qJf7hyhtyQUSyj0KjPn29sGwjVe6Piaa9
	 xq+nz5wvmhEUXvre4qR0gRgTwlMmdQnWIzSLAyQVgdDY5LksSGr/4Qcsk07gQTIcqu
	 zXKLYqKHoGb9c0L97+fiOdJqlQ9FaTf2p1Pzf4dUgG+AQgs3jb4yVArPt/TNP/baXl
	 Yv1WTcD6c9Fkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94305D1CDC6
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 03:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176507837358.30469.8987389575286976309.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6063651e4b28a7491effb460b3a70e4f61845fefb305096b27ffb98686c3ac1
Date: Sun, 07 Dec 2025 03:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765078373
