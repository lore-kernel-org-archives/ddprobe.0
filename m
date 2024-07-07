Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F6976FBE
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 11:16:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720350983; cv=none; b=Xh8ouCMDxvgqPMSqydzO2cFoysRB0tBlgmT9gTy+Yk++NwSTf77YSxiZmczZxDaul/39Bv3B+YPygq/bRuHp6c4neVl09jTP6x2R4khciDoGfGLJdBABjC65DzmMI+0Wrb117hnQFcpZjTsgveCbgry+TJ7+mnK0TpWK3Si8GVE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720350983; c=relaxed/simple;
	bh=gxuHCK06kKttIxwbz5ovglKRVOuCf66KXgszEiTR/Bw=;
	h=To:Subject:From:Message-Id:Date; b=TyH7liYl/LHMWUXzmH2Nb9rzLlmRKiWfquef5KW06qY1duPWRtX4LZjWdAmZ7wf3UX1tOIB9B2/bP7FZkn2hfLytuI1L9wcUoOfKaCrD9fzLD7wu+BsUbXlNo/qqTsiYP1aNQeYbkhwwyNWp8lOWV2xahxIWzHYQ8Fbrhb0FClg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XOqS7X+v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XOqS7X+v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5D0AC3277B
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 11:16:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720350982;
	bh=gxuHCK06kKttIxwbz5ovglKRVOuCf66KXgszEiTR/Bw=;
	h=To:Subject:From:Date:From;
	b=XOqS7X+v0q7RK1Ml1n0NrOJak2ivgUDpeSg6Xod5Yi6xtOu9Xv387BFdRP4HOFnFN
	 fTyXI+4N0ENpV3Ilay6ARPsmLhTAi17emz9ujCkR3EWeYnrqoVI+8uGHqImwHAHoaz
	 IqP5sjozVpwaENqHJrylw7JW3rxhG+lWa0iOGoVIVCQBOMcXF8EcJgllUFdd1P+J/S
	 TCGDQUcGX/6Lhu94X3RnU9pCqxZHDSEH2OrPr1IqBQSL00h4bRVRT2aaTYvxnAslt7
	 kvP/WzUHKXGfh38IUmE7ZpHWei3cPLcZproJ9gxxQPy1beSj0qvVFkPhJC7HNVvfz4
	 hzYQa9B2TgHgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF2D2C30653
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 11:16:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172035098283.12673.3333550783881328162.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57d0ccc123fb31695fc611269ece87e82b7ba6d0ce567de2c4478c935d93b981
Date: Sun, 07 Jul 2024 11:16:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720350982
