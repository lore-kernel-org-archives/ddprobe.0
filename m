Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 244371E3DE5
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 17:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771175094; cv=none; b=BW6HWc5LEitIQ6Lb2aVc0p8TwZhom2Q6LQoJn+EqKWL0wUgZfc8jJ5tVZGv4reQ8wyC4n1tB/qfEJRuCsjDfzASFg9eSFYN7r6aLk9KYt6tuwc7cxZIk8d4+wE28QK7fwoFUEctDujlbI87Mm2KldXQZWv5Vjql+wrwokTD3h5g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771175094; c=relaxed/simple;
	bh=HPXgV2pWVdJqNxeXLN9gvE0j8a2gYRS0dDfnihrBo7U=;
	h=To:Subject:From:Message-Id:Date; b=InHH7FfpO8nBQB051nHVUvEFpk5J0NjAW/8fCduAEbgQtH+G/yn6fcCq0QacTmBfc2WMaGKHs5hpcN5Idb1wjPo/p2VWpuHNnv18Yvx/9etXYjVCpIXULqxOzrKwsQ/uy6xMR28zjPy+E2MLknSK4yaGhcQcn0oR/k+3A4EBK6k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=arGVzl3Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="arGVzl3Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7853C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 17:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771175093;
	bh=HPXgV2pWVdJqNxeXLN9gvE0j8a2gYRS0dDfnihrBo7U=;
	h=To:Subject:From:Date:From;
	b=arGVzl3Q5eiVe2VSexVRtqwJF+QWbM57qtYzDuqXHERrb9HZpbE46Bhw/jT1Dqk5H
	 sfoMV0Dy3U/CbXKUPB3vR475d3WAyl9JTqG2483itDbupZ0ta1CC/4ePg5o/MLumGu
	 udAVmDRtBFGt4YErR1SREYvS85CD91RlVrEMEd+wedreNtorraXFo9A6WwWB+087/4
	 UG/PJwCKDspkeLS8JMZSJOqVde+7ggqP71x4CMG/DE+Ns2S6sHDKWqGn956rj6ykC8
	 THRC2Rb6cEFXrmQ4nYvmptkuouHbTNC1wgfRxA09eg2BO2MNfJyoOYTzYEMs36MG+D
	 Q086vcCfmFFPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93BD8E63F07
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 17:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177117509359.14621.13357211399508426165.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cbccc64787ff8e779813e14cda261e637e8d17e8020f7490fe2bd84c0d11bb1a
Date: Sun, 15 Feb 2026 17:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771175093
