Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 410AF211A09
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 04:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767588234; cv=none; b=BcmtrOMwnHYf0Op9jPC29LOmX1q66+3sUZwFK9LAS5I2PK7t9QW39kOIksigMusjm27BL+5gyhs58qKwamOEaqaiTWvYrhF0owohA53BYUWT2HqS6fFqOlLewa4Zj1ea0M4weqnrKdCCmAbSqTM0s84hzkPtQAw6UjHGpyv4XGk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767588234; c=relaxed/simple;
	bh=5xuTL080Zk/sUFf9IbLuhgCmvmdid1VhICtXQwECMiI=;
	h=To:Subject:From:Message-Id:Date; b=aJTqPcwLVhFIHEroohhCm5aBIpI7x+kfo2A7VrhAQqmHdnCkkY2FVDQHe61Q34JGsf2Mvztar/z45e8/9zBfLs4C+/p4P2wdm5zpxVwniBhrT/mUmKaK0KBNTh6/zDS5KI+sr7+186M5OadiaFRr+L0Vf1snpmNuDwk5IL20cFo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Toar/PwV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Toar/PwV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE2DFC116D0
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 04:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767588233;
	bh=5xuTL080Zk/sUFf9IbLuhgCmvmdid1VhICtXQwECMiI=;
	h=To:Subject:From:Date:From;
	b=Toar/PwVrUY4STGFDpGVojEIu5AsttCZrzlmNLB+/xObD2RxXpgA8qV1sgywE+MoD
	 lJpDhbB4YeD8oU0FZO3Wgm7oziyDIJ126yBkdrHnYXmRbQNy0GWtiQSWfZGigsqwVe
	 L5jaup0MUhhmgl0YdtSj5xvTDaVC2Oos/Mkqc2OvmBxD+DgyJLE56I4VOzLJUBoJbB
	 knFng3h3vP7IcYF0Eepc1zs++Y+HMhXgbMXuw4cojN/+dDI7xNi0Fjpm0kIVB3O9iw
	 PX/Ta6tGyQCyh7cYbqO1ikClt0aNDftDuIMl0FoBLhtltw2gvvHWOwG4ZsgIvlkrOo
	 /kCvyMr0ktsuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B5DAC2A072
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 04:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176758823362.4570.13626681649109863392.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d75da75ea9aa2de52018ca242b719ae7ca4f6a357cc8a52bcb43406445221317
Date: Mon, 05 Jan 2026 04:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767588233
