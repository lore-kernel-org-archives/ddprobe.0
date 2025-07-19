Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BEA72557A
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752950994; cv=none; b=C/Rk1oHsuBb9jyq6kyRBTggqKREyV5isST/0TYU/80AqOGzb6PXK+mSlh9XM29RQL3pMs1sR22QFnUmca4ktUUMQp2nN0MTTIUmQBFUp70d6bbrgxTCTc9fXOPMnHYY95ZHjI9oORxVSnAaZG+8nTIwLy/jL7DctCSl/lckNixo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752950994; c=relaxed/simple;
	bh=mjJQWjW6Bpzf0HQ4/SiHutbR/DYBwlGiOkLLgDAN+OM=;
	h=To:Subject:From:Message-Id:Date; b=oj9NFKCrSuYyawv6RnXvCZTF4g5zmLlA2S+vOEUTQTGMImifrYiOM1k6DfX2BRoi6a65PzfeBJkbGjSgbvCYMyNMdAudEH+20hhyL065Livvys6zS6XP79iTiNCHomDtVAHS0z0Nm7HrjbIB5LXJIKtm/vgzpEKM6h1SWi8D9lM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dj8iqypV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dj8iqypV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACB5CC4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752950993;
	bh=mjJQWjW6Bpzf0HQ4/SiHutbR/DYBwlGiOkLLgDAN+OM=;
	h=To:Subject:From:Date:From;
	b=dj8iqypVpc4lgSIMAdB8EYYDSTPhlJ5xe8JD7jPLcevgxgLIZGmSOWNr4NRT1cVG6
	 afjVrJwfEui+eKJEp8f0U49Jq7EUNFO7URhsFhWl8wu+z3KuXoIXc+CkCHpg0aYSYV
	 omib7xSTSK0eUW1SmVmO5Ujg3f1um1hm9YHqMz7f9LEbtsebydw0hs6XJqoQmJxVq5
	 EzoEJyGnYD+1qPm1npOpwNZ0zp8x2whZSyupaZkD9Ic+Q+8+1QsxLGeJNgT6XCRQLh
	 /q0nUM3p2pwJK9nrXSp7DM/Rq3gauCkRLD1uvF0gp48SFHSr/OOF3ef49J4VUDRRby
	 mTQ8vpKX27M+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9553AC83F27
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175295099357.18039.17105290715307427871.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: acb21202ca7234f9ef2f88c43a12141e9e387819d57d5bb7cef749e04c78a9b2
Date: Sat, 19 Jul 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752950993
