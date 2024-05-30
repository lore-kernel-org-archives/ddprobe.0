Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 640B0335A7
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 22:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717109063; cv=none; b=J6Sxqfp6JfbSSOIZUiGxPf3/31oLabJ9AoaenKC6D0WdiZoF9F9wuPwcLjC7mAnov26AwbeRN9V2hiESTRfplKBA2ONBpgmqtLr9olx4O3ZeXUuvOkSOyd2fJMe7GmPMOCzwmtcwiDVbIIbTsWgGCqq2OjNlLtdOj1yBXuCssjg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717109063; c=relaxed/simple;
	bh=e36Qm9jH7DhyYw65p3FG+mstHylWjDSozohgdkE25fw=;
	h=To:Subject:From:Message-Id:Date; b=LOxwaKlnCYhhN0TU80Lp0i5iM+byk2b81ov6OehltmqWj1kvcuacQLuhbfxr0KpG+E47kheR/mxWW//hCCNYurJAx/Z9+B4saoPOHIU4C1RI4434FTa6+3Uthm0JbOg/jk749+62r9r/as854evIqYY/czajCJPLDeVX3w7BpsA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IoXPE1Hy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IoXPE1Hy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D32DBC2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 22:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717109062;
	bh=e36Qm9jH7DhyYw65p3FG+mstHylWjDSozohgdkE25fw=;
	h=To:Subject:From:Date:From;
	b=IoXPE1HyzoGvAwph2u1z1wo6/0lxmCXQUYFjjLPYlMDuumZGA5HN/DruSnQnmhGuS
	 j4RoCCl/pdzjiveymhwwiFal8ozeekhtz9DRCgc284wJQlc9i3K0boboOebXzEaA9l
	 nhU/x9CKXMcx3FzOnRFZsxZUhpIZBHzgq/BcXx9aCm1z7Vg0J5uMhhGXlcjJcYVpLg
	 3sBdSSJt9UVo0j5T2tY4odqG0iVbz1dRlxHPw1sjFU1xnC7KdcTlA9K8fl+zZfwnQt
	 4WU3GrevnNN/BeHXtfWqYSjB93PSGJZyuz2gmBN5g6U21k4MS2fkLyiwQTB0uREaB0
	 o8rhkpIs1/UJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE04FC25B74
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 22:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171710906275.20718.15049725837083983470.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bda78b03ae2ce19df7328b25a2cc7cd8b05d9582628335170db8a489f7495c17
Date: Thu, 30 May 2024 22:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717109062
