Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 659A734252C
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 16:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790439034; cv=none; b=G6FR04KGV+niy2ybmRn9HJlT5QcLebalOpkWoqYWzXkvZ+I7WhI5LhZoM3M373yNfc4Yxn3eiFFU+Ucb8MTeThnKQWFCKsdLDpZlaCEkd4RWmNQoBdT3OTc1TRNVmAKv0UKpWyBDNDhqdWSdI57ygiZVGyI3DLRqS639vSJoKnM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790439034; c=relaxed/simple;
	bh=kbLlTScqLV/ckevccs0ExM8S7xuyCL47a8fi7QW9f9o=;
	h=To:Subject:From:Message-Id:Date; b=aZCMsytOCojc9G4pBJuaSG8DBhNdtHQ4JgRF2Jl0ILLbizOg1sADMXSmfOkUDOW1Yj224iW3L8jg28M7c202Pbv+V+62pv1BrvFCT+mr/S8C7wvD4Rvdk+sYbop9tp7hCox65OQ1affL6ErA15wT4jUvbHEF76HPCPmC1idqDs8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cu8noJrv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cu8noJrv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5470C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 16:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790439033;
	bh=kbLlTScqLV/ckevccs0ExM8S7xuyCL47a8fi7QW9f9o=;
	h=To:Subject:From:Date:From;
	b=cu8noJrvOlkx1kyVm05WsglPzEVQBvVV4gXHpyK1elI65CUjJasmNqZ/bXt4ugvPU
	 fDu0Bzk8nfvFoi/6lnhjjsWVthCRh5ECqSYjFm1k541fWBG8lOTU8YBiwKivb+Axjr
	 A2IeJRv0oWY/Cgs8tzVbqOWCz8+XqVJxzT2Oxuh2oI/LY+W21WR6hnnJFW4Wo48ijk
	 AYnIyYpzZQcRdOxPfVRpPeBiM+ZY8E3DPjIawVr1SrD4wVs7BcYSUua4Djb3MWyXhG
	 FwYo8I2RlIM2/Q/RIrGO5ithzP30UTg3R0aUdFtfMz+Tb0gwONCgpMc4S+EfpfMdiH
	 yI9DYJFUp4azQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACFF4C9832F
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 16:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179043903368.15791.2211820810702000839.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b42fad89159a1300ac41d422de44a8cab3782f91609d3c3c7af50adcf106bb7f
Date: Sat, 26 Sep 2026 16:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790439033
