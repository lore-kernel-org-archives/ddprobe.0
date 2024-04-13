Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D4302901
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 21:09:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713042563; cv=none; b=SKhAbvF7emLKBQZlxS21y7M16TlBVipzmtp0PorHMkAubkn9VK5dIGlnHSuoJymuIF40lNCCrlrYCCb5jLYhNP0xCwqxNzi7yKHnFlPbuXZ6fDTst4raiawLK+QxG5feOFELwi7+oV/t7yYWZ3bZ1bRws/p6bvEuXonYYT+14Uc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713042563; c=relaxed/simple;
	bh=LSJN9jhkXBhr0fXRld00CxwufFADYv+PzetZQV5E12Q=;
	h=To:Subject:From:Message-Id:Date; b=oK8ttMbK5h6V7GmiPAsGS3dibzocYymsAOHHtH9VMxngIwho0OQN6qzcKEuJ/l1KOCSLWN0padcTpOAa/VuR7zQSWWEz5jE6ddCA1RI+BVIpXcIVnqIquK9NhRXQIV3YmG3Hd+Fb6ZtK694Y+1l37P9NGeleA9NeEthA3TINnkk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jrOz6Lln; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jrOz6Lln"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C827FC113CD
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 21:09:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713042562;
	bh=LSJN9jhkXBhr0fXRld00CxwufFADYv+PzetZQV5E12Q=;
	h=To:Subject:From:Date:From;
	b=jrOz6Llnd8JlI9TA93pGPnVKJpygjqfEqzmSuVrJn9dFiG1kJm9+Udh7iMSLB5g/v
	 FpgO8WL9ABfyRgmOSO/DG8i6+mlDfoZRQzhGZbxgf2lfiGTHAtFCse2SLkU3Hxa0E4
	 FVohq3GEZM5Kj62s1GPNEnMFd4lPm3Cr64P+1J0RwtlsfbzKRQ1q5Nt8oIugrQqLo5
	 QR9JKUD4tYFWyDuBIm/RHa3ow+j7X2IydxHlStNN8UAREnBSIiqt9nx9/nW6SMpkMj
	 //QhRhc7oli+9Or4N8Dn1dQjZkmPan0qoQMFkvrE0pl9/aT0K2pWQd7TSFWJ4El/rg
	 Lu7RlD65yEaZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDD40C4345F
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 21:09:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171304256277.30762.8036189375120486738.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4754e0d604eb6a2520541f61773b7f74a3190d675e14d34664b71e345ac0d91b
Date: Sat, 13 Apr 2024 21:09:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713042562
