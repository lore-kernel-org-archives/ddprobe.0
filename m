Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3177B17C220
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762312194; cv=none; b=K5Pe99M9PVW7wkkd+BjGFjvnx4niKmrV5NtvWHsTidOH9a2anAOeqCYhx2Tg8bCe3iSGE/HEiDC1n6f42OmIB1LlCzcvFZCg/gFU4kS3OYs7uGweGvTNNeKtTFsUU0c3nbpvyXzD0vLJ2RoPRq5b2+Eo3gEuuryM5sOy4U4C40o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762312194; c=relaxed/simple;
	bh=PhzDlwPKq/0KjRE8B+PgJIQKToReWsU71So/Q9jqpKo=;
	h=To:Subject:From:Message-Id:Date; b=R6qB9nb9g8nF4cT7RPpuQmXZlHZI1Yy3AU95Wz7HhlYvv2nGUgTgXh3FpGFIqfNFaS0MmVZJm/HLehvdmcgJoiYBhzJH3SIAnIGuO+HLLcRDQ/rJUsB4NZjNu+miT3+JVJLjA/yUs0SkBXcOh16qEIOEjJA1huR8n9zS8l5bFIk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IwzdIrDm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IwzdIrDm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3A83C116B1
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762312193;
	bh=PhzDlwPKq/0KjRE8B+PgJIQKToReWsU71So/Q9jqpKo=;
	h=To:Subject:From:Date:From;
	b=IwzdIrDmymS2WJyxrieGiDsAHol7zKaRZ9aySRn2m96wHg9a7zEL/zXm2LI4qSYQ+
	 t9RQ61pLLJ6eUyFmAZ7tB4NkoaSp1adRtoefvFfYPtvBGTKSXuwdcONub7Ml0ZtoQD
	 9FPzpIGpvzHZcTbGs6RiM+3Tak6m1YDKdkaLOk1Ug9Ngav2N+769ZhMX8rWVfKgv9g
	 gHNsNK81x/rg15Mu5TTEJifnT9LwjEkW4szPkglKMkXktmoyaZPzN2SbvoV1OWnW89
	 c2Fp/Kpmsr38Su7H7lcspkzsxO1SsIeDONNzhPWXRh7X0dnxHizfDEAqqPUVn8HFd3
	 SRp8t1D22N27A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94CC8CCFA15
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176231219358.17624.17222295421649221141.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16851720e30fd54feb461ffb3739cfd9b683a30d317d3de2547b5cb51e5805ff
Date: Wed, 05 Nov 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762312193
