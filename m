Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E3BF154BF0
	for <ddprobe@lists.linux.dev>; Mon, 16 Dec 2024 05:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734326154; cv=none; b=GlCfOWkJZaIHhCKnpWcvX5aH6RpqVZSwjT389LErcm4t+aahzSL5sOajAng3MsmEtnlML04zDunWjj+E6DVE5Fk3CnJMv0G7l2CaVRYa+sEzEJNbU9GYnH740xYcGcg8QlnV05pitghxV0hVnTqbOHnZ+kMqCBvEgNVFoqcnm+c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734326154; c=relaxed/simple;
	bh=fefU86wHJiR1ny/A/lpnuhdBm7xmAcm6W/aIKy2jGXg=;
	h=To:Subject:From:Message-Id:Date; b=JmegS3DCs/H7qKkPGh2RD4qi0SRlRmx2Ebxy3rbaZBNvSqdcLDjPIn/tM4+xXy/zxFPxLRPsQ9SrmpqFIXP+oqPoUrf3eDQKuW0IaLpVYDKcFX2ZRkKEGY6AmNDX431KUZVmzCQ+NyxvyAah/lppPxJ0zDVJo7Pt9l3hEK0wQ0Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B2RdllTL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B2RdllTL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3123C4CED0
	for <ddprobe@lists.linux.dev>; Mon, 16 Dec 2024 05:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734326153;
	bh=fefU86wHJiR1ny/A/lpnuhdBm7xmAcm6W/aIKy2jGXg=;
	h=To:Subject:From:Date:From;
	b=B2RdllTLmuvU0aWvqycB2FXCWjyxhit0G/Pui0RQAGvog/fWJ6qcImYniwhT/5ZzK
	 SYorJwS3k+2LJN9hkAIwt0H4Jr2NMW0FlCRNmCGLzqRhqsLtA5AHOzTqq7BWD0uVWh
	 XHZZuPW3UtLAH2od2gaRyW2t1J1AUK72WRr3n92zSVH5o/itWW5OVqxaZxFhpXzyJ3
	 I6CmJnP0HYN1zrEEf8U4j7ja9LfNhgCsijx4kQRDnf9FLq7zkSfeymQZm6akCKvQc8
	 z+aZttctBFtBt31GhfYHTcW3j3SJLBCvqwpf5l948pEXRZK9sFBrhtNVK+ODZClpCD
	 UxoGFsaU8tx2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC3BE7717F
	for <ddprobe@lists.linux.dev>; Mon, 16 Dec 2024 05:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173432615358.1263.8933324761179958464.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0770521f0f7e17a0b8ed8b2ccab102e05b5c1a66677a5eb9d315764e2ee6dc6
Date: Mon, 16 Dec 2024 05:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734326153
