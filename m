Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F4D1626CB
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 23:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719616463; cv=none; b=tvj3sXkeVk3pvIvCrZ9msbkLqpi/S54HZm2G6ybkIACmThrfyz1deCDc65noLz1l9VNBMOhGeMK8hc5V/243oW9apCTA5L1Hb0U2PnU+VZruipAErJl1FgUB/3anbl9ZfVVrFnJRT3d4TTY97PdMUzIHFBIfulN1u224AXhBEUc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719616463; c=relaxed/simple;
	bh=zVWKBXdlTnj8NMEmv3oSh0s/PdxQ/qsyTbkShdeeBVQ=;
	h=To:Subject:From:Message-Id:Date; b=SLMdy0W3uLPxqwe4y7a0YSdt5DSsusyrfiqpS4cswFxCm2XbiWwThd8hF7vwFwQ5tqNCTsmCxXY1UZ1X3koxw+yrxZlV42CAMKimcJC7KW5uzytZJL1tCkJi+B3ojPqP0JvxZTcx5KeJQJX4DYsFDSA11nYFcN5QQpFkr9Ie49I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C8UgddeH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C8UgddeH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 13C8AC116B1
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 23:14:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719616463;
	bh=zVWKBXdlTnj8NMEmv3oSh0s/PdxQ/qsyTbkShdeeBVQ=;
	h=To:Subject:From:Date:From;
	b=C8UgddeHuluuxd9y91u8MJMV0DKuutWIiX41ZXY40P3QWQcxH5g0YweasNXKRqhP5
	 yrrN8KyFnq6eq5Xxlyy82wPkiSBBuKNX6ShhAbsmSocy0dyMTxAsnq8GHq+GmNdLCW
	 bwCcll2Br9DN75OqDHL/Z/zwrfdu2PQrSOVxl5t69J/85W3YH3tunJhJ1XUUXfswCI
	 S7amfBp9GiPdOa0x/sXLn3X/x/zvK4o5ZAOzw9sVGa42yAGqm5I9YTrjQVBOaHvxTx
	 YhdgoE80m0COJudoYXwOPq4bihQZFzCUso/yyxQUyAuEBFqqEcWeK9UOi0n+zVqklO
	 vqnLeDK1k8Vyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EA2B5C2BD09
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 23:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171961646291.11228.14044822014153499459.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd7b9c7d5b51c3c5ac421f40f110f50d385ef9342b783024aeea33ac3d53fff7
Date: Fri, 28 Jun 2024 23:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719616462
