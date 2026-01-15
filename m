Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 122773C199A
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 18:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768500834; cv=none; b=mM8CNd2WW4CzJBVNZq2joqcscEcHDr0W1hVaZtMKKR6xnMoxpIAQmiGsKiFI1YnJQQeVY4AjpwRu0uxNQKl8ryQj0ufqdRft8I4kLQeAOAwbvW1iUgZIjd6Q5KLoitO4cPMa4Q0yd6KrWo6ry5omrJcODhdc1Th/dZcH5iMBCXA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768500834; c=relaxed/simple;
	bh=ffGnKPiMf8Gm8w0DviIeoTbo0qyQkHNlvG4M4yTAztw=;
	h=To:Subject:From:Message-Id:Date; b=XInjKUeySieVL6c6ugEWkWR52nBNKKScNBKxV87YOivW5YGQwuZcvozjshgIPQBoebK9WpmBAlb4baIbSv/PfD6SKEla9diBzbKU7FFwGPNSijXL9Djhg3j3vdvhF2ohURZsjCL+Su1HuVzOT3abq6316bJe74vdXOXfiieBwcI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hQ/nkZv3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hQ/nkZv3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DD5EC4AF10
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 18:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768500833;
	bh=ffGnKPiMf8Gm8w0DviIeoTbo0qyQkHNlvG4M4yTAztw=;
	h=To:Subject:From:Date:From;
	b=hQ/nkZv3bbXAcz49cYOs3sB3gfqaCZSU7Q83m36aA6mTGw32elscfq+kd0NvGPa6Q
	 HW/ZVzJbyDps7a2nREGzmwwAo4BsTuBm246+z5wokuTrlqmdipeQsUaVt4g3snm1G2
	 IXXRTcfNpzRBH3TH7l0B1P/9K1m32+QevF694BlKE8Y9oOwihzMXT9jmpCX8amQbv/
	 /Dpey5nhP9wTGbWohiwOaUGWElY2Jmf9K9zzyYQdQfoSFvpuamzxTl4/S4+FYOuWP1
	 W6tsBWI0AYGqu+0ZoK/12EZ+G5U69Q+kBPlhoVlrfKowun/ibYyd0BbrHs0Lg69doR
	 ZMIXckN4olNng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE07D46606
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 18:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176850083358.4707.1582050460313755693.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee39fa296269bf41d60168f319db7d0717ef955298463c8655502109c5e161b1
Date: Thu, 15 Jan 2026 18:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768500833
