Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42281194C85
	for <ddprobe@lists.linux.dev>; Mon, 29 Apr 2024 23:42:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714434143; cv=none; b=qtiEs3dZrIncdzdd2OSteA+al3T2RO6bPqfHb8Dp/lw+MGAPiyaZfDo0bh5AY3t5Ui/Xe4qM4M0GBNVqBkdaQFzWkBdQ6ySzpFKNt2aHRXy8YhUhuFnkDNPtvm+/Gf5vG7vVMcepo3MXq1CryRWzrH65zm+s+Zhx09VfML09PI0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714434143; c=relaxed/simple;
	bh=y48Z0mW+wV2cBtunVipBykQFGr/4iEfXLeOMeKjGYO0=;
	h=To:Subject:From:Message-Id:Date; b=oG9SPjVv0oyJpA1mg4WpOeHHrNgbtkYIIVwqJc9UiHc1k3Qalkw6aitM8FLCoRUQXiKOG2s8GdR82UU3D9l5sEa5vIThTKortxO8i8ewnhKeMdy+lNdzDVQojMiSq3CVUVBzYrpSSgvdePUyyXg8ZOXyQYWAC3a9yevdO6+7JHo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z1UBPy8O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z1UBPy8O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEDB7C113CD
	for <ddprobe@lists.linux.dev>; Mon, 29 Apr 2024 23:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714434142;
	bh=y48Z0mW+wV2cBtunVipBykQFGr/4iEfXLeOMeKjGYO0=;
	h=To:Subject:From:Date:From;
	b=Z1UBPy8OXTczRcgYo+2He9JrZdvUl9aL3TOshbMVAqRkf/RNnXhXt0KDW9BKNldo/
	 fHYdcb1YDvN5BtkoLALICQJS9zfeWQ7l4qrC6DVblOlhjskMBIe6fLy9I5O2reov9S
	 R0zU4RN5ZXFZzjZ+JUiS225zxOsPwPFjJIcAYphmbguFJhhcCrq4ph/SXtpp/6Mm6t
	 W0/7h2GlL+P4BKeYdgiT+mcoHlpnN1iJlFpeL6e72HKLaEui1LYgJUasYTencscJu0
	 OMqJatzn2n2KlsWkjYXBr+LMu60zSV45wLfP3vm4XrgBx3zZywQ4smC6HT2K5lGIMe
	 vD5OiE3Lra3HQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA234C4345F
	for <ddprobe@lists.linux.dev>; Mon, 29 Apr 2024 23:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171443414275.12896.17374446187057627420.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9bd78c971a9417a249bc4feac8a540410a45450bd47527a46b2a411d57c41ff3
Date: Mon, 29 Apr 2024 23:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714434142
