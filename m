Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 456632417C5
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751102394; cv=none; b=D9E04CaNZAzq0avt4+qM5BtNHuAuniSxaKtgV3VurypmHIpNxlBXTQlki2wJFDgH9r8WQA45BGxG435qP8sdolXzaAv8bNvVJDrC+6NyD2A+P+hbPuPdSqmYH0wgz1RDklUyY4lIjFt5yoDXtleYncphkgzhhgyaJAx+H1ZtyYc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751102394; c=relaxed/simple;
	bh=eImD+E/yaFJmTUWnsrtGy73gR30vQ9ZHwFJ7mjc3KZ8=;
	h=To:Subject:From:Message-Id:Date; b=VrK20NxF7/y8zOINUIBP9q3jYzrks5w5PKAaspiV2LGfaSh72XDE9ljpy42p+y98OenzFnpngVaHaYR+iH5LH6XOACmpItsJRcd60wVlE/mWFOhS3lVmlivesFAljitfm4nMiEdTrFJ5oFZv7z5jPBy8VbmPVFn1Ywg0ip0EG3c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B2nQvbKS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B2nQvbKS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC0B2C4CEEA
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751102393;
	bh=eImD+E/yaFJmTUWnsrtGy73gR30vQ9ZHwFJ7mjc3KZ8=;
	h=To:Subject:From:Date:From;
	b=B2nQvbKS0grs0mb5MeGxTCMeSfelrLo6YHIgwzJwGBSn4Jsy+IK0gOvAQp+c02m+w
	 qt+0sfncoOaRrtneGfoPtqlAw1uFeDbnNZ2UdH/BibbBZvfYYroI72T8Kg1Uh7k88t
	 /y03HHB53vRyZfMDFzZAvEv0tAJO1nBLfW84wkwcH5TrMGSAAS7r0bH/hz4HnAJXlG
	 VHMRQ5t2dVwqJPbBMfk9ebeqpUi3HHlHGr8M20OtTunTC4i3IS1q19hItbmeSC/uuD
	 oJ8gzozBfWqbU2ajbQdgEhOTOh5+No0GCHXg90qgWZItZeE/arqLvH//Zjzb52rylj
	 SSoiAVGMj+GoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FD98C54ED1
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175110239362.24180.1699804186881500133.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f7f2fa3b3e01a7a929491828ce4efe4f3d7fe88b089c2875efe6b01325b660e
Date: Sat, 28 Jun 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751102393
