Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43C4026F29B
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 04:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782534514; cv=none; b=N/xz0MsQKTRvN8Yw7OkMJDtsMArA/LW2hMNQ0OxA2+b1Zg0PFpWX7oCqIOMRO5Bd6qPWOUo7RB4I+WuDVsG/6VjosgZyWLr1tPlX45sz1bjxelrKstmCDwy2iCUx7xgcUN1zDupE0lUSmhF5T+5OQxanIfTMF60DGhJSu7IX4Ws=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782534514; c=relaxed/simple;
	bh=HozFIaqEYYxpNVcrrRkbx2/Yhew/LITSZeZXiDHxBX8=;
	h=To:Subject:From:Message-Id:Date; b=cskeQ7NLt14vVmwMEVIGC82DsMGYO0+rDmRZ+jMdpmYAbaTIufGan9pEtEXrAApyELUnIwoVdbxCxATZPnoBiLGgluK7NjtMVqMOOaAoYTNEt871V5pqMb1ANjppJyqsHTUvvtuL4YMTPMNkzz3WyI/HgfQCDU5UYU+jHao6z8o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VM/7MWwJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VM/7MWwJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C82D1C2BCB4
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 04:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782534513;
	bh=HozFIaqEYYxpNVcrrRkbx2/Yhew/LITSZeZXiDHxBX8=;
	h=To:Subject:From:Date:From;
	b=VM/7MWwJeubtvjpjcSZr8/62ZqnnYE0umwz/sUu2n6gtn7m2i8oNwwJnk3+HvCyZR
	 vZYdzTHvLypTN/DgMNPX4HLlYR2FwCLLwlFeWHyKjS2cNKKqQ3SMq7U/g+SiB8lq6a
	 /dOdiXDPg2MlbpmM0xGaRSYV3K7YV8/8LKYkSnLl2FC/P68D/qtlnljFuFN+H7/vEN
	 4KKdhDo0XkbU3G4yQI4AHAudk2BbUGOAvmSX8X0X087H38I3g5YjCEy+O3ZgV8ufTQ
	 kxG/zUGbwN8TH6XSmqJuBCUfMMng2fXn1dhzG6uBUvbeEvfpnpBAbRpaAdaQ39+h0G
	 Kt/TqGERRgPRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABC27C43458
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 04:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178253451369.30587.8495065655185859191.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d63afaea090af9e60581858c819b1b525d1e81c68e697796eca4b66c6ac181be
Date: Sat, 27 Jun 2026 04:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782534513
