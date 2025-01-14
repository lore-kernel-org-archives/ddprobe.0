Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24A41284A44
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 10:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736849754; cv=none; b=clBNwAxUOhHATIvN9hyHebRSlO2WGVEtjiRnhw0iSzOJ9eTxhYTd1btA29mXEVvZypu3Gw8LLt7WnrNcMglpoQg110p5HkZkoz1y7lg6xHgoz8s34nxyOzRwHJB5n56g7sMJ4mI+83mKMfATX3IBktDiHyJMrkNbro0RhhDSYgM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736849754; c=relaxed/simple;
	bh=dQo458xAxf5Io4xUfg5AwPTv0KpCmF92AD1t2ua62wI=;
	h=To:Subject:From:Message-Id:Date; b=uEQi89LijlsYXQ6Zs5rTyN4eBOnajs57IWU+dMqSqAM6QDUGreEY8O+6oeTr6r2csQqKnVA+GzwzCEUCpYvsnuCxjM/ec+f7MFjKDL+qVKHitkScKLYfxRFX6IRObVOZNxCJpwmYqxSlPtHZEDRgKnviXlodvfarAYpAZ6BgKfE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X2Ar5AP6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X2Ar5AP6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA99DC4CEE0
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 10:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736849753;
	bh=dQo458xAxf5Io4xUfg5AwPTv0KpCmF92AD1t2ua62wI=;
	h=To:Subject:From:Date:From;
	b=X2Ar5AP6EuTMhaqd0aZW/LlbfV3laf7bbWbzqPzPE9/420FUfUuwQcTTKOdNYKirQ
	 mMkBKfPjSoDFmbhQ8RTVurigcVwyeS6NeCf1i99UFRfZ1BVaTUR/cywFJH6TcJdxWP
	 wgyP31BUJpybTDShseyt82cIe07KUtRSb2VPYpKPpSExc1lUBBHJe5fRT2Z4nI/oPI
	 w4TbrpKZVUXRRVtoT41VBktlH5G6aLLqxib0o2n3wrg5k+HeBXP5ylVE5btiwzGfnb
	 FD4KgHTtXkOMmWBJMJUnV3KSBIFSm8BbrfbLMmL2fyENWNdxpvgKPSGC1c0f8gFhKR
	 C9PSF3UEmJCcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 997ECE77188
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 10:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173684975361.11809.10532237098477126819.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 277e23d95761b9659abf5b366e426b3a6d44d4730b3b141189d8fabc709e382f
Date: Tue, 14 Jan 2025 10:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736849753
