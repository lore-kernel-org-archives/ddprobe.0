Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B7961FB1
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 22:22:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779574954; cv=none; b=RgQjqmeFrflXF9xo7HItnGuyraVNkoH3hHI0qoUaYwHpAYL5XVZ7ex0dRQOZbwNQSBMCgw2QQ41VQHpftx5QJQzvNzV4ty+fOc3Mo0NDIPH5Jgd/WM799+dmDpX7pcLsNUW11z2rRF+3PWLyV3ubk7Ns2kHq/HDAp85PoN2oixk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779574954; c=relaxed/simple;
	bh=6TDamnR9r0mCM0yGFvXFAfFv2APzISeorWGniacgR8M=;
	h=To:Subject:From:Message-Id:Date; b=MOfWMBXeQelMlvCyPNMXFezl8VpkexwgQaETbf9ZVSZDV8e8Q2jTY/4sz/upe9SDz7TOV4mdkqC/tWgPqg1EqrRjjMoCKY8a5/bvI7sjNAl8kLmX8Jycrsmk9oEsqDoyV5On6yuga8P8HhC0FBMsRDdVsraOKQZxvuP6HX1l3QA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=poc18goR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="poc18goR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C90AFC2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 22:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779574953;
	bh=6TDamnR9r0mCM0yGFvXFAfFv2APzISeorWGniacgR8M=;
	h=To:Subject:From:Date:From;
	b=poc18goRPvjMnvmfBGzQF+cdi8wVGUbUvaQZ2JzbLU1gaj8L+0M1YZSzJoHGc1g4z
	 gc6kRnjwVRL3P2eiBPPbSrsfV5vVL90iNyYLfdPi3gODv7U2OsI2vOItFYfEfPPkjh
	 /24FKnOD9OkRrHOoMlICzoKZyvxRya2dJEprCtYAs+vBlNTAoZwRBUmobg+SZKhnZ7
	 j7qH1OEd5g5GAw2hr6f1MmAiUEF0GgnMdac7fbyO+F/3BSRX9J5iO6DhuekVuBU4YS
	 mNV/TLKsSS0hQ54JSLRymACmiLsj26xn+qqsmq3hi6DSLBTtkkg7MylpZsYtqSoy7Q
	 jGkYzcrausZ0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA8ECCD4F54
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 22:22:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177957495368.31391.260132814653855663.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33a173b0ec694fe4c5802bf474a70b592d3d83a9882d16ebb6d85723f0c17c10
Date: Sat, 23 May 2026 22:22:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779574953
