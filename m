Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F2971A28D
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747279794; cv=none; b=NFx8r5u+GIyBuh+SmG8XTDWQ/k3YcNL5qFHUv2QJ88XRgit2abNvFRd9qr1FQ6rXkRWw2Y63kEERqqT9HpkVF+EJMC8V7fMfLLJBRWv5h4wHteL5WuSm7Hz8mOmhC+y0a5CVm1ax4lhjyOcPBArDM66aTLdgpbL9iKFcGJf4lPE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747279794; c=relaxed/simple;
	bh=AJBZC8ELnEyZo1MmkKOxoM57yMu4ZjcJPdbRJNnuyQ8=;
	h=To:Subject:From:Message-Id:Date; b=oe984aWyRoT+gJnrsSShm5NW4WNtieohviJZWTHt8k9O1iZ4ISqbftjpY5UcTjF+ILkMZiaEHM7y+VRxm3AVl17DQMI3Fy8IsAYqDNCPcxNXNg1d/N1ChOmVQCScDhKxEuayV5F3ct0Ohi9rM53stIp8/wnadwYYoaMeUhnzSDA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iMg7JkSq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iMg7JkSq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D1C8C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747279793;
	bh=AJBZC8ELnEyZo1MmkKOxoM57yMu4ZjcJPdbRJNnuyQ8=;
	h=To:Subject:From:Date:From;
	b=iMg7JkSqSmO0Em2KVSc432fpVD8VqW2phaVVcYnpmoPzBkiJIPCYFrOLiGDACjsvH
	 B1+6Rurp27+fnteIwfKer5d4hUGzCGhkCDRjJyMcw1OSSN/OvUpUPh5KvSL/PfuNTE
	 pZhEUjDT7ajGQlZUWotP/jQ7a0Pw9izIxz6f5//psKe+2f///UEU6MGTh9qSsE9Ydg
	 HxkpgaZwRHBRAONeJJW9Q0WWJv4rjwbf6yQB8Anzy4FIcA3n9jkT/sBjG8FpKiD5NZ
	 4c6D0oTpkr3GlI87Uk2MFj2r6pixGaCYN+xbg6bYwEagLQuq9zF4t3fHREAg/nqj3D
	 tSVkRi+177/QA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F233C3ABC9
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174727979357.23739.4578773933754800462.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9db838acb1f62360bb045b673e02ae1720affc4257d40c4e17caa96a18216d4a
Date: Thu, 15 May 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747279793
