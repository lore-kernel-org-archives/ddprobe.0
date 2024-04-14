Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54642EACE
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 03:29:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713065363; cv=none; b=KU+BhLdZv2Y56ZxRGJ6Xo6k078IKaKOfdTWfpzBzrNbpKKHi+4RLPg12uvCqC4Lf6xTjaxtYVxzPTooEL6eGv/7tGRAanKBFGrpPk4dvXcaDP8mhGOiGDCbIF8WUrRWiE/8watD2qBRL/e/C3CfBJeXYtFxucOhqpZx/kTnPE7Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713065363; c=relaxed/simple;
	bh=cEFtA3i7Z1mv75XuiePvLSOiQYWPVMAjaOOMrsysGK8=;
	h=To:Subject:From:Message-Id:Date; b=qy3+wf1kb6UhMa+WlHBepRJVFfVJ00gfTziLcF3SSX2AF9MhC7YnH6Iqe0fURUr6jMkGMH9kbqNy2t/i3MNFXMvbaTZTM84/mLr8A9v/6Z7Sy4rpNzcrhNfHgc42fQIa5c9b3cPITZokCwPbPguobgBoIObraXq+8WliPkrqw+k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PXSyVh8M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PXSyVh8M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA456C072AA
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 03:29:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713065362;
	bh=cEFtA3i7Z1mv75XuiePvLSOiQYWPVMAjaOOMrsysGK8=;
	h=To:Subject:From:Date:From;
	b=PXSyVh8M4619JfLPiI4dge2oFXtTATdt3RxouIxem7kUYQl3q68DjaZGWpswcpGe0
	 FBjWq9+XsbTBHNfb0mrLXhkZR1qACsmLqyVXSuAO1Z+6kmcBEwSnoJ0Hr+RM6+Ssqf
	 2yiZh+jFE+2Hs4fpUYu4LjHB8eBC4N2u08kzl5uc/FyuLL5ZWwb+AG0/GZh4UzQoA2
	 FGZU5wpWRaJ+JpPKgsFLH4TBJs5u2sRw8hUBw4abodb1rPw7NSgWelHIAc7ZXozOpA
	 prBSHuwbsph3vAAaW+7xGkDtrZaOWgo9IuUEzOo5aKAwwoUQ2pCzLYbsds3oX00s5e
	 w9fbg8uCg3/Ig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BED34C4345F
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 03:29:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171306536276.25844.17554963215151287495.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d3b03210df7e2d081f6a2c4f5ebcd4fcb74411c3e2638883fca1824b9fd374e
Date: Sun, 14 Apr 2024 03:29:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713065362
