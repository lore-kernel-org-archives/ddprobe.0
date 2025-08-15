Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CF082BE644
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755288594; cv=none; b=exa2ij2VLTSs89tL1rTClIwBpBwFeXvE7wPMQoNyW43ILI2fPXb3Q+Y1xraEl35edSGbX+IjNYxycjrn9MEy8vLI8McpjBd04VPNJqqbGW8o2hMoX6p4LJ13V4A4NX05rxJkrM3KQYiPeRhuV+By00tQybqMCosfR1Okb4Tiq8U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755288594; c=relaxed/simple;
	bh=MUsRCbuoek+kzEInB34S0lu4H7eeJwsFbZxMX3MwH5g=;
	h=To:Subject:From:Message-Id:Date; b=NUOeY9qoMbqIiQX1AjlpnNRkmFDj7vnXKlm6opcgSNa8q1mLVkdoaSKjToe1VnFtO35HKAWBCnDYjplHIR74rXfzNpl/TcU+Ri/ODOtKPNW16c6oVNB62HzhA0YN4FnLC/zgCIfNFqIYmqeCQADlco8DYwh7anTqYFpM/z9n4ig=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ka2CxrKC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ka2CxrKC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6919C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755288593;
	bh=MUsRCbuoek+kzEInB34S0lu4H7eeJwsFbZxMX3MwH5g=;
	h=To:Subject:From:Date:From;
	b=ka2CxrKCJmZviYK9/W9x1M1L/f8nBR23lRLOtdBXDkXZAnlPJbtxj5A7P0/jG6Z+U
	 wDrXOor6O8AUcPKri/dVBRQSyG1bL7E1WqlulowNG5D0SofKCdkGlPw94HPwFCm0pi
	 I6iZ3QEPn3xSp8e/Cf2mPnFenvbjpZItcFTA9k4WCJH857+zW2vGR9gg2++sXWFPtl
	 BUZgiyPg1uVZAXMfbl/eTYH9uqwFOkG3OXl9hCxFG48IsCdSnMET4N2mNfBvv0JV38
	 IPj1a65L0TZm3eLOdFH3lw0rSozDqZzchhX36Impqg3DsHd7jpCZsTRFDkHUBGvFoE
	 os7E2hZxNNtEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 947C4CA0EE4
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175528859357.25117.13726268586731291232.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a82ede6e9385691cd8aa9b500f2a3b5088367ba4fc087de70a5d6838faaa65f3
Date: Fri, 15 Aug 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755288593
