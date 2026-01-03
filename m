Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B1DC1FB1
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 03:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767409434; cv=none; b=YkeT5XCi8Owjq1EgZO2JItuEJ4YCZ6PJ4k8Ke94VsO+EMMnE4Q8D2uF9yTGNfKk8clvPhGUWI3HzBGQbYZ7un1w5H7qmdvJrVnAYURA5uA2q0VPjvLVBTxkw5nN12BxY0toisMLPTNylXdtUoY1SINxYIRk7D3ykeOgNEy/ZuD4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767409434; c=relaxed/simple;
	bh=SBf7D/ggJPaPWsv8Kc8SiNNVsjIBRpTOgJl03KyohH8=;
	h=To:Subject:From:Message-Id:Date; b=lFeqWkkK8FvMgDyKmMZGrOI7+Gax/wAZvgSb3/2t1kXAu4sIooSZ7Y+ScBoiGsPNEwZTGZENfLzCdVA+R5vtPvQOYIIZfk84/Twg50IBDz8L3AMNomfhRK2JpQH9hbNfzBYSaQ4sBGD9UHlAioZncpmMvXA/P4a5essXthcx2ec=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TCyC4ct9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TCyC4ct9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A68A6C116D0
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 03:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767409433;
	bh=SBf7D/ggJPaPWsv8Kc8SiNNVsjIBRpTOgJl03KyohH8=;
	h=To:Subject:From:Date:From;
	b=TCyC4ct9NMZ5Jwhm8iBoeG9Fd9ytmT94wk3JVjoGehegRxWZ0GS8EIzgKZ5cvcQNP
	 p/tKNCMjZ/oolL3XX1RTAOwcOW34xmPaBFPbK3fi5RxGoaVt4il1P7UxI3jqxvZFAV
	 3OGOXwkFzCALHP7UxMU8thbdCV9r0kUqezq824AVwpHCZjFqMLdZ8/h3ojgZeNDG7C
	 ecUAqj4WilMm2QjWNQ9s8q5mFsT/4oadB0e1j/1+JhbxLTP00j4g7GbngPPxhhp94K
	 HS2dz7bhKlLcm4xa5OGJZhi30smrpvPWdSXREy2QCxc851FT71x1LMdib+z8XE1pPI
	 RzySX6E7iSQjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 945DAFC6162
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 03:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176740943357.9663.17598962869880644918.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04768052abbd1f51bd8c37a1011b3a9ae76381f7fc95c026c58032cc62d759cb
Date: Sat, 03 Jan 2026 03:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767409433
