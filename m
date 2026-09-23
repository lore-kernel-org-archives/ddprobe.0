Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D305522EF6
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 13:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790168434; cv=none; b=GnP07M/9kZcEZGlEK91JbzCiNjflnB7CEULrb+yeHJwpkbhZahnVhbfER1jx7JGrkjnFkxdA3YarR8vhf3YFz8uxMJNFttg1PPGqilh4Q9QCh5rWwB4IY9M7S663WMh96D26YXrMHVdbRMnV7s7ahEgEIL0QdvpFWmFP+ANkTQs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790168434; c=relaxed/simple;
	bh=cqogUAFdEkIEZUPzv0h+MyYKvJ1rtRf+GtrY3GirCOk=;
	h=To:Subject:From:Message-Id:Date; b=NyUKfPHHI2Z/oE86ZvPOcn2v5xV1ZR323yIi4q+ZnCLanwjUzPaN+JCooLDlq2nO3Uguy++Kj2VZVWe8MdBPRcYGiRurb3uGaQJjfGM8J6K0iAnHFk3JOMr0JSCZVFQSR0o1H0dl4CCqn7b/GDs1Nmsq7Fl+GqNerLtThO4vX/s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aNMQK9gs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aNMQK9gs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA895C2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 13:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790168433;
	bh=cqogUAFdEkIEZUPzv0h+MyYKvJ1rtRf+GtrY3GirCOk=;
	h=To:Subject:From:Date:From;
	b=aNMQK9gsxb4Nvj6rHhW4WUIagaUS8pJjEKOya5LlO5R9SkQtZ+gJud+mqpGL21ep/
	 JhqI2f+lxH6lquXmQgXv/peYrAEpBP6KIm3Rud/Z12L1PPX+ce+4d9SMo7Ts7EbVQp
	 Sd9wWzvMp3l3f+9EtI1wV0OQeanZ0Sl7rNgbUnKuJmfJHIwt8gHYr/nnKhs5muAN7f
	 WuH3V/5w833UP0hke7ciu8huHphQTYi+QFYKLVedRVVAtz9OL5q1HKV8td90A9IiLU
	 VbqdjsTv7qKKqGw8/3AiNIxGYQwSMQeJPiPDO00luqIQ9GQcquMj6CnDi0mlvUnjkm
	 v5O9DssmfUbUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3473C9830B
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 13:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179016843372.31834.5830246350861266368.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aaa835cd73d2040d80f16458e78142acf7f45268b7bb943773494ce4dfa2a873
Date: Wed, 23 Sep 2026 13:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790168433
