Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A5A233F6
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 23:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733094954; cv=none; b=V7Ro4PeFGUY62nFexfNFzwygDF6EAJ4txlzBoDZjRitIwz22wxNZA6uSl7GziRMW6sWpTb6Fe/vIgmANt8JVoRxCU4FxSlRJjvX8dk5vzuP7GnCbmiXLHlPhj3aO7gtwCZdI9eFAQPAA9eI0/Na7MUu0ZJwkjGcX9TwdgjnZjDc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733094954; c=relaxed/simple;
	bh=GCP5v2104sC0saNuFWnA/NvLefCAztMmPkd11oxvvhM=;
	h=To:Subject:From:Message-Id:Date; b=WBWfvrTESrJVHnXVL+Fu8OLuV9sN6YEspPrRDrAr12V7WTCP5nP3XbgkCGtJoeW8Y0ykpmgvMCpYkYsC55oxXFOMSPzru47Y5Rl+pLDmjawGeicWmjdi2XsZcpuJ28u5ZzDMDX7MQ/HMj7JFs9Dn3QyBfwgA0gMfvUhmfRTgGRE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pjip13o2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pjip13o2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDC0BC4CECF
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 23:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733094953;
	bh=GCP5v2104sC0saNuFWnA/NvLefCAztMmPkd11oxvvhM=;
	h=To:Subject:From:Date:From;
	b=pjip13o2uOFNyjDyC+ZzNC9iVNnS4LNRz4HCLD5Tez5dO+DAw8B+YzJxZauH8Ogqo
	 X6t1cBJpR15edj0g04d3UgnbLFKkZKRUm0TKwVBMjJr1FRNjlPNaLKsfeXGdsto0ad
	 ZZkG4c8vtQ8YMb7BYxdBhSmFBpA31XL67bK8v8U2hOjiKoxVbcHN/P2hMVghBONH7r
	 9e8XC2ZKCNssnN2+fdlnYagRhVbskEvy+nTh9O9aih2vhSOmx/VFygzW0QNsRd21bg
	 7jOTAzs1CTBWnMf1omuCX+NrjYwkkNvirk1NVKvrWO6RXj1EFJWNbTHXmHZvSyjTW2
	 QYX8xNkdurEew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6233D4978C
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 23:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173309495360.14747.11378862500494890197.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31133657b9219307d4b5d35d679ea6ea54d8f529493a8878201e425fc76bbbef
Date: Sun, 01 Dec 2024 23:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733094953
