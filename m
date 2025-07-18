Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79B112D9ECB
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752851394; cv=none; b=nWGv3YwacR5Yv5Cwu7aOVvMl6YB1aiSDvA6uR8kGY0K5zvuy8MNNmsR3PC7GPoKTNy6NAH4C3WHVq84dLuV9n4fGWig3GSq/uYve/HUfoKmMSaenb+HqVMBJRw1V4d743/DotbbMF+pmFv70KUA8U7vEHjC8JycQOOSb8f3sVno=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752851394; c=relaxed/simple;
	bh=5kQJZ/UnOTcTL2Z76AcBfaoy+YnBtHw1cvM39xUZHGE=;
	h=To:Subject:From:Message-Id:Date; b=RtNVKsiF15tKaZD5vpF82gJYAf8BwD9qe/l+NcFFPPdWrCtHCoQdOt5YxrNTYsQr4At1TcZEJJtS9cjo9R/ILkVTTHuPGV2BV/Q5tkCf0a+wToZdTxboenEfFNL2glo4bKGKq58HRRVRccHuh0w7q607JzVIoyFysDhT7iXGrRg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o7JBddAQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o7JBddAQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FAB5C4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752851393;
	bh=5kQJZ/UnOTcTL2Z76AcBfaoy+YnBtHw1cvM39xUZHGE=;
	h=To:Subject:From:Date:From;
	b=o7JBddAQiYCJmQuYrKQ8ZAQzEI2T9BLG3GgN9B+3A+Xiz564jiTLlREMSUuwnVjYI
	 4z4mqf/z8koW9vSZSnZHnucjEEtsSBGPlZquf/W4+qggp73WPp31/9KV2s9Bpn/3z7
	 iZaY78dW5Kgccv7MK3UmQXw8RFy3r3MYJPuEofhzwIw2R962pDdd0GKDaJdwNYVKjv
	 BaBpB3fJMVBvw8wc9m/uc3nhxBII2Pgtwf1lEaqFx2D4wMAjY6mosTd1oNmI2XLpFC
	 VKZk+M8xs62nQgjRPfMrolFA+sJmkEhJqZGweYWr/GV9G1hu5G0c9ueXAb1/U2xSi6
	 sbfIyTrzbYSCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F69EC83F1A
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175285139357.23519.11321014197253021637.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db7eac24d00fc1b213bb9fb5becf7516b96085b20bf0aa42ae252f234a6e5454
Date: Fri, 18 Jul 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752851393
