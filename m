Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FDBA1B6D15
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 21:35:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737495354; cv=none; b=dVU3Rs10SOtaoWJe5L8q/YXnPLA7ToTCb5UCkyFBmvoTnPjNembWmxerCR2Yk6TQdlNqssS0rapQhDJNi+1ZK9QU/QwacotN9GPsHbc3Mo6lLUqM+86BNeQtrsExf+mcHl71oGpT7s4f82H8Pr4n+OP10MRX6AhRwKq3bBHldc8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737495354; c=relaxed/simple;
	bh=VVUG3l6P5iU1KRpYZo1ezdX9S16jWZ5BaY1JPwvKyWs=;
	h=To:Subject:From:Message-Id:Date; b=ZEuPDlOViBXHHg4YZEkjdoi0LWKb5ICh9FjOT9sHcnYGcLjY8akVpYNGWnPZ84ZR8Z3A+JOyjkUmiR2rWmRiqqyC3Oeqnh5a6Kbpo5dZYkIN3R24o+OrQDeKP/ygUHChHmI+F4pX2y/7Zm2asUR27Ei6eKoEZ/xbH57NttopoHQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J0pVMrba; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J0pVMrba"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D637EC4CEDF
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 21:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737495353;
	bh=VVUG3l6P5iU1KRpYZo1ezdX9S16jWZ5BaY1JPwvKyWs=;
	h=To:Subject:From:Date:From;
	b=J0pVMrbadqlKzaHsKEFUOQdPLusQjpsvInYfhlb1X2S8MZsO8jgakDTb43iDr8YKG
	 BSALQqBtHd7HnpruQLTQxO7jy+RroQE59if2qhRFGCR2jgUMA8VJhf0un8Tf18b5/d
	 U5RPRs0gzOXg28kjFZkblYaYUgV4YzSLugYzf1JEqi0tjeYneBQT8UgK/ZsrmvT4kw
	 SlrWtTL8ejXmXNH9HuJmPLWDb+xd/Yov27b0w2kogLQv7g3XnxJbTfGJcEB9wk8sH6
	 H2zc0GYb0HuTPcGk6gXZf8czv1S9OujSExGAFtMYdP3ZZMMneDyPnR8A55YiZ2UcRc
	 jNUsKiiZ+lpUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A763CC02182
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 21:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173749535367.10443.13584707756768262771.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe6581ef7b3f73b91db44b34938619a09cb5ba94f18bc72e8b0bea18d0077ce7
Date: Tue, 21 Jan 2025 21:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737495353
