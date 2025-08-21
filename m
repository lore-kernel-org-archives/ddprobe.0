Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BE9E341661
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755799794; cv=none; b=lggcSOzTnWAJqGgWm9gHaeZnr8m8YrlQKxzwPu5dEeDU7vPpl+kT9c9JIpKKnN8L8yYPdNPymWoRMQdPpc2OJsA7aVUpqv+F2vawPZF/uHbnEkD0iFIZjRhxHzMBOrBMFqDlzVlpR2Jl2nKaauH3jf8RYY2g+rEtzSK0hpz7ang=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755799794; c=relaxed/simple;
	bh=T11QTA8nBfkcDupOeUuzRYU/hZSnq52JKu3n98hKNq8=;
	h=To:Subject:From:Message-Id:Date; b=O0bNNmf2Vdkab145SEEXQZMMyHzHWxjqPY4rBZfjCi5rcwej64vrun8iGl/a6BoofHdlqxyv+bIAChEroYRGrgthpzo0xKJDgeWOfFyYf+qSNy37XvwzIj1BUrN2SSHx/6JefuVV8zUeFOFn5kvE73gYC56ckzmQyRzdEM+y+iQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iCpUEBZz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iCpUEBZz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4D67C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755799793;
	bh=T11QTA8nBfkcDupOeUuzRYU/hZSnq52JKu3n98hKNq8=;
	h=To:Subject:From:Date:From;
	b=iCpUEBZzvMETdao9ALwXrpgbkpgyvmhBwGTBYeai3NtNZ/F2ygi6acJg7i7o+doMS
	 0Fsc9H0r/Y8TLEpPaAo61CxIjQ139LB0n/u7n2mtEMaGRu7CaWzurjUbwTFb3f+44T
	 gBSZRRcUWGSCKFd636FKJI7QGFD7G7rYWnmDlcgiovPyrzRmWee/NCBOQeN+vLvFiS
	 uQE69vv+gFaL6JZ1LQe2a8W2K+XEZcLLg3aVpF4uNn4uUruKfbmsZ1i6JBUYzfJ16z
	 lWShSQOJ/fNmxuDvDi45ti8MGmJePmqp0dKkS8BjfaA1pptiavPrwyBDroRdU52D34
	 vqF7y1ZWVRbAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E99CCA0EFA
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175579979357.19138.9902857961579667337.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a5a942b3d553fce647276d852dac9d88dc5c5fe75e66b9781d10f891832e5b6
Date: Thu, 21 Aug 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755799793
