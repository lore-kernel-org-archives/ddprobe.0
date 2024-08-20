Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69CB518C030
	for <ddprobe@lists.linux.dev>; Tue, 20 Aug 2024 09:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724145354; cv=none; b=jILcubOp4wpbLi2H7vQtlTcC28ha4Wzi3ptrXDzlKKJigkP6Jnno6Lpsi2M5jwoegLaLIWzAggPYDuewNlY3XuzV3Ij/d47mJK042rFWjAwH2EliD5jVrhKQq/Cyg90Rra/5aBcyyy4xe4Jc9FpbIVc0zpeIUpe0+Dty/9tv7dw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724145354; c=relaxed/simple;
	bh=vhP6dtW9GGHgi4mi4rV3MW5vxLELG5x0Fr/a6oybeLg=;
	h=To:Subject:From:Message-Id:Date; b=kjgRx0EaHUGGFByr4MIDSCHvoe02/xUg2iZv1omiIsStAzYuSWU76cLrWUs/MuChc9NPyBmuvdwyQ0VrvTfbShoHVL093LyVWOZf93GiXorcHb7X2WRGFlmNnJqRieZBqe6e+Bdgp63UmdIIkMwtPUfnPy0doJ5F9NGj/6cjfHk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OCNHvNG8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OCNHvNG8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C370DC4AF17
	for <ddprobe@lists.linux.dev>; Tue, 20 Aug 2024 09:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724145353;
	bh=vhP6dtW9GGHgi4mi4rV3MW5vxLELG5x0Fr/a6oybeLg=;
	h=To:Subject:From:Date:From;
	b=OCNHvNG8Mvv/YHYBPx+tPq0ME1+OkrW8E3dBZtqryP5h2p6r0pW7a/aOoiAk7J977
	 dGzHjEzjKo4nQYdfT/WslsUbdxVlw7SHYFnFkFMNRA0zzicJIhmhlKmy5xAPIi8h4k
	 vUdEMypcIb/CxfEuA0G4htnvKQ36pA78y0lurYcVvvQR3EbVuVpqRo9BiLskp4lrsP
	 9hVBt4eRlFyGdVAjv7ENCZwhFAc14KbVQCazWrFKSX1mYoT/gvB9CyZhNzX6o72IWc
	 ymBZxdxqLUXwl4SdK7NgCJgZMPEQeOV74v63EfBGV5LMgHMA+TpM6WAziET0oHRKad
	 cr3UnaWUnkWiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE05CC5320E
	for <ddprobe@lists.linux.dev>; Tue, 20 Aug 2024 09:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172414535369.27781.12074675068007731724.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd8a0a448fb53a731c989c9458969ab93380623befd877ffdd5d6be9657c07f7
Date: Tue, 20 Aug 2024 09:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724145353
