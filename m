Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47345C8CE
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743962994; cv=none; b=eC5HolSQ8lqecEhqpdpnRIKehfpR1hfwU8uSlF81ZngVMC0LSzCPDwSwd7qNflUXEyq9lQiGQDI/+Yo1aRYh61uM/hZhjhwcEvgQ1O2MZYEa4xvlqsr+whUCVGPX14cqp75grWYtU2no0TXjYXDV6wUzbJmM22vpHyuQi0EGBqI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743962994; c=relaxed/simple;
	bh=kTNyXRLnZA7mVui0xWJAg/2OndM67Spa9aKSWHJGaOQ=;
	h=To:Subject:From:Message-Id:Date; b=G1BUprP2wnnYflVDHvkwz1vbtRMPbKiyhQF/DDGc6uPgB5OzxFAaVdV+Ymf18cShvdckbH0vhReVS7YcESS/VJMW/10pwsQNbOmkhJPhVRGIvqqI6Rd+ZOwYTwAyqmyDfSNyleStobiQNZr1B+Lj04pEn30QMtTSMmlzSvH1kwg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z67+T5eC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z67+T5eC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B47CCC4CEE3
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743962993;
	bh=kTNyXRLnZA7mVui0xWJAg/2OndM67Spa9aKSWHJGaOQ=;
	h=To:Subject:From:Date:From;
	b=Z67+T5eCmnsBbkE9SXfms6B5kIdJQ15WfVnIjlzbW+8l1TiwvXOeUmxLfHHr/Y9uD
	 CTQNc7TM0hJp2ykjw6DHmBVUEeVQ19kchIf6oI71g46Fgu/oAhZxPjVRZ1Nxsbjzco
	 t+hs9Gpqbk4SASvPKZ2/pl261VOK0jWkxSZ8YuPspgikSNRwbg2ZDi+mBr9S+oeUvs
	 l7D/VJQODiGL3aOnkA/IWEkd7pSCqc2P403uOfOOwtzTpUr20ZVVE8VQCQR7PXd2yg
	 IzYrzApUBICV7ofZtXzlsPnV4C5qb0KvdFPXlKQJBqEf2a+HL2oTu7MKMijyqqfN62
	 jutCVfQmguLCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 980DDC369A1
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174396299361.9387.16417477018610940042.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f971e88786d21e52313ae4f452af6fdcb1239d1a8a5c24e707d6083e02c2a54
Date: Sun, 06 Apr 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743962993
