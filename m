Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FC941799F
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 12:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789734634; cv=none; b=O5C20bysYn1OMqDFHKnCqRd5Eu4Y3ZRcuhR8jiiEVpJVgZlHizV6kibxM6X78bW46MuD9zEx1pJlwgEf9hNR7S5Csq0rv6oxCf1SFhw5X8kfW36RFoW340UQ/PwDke2Batp3Mhu4VnYvJhCznb5DWjWV/3/djJaGfCqFRpJag3w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789734634; c=relaxed/simple;
	bh=641EJt1EV7JOkIXQN692pVmD2vhtibl7/x0uUbWTHlY=;
	h=To:Subject:From:Message-Id:Date; b=pLZsV19ShsS93TWm9lpRKkVXWxe+uyBPsJHP5eLSBGXQZfcjfdDfFkpmt3J4BvuiD7bBp9H3XNSrdJ2OlhVqHGCBuMPSGpcrUOr9lB4QM06dfnSr/yXk+/cHS55u1YJHp31ym4Ak8yd8h8VyJta+/fX94QPCmhlQOOeW21TNlx4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o11i1MPo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o11i1MPo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCBF7C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 12:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789734633;
	bh=641EJt1EV7JOkIXQN692pVmD2vhtibl7/x0uUbWTHlY=;
	h=To:Subject:From:Date:From;
	b=o11i1MPoBvEcgrpifMgi5CMnplOagg/K48HZFnULSAJm+tjMDwYkjLN4BlpfOWAZA
	 jAnqkpmjAsc3U2y5QtcA+l8eFt64omMwvH1ePjVnCtV8Rb43bdVH6/+BJlxtWJux5S
	 6IYtUIvge0CgL1F2rn6A7BgAAD8roJiV5DJ58jKkwemkc5Dk55ugdzr2KOTFx5T8Bd
	 troi9fDiTMhGyHsleWt5oEepeLrU/jS+eZj+3mdAiW+GeFIemn6JG7AIeAxMHv6e6x
	 SXHlCreQykNAltWtB9SultUiBlDxh2v4rWqeBNUjDejEnS4NnP7Mq/hj2+MKQoBo3y
	 D/btAbGY9SDPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9B04C982DC
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 12:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178973463368.7930.5097855044243187781.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ae0a0ef893daa1c53e6c82b6c0ebdb115a77a04e80c7ba5458a72df3a58a48e
Date: Fri, 18 Sep 2026 12:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789734633
