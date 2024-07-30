Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D4E71854
	for <ddprobe@lists.linux.dev>; Tue, 30 Jul 2024 06:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722320154; cv=none; b=qh4yRrJRUVfvxj/PLYTzl2LJgfFcVMZPsXc9S2dtrCuOIxacg85wPc3fAeCcRtG1hCMF+zl13cY1UNFyzmcsdtxoK1BlLVMv7AH5T/DwJT35L9Y4F+KsahsdUVR66zOgP5WkumhScO0ydQi0QfEyCHfGRDNEcsQBCbd7yuDg2io=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722320154; c=relaxed/simple;
	bh=vtmfnX85kNvEIvSjReWQOzLDIdiIJ7ChyuAauZhRGQ4=;
	h=To:Subject:From:Message-Id:Date; b=ebQo/rtugcOCZZFV2sAXWqP9dBZ1KSDW57bQFziFL4jVtTL57SUAtnHDj2zitAt90dZZB0EVY3GjrnpgF181VaPeJjCgcR185GSqa7o13FNzIMHw36pKE1fDbfpaQ9LsKhrz5K3lJLpNFiuaYtPjuGRZVNNe6JmnbnTN27gk87M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ryj0gWPv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ryj0gWPv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3F48C32782
	for <ddprobe@lists.linux.dev>; Tue, 30 Jul 2024 06:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722320153;
	bh=vtmfnX85kNvEIvSjReWQOzLDIdiIJ7ChyuAauZhRGQ4=;
	h=To:Subject:From:Date:From;
	b=ryj0gWPvfbQXybw2YLBDtsuXHLcCxRupU/0kSSQZTJRiWX4yZlYXwZ11vPb8ax2kE
	 1fnz3Hg1W7vqDvnrEwYeH/JwOMJrh5i0xQzqiZU2dUfwL+WUs7FxtREIxr/XxC1Zct
	 hsRiFHRHgB6suHDO9J4TV0/7cc5at770vTmHgs3OK+5cSPUgE+BrbubieAA3VKtK3V
	 /34pC+NVa901+B279y/ErxTtVqOzZSE8BVhdWXg7qKP6x98Lo2HFTXXdt3KRzOfGoy
	 rggjhu7tMVGngirxZ6lc1gs0H3kU0kIn6pUZyf2wrtH+lACPhJMhTdNmA3ema5lQYd
	 LS7yIubjavSgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A16A4C3DA61
	for <ddprobe@lists.linux.dev>; Tue, 30 Jul 2024 06:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172232015361.24964.16962205392585200162.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23bff8804f3dffd651442043a81ab5b13301b081ff037061d2af53c721dd8cec
Date: Tue, 30 Jul 2024 06:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722320153
