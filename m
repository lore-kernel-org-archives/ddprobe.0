Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 438F21E50B
	for <ddprobe@lists.linux.dev>; Wed,  5 Mar 2025 00:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741135734; cv=none; b=uil8wswxgKqAGkq/coV4HRwvbhqYRdmh/tPtvMXvKuT32gm8/aMBWhFHAoU3wBzqWKPhm63Zu8i3lX73x20RZRQ/DclEpZwe3jDmlJbT0W7aL7XEuCvz9cH99okHjiRlFyrw8CiIU3qB1SB2SOqwpTq9gYl+nZc/QP5E6JMGXF0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741135734; c=relaxed/simple;
	bh=uzVv49QgXlqjalpzJMtCm5VvCa97LbNkaADLwQx79dQ=;
	h=To:Subject:From:Message-Id:Date; b=ipMjmW06SlD57lA8oSRrdWNcSuKsaBUSqpW/LJMjEOiI1trxM1Ko/4iKJTrnWYDC+X2N0q9fX92+PxXW66AiTycX4Bzp0msTHr29Bvb5c3wWuUR2NpTwCCEkSf3TuqLu2zIoM3Qyu+97eLy8HzQTSZad5isoLGj/lFsv9NwVL8o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CBQFZJw+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CBQFZJw+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB9A2C4CEE5
	for <ddprobe@lists.linux.dev>; Wed,  5 Mar 2025 00:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741135733;
	bh=uzVv49QgXlqjalpzJMtCm5VvCa97LbNkaADLwQx79dQ=;
	h=To:Subject:From:Date:From;
	b=CBQFZJw+9klRvMa7Prep+aoPe56uOeE0Az4sFLaNz3oyRa4UcaC7kRAZFexY5LJ5n
	 jKdHSHkcwYW5OKS5I2h+NbzCE6O5yAU9qyFthxQIVoG+zL+5bAKsxUt1cLX7ILuB+X
	 C+npqQkk/YNe5C7vtQrQbAnHCS/XJZGnOWuve7vfWcpy+yU4zHYR4ik6XLgHLkjVtN
	 7VO0pPti0Mop1AhDYMRx7oy3SwcdnSWfJE27neHaw/gBhfQyIruI+RqsrAF1saEfcg
	 L32QLIbcVLOh/3LdZfd8gJywVo3Uu0frshIAr2KyY51I8QxFo8av5eT8Mx5gF4WvJW
	 gx9WabJ0jzNfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94D28C282D0
	for <ddprobe@lists.linux.dev>; Wed,  5 Mar 2025 00:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174113573360.23967.7216493570751274777.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9fab13f3b60d23e4202302da44fcd7c106b49dbcd2a7c937f9557d5485a4ae12
Date: Wed, 05 Mar 2025 00:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741135733
