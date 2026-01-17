Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E45A241663
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 23:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768691634; cv=none; b=PaO6xbErMTc/of+besfVHoTyuS4sZ1VLli2UrehJB7Qu0mhLGqXHMlK0mQNBBRJdPAQz8BDMc7x3ZOkUzmWFGMHF01CBRKkIE96GYIrXT0g2txHtOJehtGO83xQ807nxUgeuhohJyT5J2AJmlzPWo6ib7rz2SlUuK4B/rZad4hY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768691634; c=relaxed/simple;
	bh=LOiAAmJb99fc9F0Wr2MKNCxKYDoBj/SdA+HpeKGeAS0=;
	h=To:Subject:From:Message-Id:Date; b=s8u9DhlfryG4oyQlW1OPkzfzL10CeuOpVaTWJDcOAu6EMf3AcWiYsmOaCAEBS/wSMDIRavUOpGKaO7dWARW6B8y6KwlS2V+dt61jARUy8i6LmmR+goPKqt8FQgqSkOecZ7qzGKe7O1uD/DP6E8oQSqt6Mf6RfEdhqJVat1j3qWo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sKegj52x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sKegj52x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A69A6C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 23:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768691633;
	bh=LOiAAmJb99fc9F0Wr2MKNCxKYDoBj/SdA+HpeKGeAS0=;
	h=To:Subject:From:Date:From;
	b=sKegj52x2ZGJnjfZb4C6hVanqt3Lt0WuDlF0qQkUoW4LwhvmC4yiZDqsXFmtkaZEW
	 1bM7F07MElCpMudOoDFPb7D66nVfebAbBowDtBaQAw7sH4m9+AaE8RfIY3NZFWOWEE
	 jhHUfA7E6A4xfzsjOa0jNWj02fVUBs5M1d2HreKtTAjop2xs+ktn+lbmDfeD9FESHi
	 RTUycb3ywule2Qi930XtCf69VhtZBwvXieqb46Q4bfaG32rAnyIBvNx4kmzwfLuCeh
	 sYmM/muK/uA2pMAMS+hyEWueSTiBp+k+buqwYcHc1reQBJoup+M0Cbpeb4Za0z6PSE
	 dUJVtcY2hoU4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92713CA5FE0
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 23:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176869163357.16754.13658835047896047941.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f456e64fa6c135ae55abb79f510680dabc51ae382a739e78347288fc8deabbf5
Date: Sat, 17 Jan 2026 23:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768691633
