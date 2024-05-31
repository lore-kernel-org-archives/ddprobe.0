Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 745F61CD3C
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 04:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717129463; cv=none; b=m3mcVrYd0fcBnAnpChtF+oxZorqo/Hlf6PSKbEKJpjEhSW8tY59Qb0VwWABlxcNzpptDzJaS0KS4l6UlwILj0HkgxUgPU7d5nxs4ZbV7T2MjTi/x+alAjMLepD6XFSe8mdbSPTm9K2/ZV8RkWWlLgCxw3TB4RtYVCgbq4KPpo6A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717129463; c=relaxed/simple;
	bh=y3k0yoH0LBhRaa1Js7K4ftEaRlEk4k+2h+msC+p2oJI=;
	h=To:Subject:From:Message-Id:Date; b=SOkZn6y/PUpBjJG+PMNmQcLBUmOEVLr+Yb7uFF8sclW1dxcSavyoCmXIdVE1GrP5EIaVOGpjhuCtCSUZX53lptZDHPBcCb2BJa3wTVJe6vuVm5iNX1Coq2ez6Ov6RLCEf7VLkP3axXzeOSTMgx4NXpjhdGmczLKn2nsRFnrVz5o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DV/BLLMU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DV/BLLMU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0226BC116B1
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 04:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717129463;
	bh=y3k0yoH0LBhRaa1Js7K4ftEaRlEk4k+2h+msC+p2oJI=;
	h=To:Subject:From:Date:From;
	b=DV/BLLMURy2nhGQY1cXxRPrryEtTz/zkaNclTR5C1I9iltO6yjcB8O031ZDjurxoi
	 L/WwK+nvEf1UC7FVsg7jqzpDv4gCr5D81cYcrG9GDJgou8WjznH9faHgfPXPrQsP6k
	 HuIugxyfJmBH0479HkHHsLIh42wovjLssPCMkTp+eUXqQxU64iIXA5fTMutaKPQj3w
	 jNmcOAo8g2ap3JWvs1GBduqVFJHWwzPXSxR/6A7El+nwBaFzWA+0oa2dww+6Fvj/fH
	 dUJ5/xev1p/d64h3MbR71tSsbbuQ92kGwYGlmhi8spmz0w1RX+GUY9mGhiUfzkcm40
	 exPo3I9rciiDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D95BCC25B75
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 04:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171712946285.28359.8751651397095040359.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af852adf9c8ca9c7d73b315a4f679831fc18d6d9826059f52f6cd277ff4ff897
Date: Fri, 31 May 2024 04:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717129462
