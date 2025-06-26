Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E1625479B
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750972194; cv=none; b=jCIe6JNeKLH4lIpZEcxtBsLALjwye7GJoNsyhgciUnPWUaf9ycSJUwx/oTpcvgsBcxRrE/CbBP9BxMWxMtm3TWlqFYjPS+Jp+e0v8A1g7YbUqFuf3+ZYOoZZ1ifj6COXpNFUfPfmzWWuhpIbdzviPl4GzCttbJaKUUm0j3T3cN4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750972194; c=relaxed/simple;
	bh=4iZQsqMLTXXbDSfQ91fADavQcXyFiMnaU3/vQSFJLzk=;
	h=To:Subject:From:Message-Id:Date; b=GeWeFazlI7wqgGoMFOal5IH+T4Jizl7CwwZ2n4umqQ253BvB5RByWYo+BtGQ//gjAKRxFzO2BGUUUPyoBmqtwIJ9t4Fj9uCnTEicQ0GUdQB+tLSgeKetkjX3q2xWpqvn6sqli3X4ynahRBLB6ndFOPWZrzmpOxrzesN34yJQeM8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nMWxIc6u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nMWxIc6u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9436C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750972193;
	bh=4iZQsqMLTXXbDSfQ91fADavQcXyFiMnaU3/vQSFJLzk=;
	h=To:Subject:From:Date:From;
	b=nMWxIc6u4Ux8RfAPyCX+N4oFb4ZjUVKmhrf0DAo5R4yXtgGME0+57f84XbkI/x7wx
	 FN6CY43tGEVXhXnl2Qi4icZL652EeTPedP2+iCP6+FCXl4os4k28NdIMFYMisGw4d0
	 XonmxseZHVeHZp0Hq36NXxhCR8vQN2T/ZzmcnGxsCMDhm33Rqp5Rvwgfj6HmVhnCiX
	 eBElzNepmKpaCoRPzqLI+TNaGq3F4dQD9OKQVQFLEJYe/jyRP1jzN/fQXNXyI7uH9T
	 PAFvIZA94hMyJVEjeo2YW4FqcP6aFrsHyU8hvwrL91XddhXg2zfMeTtviyt9vo1gjY
	 9cImBy2NV1RWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1277C7EE30
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175097219365.1646.7682850385758220441.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7e3b9624cb6036d057897df4e03cc7245ffe5d82fde3ed96ac2420112af3095
Date: Thu, 26 Jun 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750972193
