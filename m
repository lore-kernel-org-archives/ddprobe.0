Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0464515252F
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 15:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717254863; cv=none; b=Agslmg4SfFbjRYd+XvAqhG0kwsnxjLc9aeOL7e+WdCuHToWrW2/lpUdup6ziX2Z41uv1QDb7X6n3i70dzMTzFg4RCewWEw/Y1Z+mCmRc/cZoYdtA38abnhPNekqrdFbjUuCb5JvKAokuFKDT2Uo0ok+6P5l7KFIEm0z6CD0ZrZ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717254863; c=relaxed/simple;
	bh=bO3JhveDFrhSgNjBFug1n+QKxKqssNoPtX1B3bHLvAo=;
	h=To:Subject:From:Message-Id:Date; b=Kg6xE+Zbdvu04TFaPQfcsOU+mxOP0rNBnr26pzNooU75a9+5i87DVJFGSsLo8nk5L34Efkd5PDX61mh1uxygbj/4+xQL2fSBXNu7ixkVJ20ulMOtq9M5o9Cb0tRaChAd2QaDoUtyhOqynYfGhN/lggy1IEt4slrDCMMAKvYiJf0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mRvticvs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mRvticvs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCCC2C32786
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 15:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717254862;
	bh=bO3JhveDFrhSgNjBFug1n+QKxKqssNoPtX1B3bHLvAo=;
	h=To:Subject:From:Date:From;
	b=mRvticvsoSijb80QxkAPypSukVrVmPThSzIae5Mq+/9LRJpSV2YpO1syHMRDQrBXJ
	 rr/rSRG7WYaB4IqNUyDScwyJHVaIEYdzwXGublPMp0CDAGsX4QxmnJR+t+C+CZtW48
	 RFmg6S+pkSKWF/SYQMBsYORI0ooSWI1C0PeiSjx/1jXoeTXxXsp9zP9j4RqO4qQI+F
	 9EGZb4VnnN+qD7GiTk57aDHTngIIH97lNEhM+uULuNBEg7GwaXZn+YGN4Huz8V9Id7
	 EBPqz6CMlnlwSgkr0dCyTobBxt9WXuCcpVGS2TtEtbhEzs4JYd81G3tle1kEsP/W0J
	 0vg6tIDANAPcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC016C25B76
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 15:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171725486276.21241.43738973402003187.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42aed2ddeeaa89bef6f02268f29ce75789493314db83c597f9921b0f7f5d422e
Date: Sat, 01 Jun 2024 15:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717254862
