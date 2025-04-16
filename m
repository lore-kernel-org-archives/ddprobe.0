Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 410C82DFA49
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744775394; cv=none; b=THIj+Q+uWFSFYLZY9c5ZrHiV2lc9MzELMzuFtgKVvgGmEwCdkQcZ3UY+Z8kwK5WImdg38y1fPiY5jTUJ34wqRokh/TFkohIZljI+HeJ8qNhuw/b2UPjlqhEqsIGY3meNWxVhBSlqBp1+7H3iw7AcKyR6X5ykdVLWU4MibToFZgM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744775394; c=relaxed/simple;
	bh=esuDtGo0yZbz4rgSkmzvy+tw+aBv/h5QXbrPhPgFwtw=;
	h=To:Subject:From:Message-Id:Date; b=hplzN9VSQLVuSNrwiJ2pxf0AiJrK6V6e1Q0FkHcLU5L1pGsmxVFYb1zo2dLMns7beJX/CHv7qvX7x1EMMD2ib37acd5pk6J2oN1RHg5nvmgdV+2V92/rFa1bSTN1JB7MXUHVg3YpRepNW7S5IYi9ek8xQDt6o/eP2QQsU8UJugA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lF2Pnee4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lF2Pnee4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B247BC4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744775393;
	bh=esuDtGo0yZbz4rgSkmzvy+tw+aBv/h5QXbrPhPgFwtw=;
	h=To:Subject:From:Date:From;
	b=lF2Pnee41+2WtqdxDlabdye/0pthQ/xnfp8MmxYXK9qroKwFJJYOMa7KJmj30aJAE
	 iUYZWcNcsG8ftG7woa+T71VCuZPOJ46g3l7jpIfoKCEupWe0upzJJGlBKs7E0e5gN5
	 lrQOQdn5AvxuLLazks3i1QAM5GkC/qGJqSnyC59bUzHVtBwpl2EKqic//JfKtrqULQ
	 Lpn1ceDCnyfdY7VT5aQsGyeEKIH5NQnWarwWQ8zDREOKFwT+/q0x1m9i4jLAdoH/n5
	 m2Um8bS2i2SCBRWGnTLwH9Q8tBIkGbmoKcNNidv7uiwh2HyzluoexIIh2IyEkkpp7G
	 dSpCHgJjXbAsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D711C369B1
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174477539361.9992.13081726342994630827.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: afd5e9d38c046b138fe0b22a60be9204bd1ef554055b9ab62f73b1758b84023a
Date: Wed, 16 Apr 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744775393
