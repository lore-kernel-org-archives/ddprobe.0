Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CEBCF1D63F3
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 14:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774277693; cv=none; b=vEb5i29rof3loFxXb5IRzXJ1+LHcO6x4LeLuyFeIg5JjypCBgJmzBJ6SON42NSwZs5jNdPL74h1sXEh8+uJ9hgncan98qsCScDJSOqdZA9AKaSRpVnXzNfh88PI81vFkJYKe4oQkJOEhM7hQnPxwapr+QiMTh/vFYJBMr2oP858=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774277693; c=relaxed/simple;
	bh=Se8wjtPfNBGPN4ORh+Tw4xjVcPbJbt3DIUtqAUYJ6xY=;
	h=To:Subject:From:Message-Id:Date; b=XH9tg/1IjuTvdceiTBDZ5xs9VPReZUlwHphGHR0qmY64rkuotP+DMkyhsiUeLM/+6jHbJoYQ1GYcxdOxI58RxMfASTyS67b1U7TZw+D7tczXRIi1wEFbNSYOEh2fDSsHew0vHt7YgpmoqrAVya4/Zb/qktone+T6b91Gu0vxLKc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M31lKyfK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M31lKyfK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2C15C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 14:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774277693;
	bh=Se8wjtPfNBGPN4ORh+Tw4xjVcPbJbt3DIUtqAUYJ6xY=;
	h=To:Subject:From:Date:From;
	b=M31lKyfKym2CDfLSOoqhyQGeMuy5xxNH2t/0FIC1JgF8sRSCjpyo1zp+mqA3n0z/r
	 WYC+hw6V7GS+Zt4vmMluwADW76BhlHJ/npC6uu0KNcIWzYuGmUSYtmuqu+R1m1FgXH
	 PAW4adJjqEHF8XwKnNEV9737fLzNEJSJm5dr0xA6dp5Mby3ZnlYVN4/IyBPY5tegit
	 aKB5tPEntXtfPaUauKH6gE81bT1DRtMAGYSNncRJy5gyr5RwqfkyFbPBtlkfJwYWc3
	 NN35DMALlubJCZS2FREFvL+wvj0nFDVQJj+8lTvYf16mpZcH/hb0vJJ+7tGWY5kAVV
	 fno7XQzse+3XQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92F81F46137
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 14:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177427769359.502.17963752644230769553.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54663db6fca2aba6676e31d774a6d6130c917cfdf66ce1d1252a277f7b2b3184
Date: Mon, 23 Mar 2026 14:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774277693
