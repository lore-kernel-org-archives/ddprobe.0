Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1147124BBEE
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752595794; cv=none; b=VULgDEgTsyrgQD+OA0EP8zl5eAcOP+cUhA/eRtPSShmyGCzaYgNPH8kCFoL71ydvMfgkUgaSKFOd8vRRTdLjEVAWI0XFwAPA9qIyGuypJHLtYJaQHV8z0PORCxZVi1pweiV7FvwPaF9o5Y1w8Th2n1mUz/7waF10G6UsakNMFlk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752595794; c=relaxed/simple;
	bh=XauqXts7ESy7eFMMB+QPPyI+/FMdNsvd1BJpscxvwnM=;
	h=To:Subject:From:Message-Id:Date; b=ltM0hF6BI0aCi6kE2ZxaxxGCEJ9ugJL7ecwbzzXCoQA3+avBIFgHkFZacwUwIV3TD4sWpeXeJLQ7JB1dwC6hqYYg/YToy7rlNIhybqYGJ/3XrRRSQk4I0W3hX/yxmz3FzdixuRjfwKAKfD5hK9u48SpmWSgvmRxBSY4PBb233Y0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d3M2OpF7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d3M2OpF7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A073AC4CEF4
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752595793;
	bh=XauqXts7ESy7eFMMB+QPPyI+/FMdNsvd1BJpscxvwnM=;
	h=To:Subject:From:Date:From;
	b=d3M2OpF7pieQyGpnSwo/2/FkGDb3CYt/RE1nCT4U0ToiC3bBRMAhUuLsr90i8c4vc
	 8SUE2+VTmQ0EvyEJTsxGVSWnuj6G9bvFxndGQU2ShkwTxo8N2mIifJnsyhiwHwAZLq
	 lu7PjgtCBUzvibaokMb/2EEEPxGJv3+7bU87J58r5XGTAYBV+LKcdTJpfKqFvhhuoh
	 2v0RjWqt8JvKCoFVxfEy1NLRzfrkyNDwv/wDN5y4QTMp9fJaCQ9evS1WU92Kq3AcFd
	 3t5H5FiG4932ggDE3t2JLMuqbiTiUD53LWyyHaAiYckSqbmYCPsx2uSnB5oVhsGrvu
	 SFAZ3Axan/UTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F8F8C83F22
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175259579357.13757.6837389992920413159.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35ccd64bd7b691fc444037c6c3df39483487fc2093e4c34b5a672f0dd92f34e9
Date: Tue, 15 Jul 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752595793
