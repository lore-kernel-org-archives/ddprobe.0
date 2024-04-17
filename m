Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F5751E484
	for <ddprobe@lists.linux.dev>; Wed, 17 Apr 2024 22:19:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713392363; cv=none; b=dffwaJsw1JbSJ4VLTJgY9VsV5qeE3jRfNZFGyhIF4kWIsjYXm0rgSR8RXN5JIYVB0qekrviyPDmW/ffdWdz8QHLBD5hAc1BDsFa7+km464wkYoQyIr7xAAyqFqQa3FQ8O8ELC1tA7uExM4XZCI64zV5aElX/uY6N0yOGT5X/e3U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713392363; c=relaxed/simple;
	bh=33PA+sV2j4Lz9DubxsBkYfkTY7J9IVVHORVX/htxoPA=;
	h=To:Subject:From:Message-Id:Date; b=ge3lDkRDUzst/5q8UAISdWZQaj2aK9ZTS8f4NjeAUKjQEVKuhyBP8Lp1odujIlrB9RBk63zctPQ3zFhGeoZ1/FM/7xSWKgFp047ADvmqqoJ8BurrHbDyIDu8GYFxaCJ1zWTE8Lsa4DcOc/Vx94DdcP3d1jJerlYR4rfDr+mbcds=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bBkItfPe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bBkItfPe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EFF71C072AA
	for <ddprobe@lists.linux.dev>; Wed, 17 Apr 2024 22:19:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713392363;
	bh=33PA+sV2j4Lz9DubxsBkYfkTY7J9IVVHORVX/htxoPA=;
	h=To:Subject:From:Date:From;
	b=bBkItfPe5AJ2IEt/1MaQAUp0oPBK1sEenrriv2vTaNmL0zzZFdbGQUMfTF2Hjd951
	 KO01ccnRtsHrOiW4z0WiEHNHqLOP+iAZFRoSnpCoGVzvBu/qEYXHyh952B9WhXqKoz
	 MuDCUuqiMwZrxJLe4zZGXrB+GFdEYHBsNUVtoa2JBnzvgdWQBX4TSHes7QFPRf8yHA
	 Fbdba/MWpQdkGrklAbiXNZFmx7MvNMFdZB5JMk03Q6rUXkJa+STKvoW+j7mchzfMgh
	 8GpczyoIWGN7MEmiqO/ORHnGnClaQv3xIxAVDnUNpXgH3giDQGfG+ffG7w9NzGtS7W
	 4qnkFTxFGUI6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D4158C4345F
	for <ddprobe@lists.linux.dev>; Wed, 17 Apr 2024 22:19:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171339236282.28242.3148704853881258080.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 063a24c129c55d0c65add0674f7c4f254695ee91037e0d529a471deca3e0fcee
Date: Wed, 17 Apr 2024 22:19:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713392362
