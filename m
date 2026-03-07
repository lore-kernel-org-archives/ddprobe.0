Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ECAF30FF1E
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 05:44:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772862294; cv=none; b=Du9QJzo3lm/OuqaqPcEZ6+tw0O4vfjcnLJ3N18FyAI+H4IaMu16ZgvQMVNQoQN1FA1DBWJm41vyBii1DONIsKFbnADS5ngVHyIDRBBca1JupVU4wMm1mrDmeTw9d1dKQmgi/yfwPjJigISAdQ9L2OV8G9a4kwuUi7os62/ArcA4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772862294; c=relaxed/simple;
	bh=nZ6rMRC5Ah3i3I9E8X6YJKOxRpiT8UD7O7MwY4ujDCE=;
	h=To:Subject:From:Message-Id:Date; b=AIJYOGCcRPn7hSHu1B7tzSAjbtECXsAv1V+VxOSHdIe4VPvgovrP/IwQMH50eZ69FGXgkAmAtHPClepvCVrteyBAzJTZIgm6FipjE/+H75nmSDfugMVEXXIty2gsFncxCyGvrN4gOxzwXzzmVGWdcbvn0RX4CP8vF/o4k0uaf7o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d0sZ7uX+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d0sZ7uX+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D363EC19422
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 05:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772862293;
	bh=nZ6rMRC5Ah3i3I9E8X6YJKOxRpiT8UD7O7MwY4ujDCE=;
	h=To:Subject:From:Date:From;
	b=d0sZ7uX+TsEpcm5iGrZ9glYOA8ccRUXZwTVUvLJQsX+bazVf9WQ87hNvd6DC9yfjQ
	 8FuirGFnw6hL1JRfcMW4QqkkPfn16aQeQtfEHc5EvwS29ZrUt8Mfy60ucHpNVpmZqk
	 9bsPCi8Sn2Iax7IwrvsqROxy34qATg7SwEwLkGq04NsolBz8Cmik/4AJkrXH7v9tih
	 mHIW0ywX98JSvdOsei2G1TM4lVdXysoTsxkasEbrqM8ENYseK/ZYy6+q6oEs2f3J5q
	 3JPIX4SQUB4n653LhLvSA0xoLDohDFpw740gHNgjQ/u4wNttXGMp8fBMHtw4vWa9/A
	 AW0H3bn/vYr/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4ACFFC9ED1
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 05:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177286229368.14359.2547379950074707682.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a948720f03f057bac04c4d4fe1c9881db955cdb93b3b18210421eda36c0c31a
Date: Sat, 07 Mar 2026 05:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772862293
