Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 231C7284884
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 22:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769207634; cv=none; b=bm/RMiIf3lU6ge5b+LJHg/RDBcRBq7xh2xgTkKT4F8clhBwDImK+Om0v4ptkoD8wvKb0kEWpLznlyYMoHmj30v9oP85VuEVgeP//PZfXRW3vssxCEVI9oB3oUnAqu5wTrsvY2UpUiz1aCCjXbpu4UiMGjevEiKlaTSubHny4gC8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769207634; c=relaxed/simple;
	bh=FSACg5Gp8VLSFD6X9TLrYDAWSoc+Wg38OO4bOwaPNBU=;
	h=To:Subject:From:Message-Id:Date; b=KMy4triIXEMIqGmpG1p5jQYJL/mpxzjdF87yUvW6/HEGm9pCHEwELxeeAnviGTfp8C6hXVrx5GwcqVbI502CJ94RnQHh95AXp3UL21zFZ+F5XRrI7igXjq4mYPurPEkdYspD+jz7jG/MhxMbITYkjYCWu+B3ge/NobZ5EUsVwC8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P91HMjY1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P91HMjY1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8BF4C19425
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 22:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769207633;
	bh=FSACg5Gp8VLSFD6X9TLrYDAWSoc+Wg38OO4bOwaPNBU=;
	h=To:Subject:From:Date:From;
	b=P91HMjY1CjG+PYasn/tUHCZPnzEX4/6MYhWoUqD2uoogpUQAZPSl5QJyLG7tZ4NOF
	 R+ZYwdS1fosTNylYT5iBo46bl/2npKyFj8vBMfw/zwQxfyUFbdGSoe7xM+ab56zIhn
	 /BQYdL0VpGQKHiRGcUsHdrZlevFXBi7a4C58gKIayYvrfVmctgNwNMgnYdE0KGAWjG
	 Gpi/ij7MRnkzpj1gyQY75y4bRbPoeCX0UfGhzMviNBubFQeCPQWnL+ZJpS8PuEQklE
	 U1OYWn1IzX5CdizBSzZ3o+bGvNcw5RihrsJvcZwbD2Sh9jx3A6mqw0Bs7Wu9mLcTAg
	 3438TU+wgyWLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91147D6CFA7
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 22:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176920763358.31339.7150215506267858850.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed649b93ca1dce13f6353196d99e49637298afd40a69c0c2ac5e751856de1e64
Date: Fri, 23 Jan 2026 22:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769207633
