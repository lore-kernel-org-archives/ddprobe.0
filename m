Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 84AA0262A3
	for <ddprobe@lists.linux.dev>; Sun, 19 May 2024 13:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716125543; cv=none; b=ZpbaKhn/XllX7Wb8L7f0IMg86Qjk6A3DdVJXGcExp1WfQh+/NTCH5gFb3V/vKoW3xt8ICq2/BbLM/rLKO9TLvhnFn/aGv2oK8somqFXc9/Za+0btcb7ZKlcpYfByQjt+L/BVVxch1GqIO9/lXUS0GdkABsh90re+jgN287G7jEs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716125543; c=relaxed/simple;
	bh=Kc/UQY/XLZ9KLC91QiLVuurJT//O2MHO0lFJ0rUogEs=;
	h=To:Subject:From:Message-Id:Date; b=bmpRKGG7TJ00xV+LPvLag07yZwINji1W+8hfvxVe2BDpmr6vUKTUM3ryzs9uwSOxiTVuzJtWke0bASlFO+dKNyZVkg1ck0BzazP3+jYSGmlAM76nouxYu55DKzg03+3KyjSE259F0KigofIn+N3rS4DDaA/7mfQwbg/qUQAlmSQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AFtwfQUF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AFtwfQUF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E623AC32781
	for <ddprobe@lists.linux.dev>; Sun, 19 May 2024 13:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716125542;
	bh=Kc/UQY/XLZ9KLC91QiLVuurJT//O2MHO0lFJ0rUogEs=;
	h=To:Subject:From:Date:From;
	b=AFtwfQUFnHGRB0nqp/bX/JuglbY91D7m9bzgBR5jzwysrFIWKk5id9MFT2i2cm6Hn
	 f0aw1/29IIUs1D0jEDb++mhsnW93rBoF1wmUSOQts16S+wCcfluUziv0dMH91BgOnM
	 vezZkMMIZF15SJeUq9X4FxE3JakxasbTJNnzhsOWRNHuNsQ57/UtOr/whgU2AAnki8
	 PjlrkjqzPRPk/v9RcjN5JyEuHXkoM3rUH8Ld6dsys0UOm46z3S5VPfSKLJYRhX6afO
	 vSIElN2pkuYr/zHZnntedylCt0We0s5vTkkVaTfAWHCUKB8N0GRbFDlnJKyKRwgUgT
	 p1X/j0ik1y9/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC4F9C25B75
	for <ddprobe@lists.linux.dev>; Sun, 19 May 2024 13:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171612554282.27201.17531283427392291996.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fbbfd8aeb2719ae17a1b8464551a7420f5c278710ba0a091596f883a2584d83b
Date: Sun, 19 May 2024 13:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716125542
