Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1729EB641
	for <ddprobe@lists.linux.dev>; Mon,  5 Feb 2024 02:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707099497; cv=none; b=Z6ogfdEKxXeEKRVUWXDuZRKDMCzEjS4nhaOTxPQL4E8Fc15cKU24kq1DqbefR/pX9bulxzfTu8IrWBkGaI9TCYrZOEtLtMf2hd5uMOjVzoXWkcYMVtf2HLhrcFpWSg0kY1GqUkpRoL7O+iMMXn2BFf1FLPLV3mpktDjPNPgXZsc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707099497; c=relaxed/simple;
	bh=gbJZ0dmgPgWhVOcKGzF6pqkpvCfbClv3rMAD8+H2QB0=;
	h=To:Subject:From:Message-Id:Date; b=NsCtMyG2nVk+iX1t1/7Er2zpfDRIRtvjKKeM1nY7RCFqRxKlfUewM0EmGV+65rEZRDgbFH1dZuDJTuIdmbDq9ZMPKdobbwbweVxSKAlmJeTdX0sZ40+fwPQp0G9YkTtPcvcz+wkmcznxJJkyh2POCARmRhG/mFR9/xGt9BjYu+8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Is+EuSy1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Is+EuSy1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 933EFC433C7
	for <ddprobe@lists.linux.dev>; Mon,  5 Feb 2024 02:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707099496;
	bh=gbJZ0dmgPgWhVOcKGzF6pqkpvCfbClv3rMAD8+H2QB0=;
	h=To:Subject:From:Date:From;
	b=Is+EuSy1HxDqn6moilPFovHJEEw0+vgIc9gEXOBbBXL4eO14eBc0ILvFY2N00cBTi
	 t7M2dBvEnOEex45PJiB8xGCaWtPeQNgwu1hW99zqUHHvY0Rn5bfSI7ni9N9GVqlnkI
	 1iO+HHeXefZfaGRHGWkJauFnOInhIDF2pndU7hjE6YyvxupJO4xWzQbC8L2eirVJsb
	 5Ki1EaB6kcOJKKq7bM3yPwBK+EQa9EB0HmYKZS2cvbsuZD9e3L4SRAwScE9t3rScgr
	 sQ1wataoNOyJR7kNzFgmc7QfRCRUTDw3fD4fFO6UGmFrd46PsD8v3T1Ec8eR2jEM6V
	 pPdUzCo98nzEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 772F8C48286
	for <ddprobe@lists.linux.dev>; Mon,  5 Feb 2024 02:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170709949644.15801.9301374469944916954.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2730f6ec2be268a51ee90eedc18a2ab578a1e13796fe405f73fb5ffcb54130db
Date: Mon, 05 Feb 2024 02:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707099496
