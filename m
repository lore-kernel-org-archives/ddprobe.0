Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 278712EB5BD
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762819194; cv=none; b=KBK7EI4UWY6pMlt/RBxE+Lra1I2Z29llw3lAw5gH+3ZbZx4+qJldlcUbSoEGstd7PXNJWAz3wTy0VRzI36Cgu1UIY2AFr3QQj5vxe95Fq9Ogse2L5I/z6GvhBxDsRzG0OZNa2aReIbz73a1q3sR1jpLJiinqNpzyOS6VT9RLlQI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762819194; c=relaxed/simple;
	bh=IKkk5gVoI65sJqqzpvvrVTaG3xIvTGyVd3GR7jBogDE=;
	h=To:Subject:From:Message-Id:Date; b=uqlGit2ofs1tSmwKiF4xsvu9fTozGIoT6jyIaNWijUyb6edyHYic8GgB8AiIxNw4S5ifMamqbjWmefb5EgltwoC+lh/ENQqCuZmpbJKi1CUQb6kLUWaixLwTG6xg15Lhskoe4H/ar433KZG58pCJBwphHkXLrnR5LEeB9hx3EmA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l6xakcry; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l6xakcry"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2F82C116B1
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762819193;
	bh=IKkk5gVoI65sJqqzpvvrVTaG3xIvTGyVd3GR7jBogDE=;
	h=To:Subject:From:Date:From;
	b=l6xakcryE5HESwN204T9H/HdOR4/kf8q/M0kAtjGOmlASjKN/qYnzVgU+G5ot6ByB
	 mh6j7QDTEOB+HxE0SIieZiqLGM0/F2pRPNhHlsrulYmGNVgxSx9BTthHwq45GCbcAi
	 hWY43uhnfdOUv/KSRVZ0+wdWaebn4HUqlX3C/A9BbpuCiAq4DMdua+hp6m45r3wGgG
	 rwYw5ZK1L0zUifPwm5JbTn2rQNdFxHaRpRHxw8UL/ip5ODBqMqwrnU6fUyboHHfLMx
	 oG+XQbzK1gFL/BNN19AHm0HbV9G4VPeY2IoA9msaCdQ+SBFJ4+mz2sU4zFODe7Y6yF
	 MOJYX9tS299hg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93190CCFA13
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176281919358.16547.6546623608900854038.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f816cc2912b85b69044c3908d2d2720b4df42f77702b3d517747cf4752dd765
Date: Mon, 10 Nov 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762819193
