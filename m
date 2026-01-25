Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CCA4482EB
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 20:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769374434; cv=none; b=jEPfQ7do3THe4npCdiFUnz6rS7W0glPJs68DoXppPfHfLGh+jBjeGk52CbKR68nRlQd+L2yxpMKiJTKa7/EaTDNJWYQ+FUvkT0GzyBNFQsm9avc3lxU+NdDbXF0PvsICM1O8HKte3llorQgTPrqXzGDaK1Jygu3DSO12hYqcBtI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769374434; c=relaxed/simple;
	bh=34eAW1unLp4BGncVaraP5Vzf8r8p4X30v2BH5rFCibE=;
	h=To:Subject:From:Message-Id:Date; b=uwt4FhgpZXPawSt8AuyqluwOBWFiBzCVnYoEE+aWjNuxGRY6Jlmty9zRhSM90H71fVm7IK8iugMi1v+j1taVBUBDISoPx+B6ItJGgl4YERGFOzBdRP1qIM95GYwPY0oUfZZ5ytEwzmxOXWi5KCs8kfGZFUIxDqoD/b2eTS1kflw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oh7c65Vl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oh7c65Vl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A823BC4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 20:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769374433;
	bh=34eAW1unLp4BGncVaraP5Vzf8r8p4X30v2BH5rFCibE=;
	h=To:Subject:From:Date:From;
	b=oh7c65VlgAkfCXnbCpr9wY7+gZHRh4c+wL5TfJEc8rWoUNrNOrPDmV+MP+Pcb9bEX
	 yGPMIalKpiAv6PVnfwqhaxWLxFItZvb1w7e8PA2g7F12pwprlhRQ+hpHb/mQkhrPSm
	 b3li7qIDy2kcENDphY6zLkB14yCkHUkC+qWkRpY0OeZubRsW8AAFdVB3rQV7pcMIGI
	 hubIhWhT1aYnX+3fVLh8fzC9vi2XOBaz8fNZZfO5W0GaeS720MEpu3vq5guMT/qLUx
	 U3pRm3kOOxhwjei+lbPpLbv1cRrW/UvIEgWwgJdCUDwn0F8ZpPtVQ9md/dTekGeYug
	 a9mmFlOyU3jWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96579E63CA4
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 20:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176937443358.17459.159468595515794747.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97e4ee7e27d80a88af8fdede839876b64f898941fe0cbc539141253eb8f38d19
Date: Sun, 25 Jan 2026 20:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769374433
