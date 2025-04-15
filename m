Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 303A0253357
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744753194; cv=none; b=JBXBr2sd4U5ug0JW4HhzYYCczhYWtRwI+bGdlBKczFa5+H2I/cfZ9b5X0t70ngDPfUZTUy+6mLTpyA8c/hTxkAGEwzfqU8D8saKHu72pv2AmxfEw/8m6enbUlroKGvEgx0J5bVYKVbdWrd9CgmKlCa0uAofvsaD2iebqPi2wiWA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744753194; c=relaxed/simple;
	bh=5Mioe3ae8OlpcSWQb3RFIig9HgumoeaNzorx8yw5a5I=;
	h=To:Subject:From:Message-Id:Date; b=m9hVFEXsQ8K6zYHl1xRw8m6U/34BOGTOY9XirprFPCBVH4nvBK84zBATKtfg8MmrS81/RUOaRDBCivNlbqR0V0k7VPmKxE/aDFK2fuxfqaj3S6UlK94QAmDZJIUMpe4F6XhB/trdgwLVEg4X1lFsquwsV5zyA39l8+5Pc6JgHz8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z2WxUa82; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z2WxUa82"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7925C4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744753193;
	bh=5Mioe3ae8OlpcSWQb3RFIig9HgumoeaNzorx8yw5a5I=;
	h=To:Subject:From:Date:From;
	b=Z2WxUa82gZpfnT3XURYCj2iQGKW4Z0fmTFb1ZvAOOf5c24/OsQmt6QOxFRBEr9Bja
	 v2XmxAE5gTrA304XvCq+qkYmulBaYnlCUgmfoJEeF9e58kkMwrL1uhOGw83/s//PD/
	 IdB62ML8024q2CrHuMDPsVdD9Gk9u/fCd/M6QDMXDqPq74hEZodXvkIxssYwGuxQnF
	 cHCTWLFsn3YGptYAl7JcE1IO77aeXrJ3F3Z0R91++3xZI1GurTYdL0m836lo+U13bk
	 gjqOtYXIyRu+k5xs2C2HkF/guzsxU3i2prOHtw+SEiGCwdezX/fhz4G9O1CtVl65dU
	 bokSwFeNqMh7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92C05C369AB
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174475319357.24554.11986747944373170920.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79f2be08cc6972ac8b91c7e5dbb3217ede0e6bcec72088ef46a3274d5d7c17ed
Date: Tue, 15 Apr 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744753193
