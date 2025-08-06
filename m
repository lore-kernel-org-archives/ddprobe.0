Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41CDD1922C0
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754475594; cv=none; b=TtS6rRmeBaAlqmWK5CjyhtEdfWgDQXOpRLSgMFaeFHoo57qSoMhXiW+urO2EAxRym/Y+lAWRqGrM86NGcyDq8hyIQ4ACb6rzow2pwq3wS1g6H/qvtcgm4UW1lqahQHW/qN0UOb0UyQTs5aWlCALQnN3X/i29wL8VMWBTpRCd7P4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754475594; c=relaxed/simple;
	bh=tLYdhzgtn6jpkGQnwwGn171XhrFzJle+hH+2wQpJljY=;
	h=To:Subject:From:Message-Id:Date; b=BC7FpwUqRpcMvvkTgXqTF9ASvv8l8MMzA+4Td11+O0gXa2ULzJmskOo9EbeUvtLx4RvI//FGDVfe5qeUOJf3dRxqlahNX3nNE+lTpdS3hz+6gy79+tugPdYwRKGaL33v5+etgzAoRno5+VSrXivn6qn+pfObxg1wqkO11ft/xjI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p2KXCux5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p2KXCux5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4DCFC4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754475593;
	bh=tLYdhzgtn6jpkGQnwwGn171XhrFzJle+hH+2wQpJljY=;
	h=To:Subject:From:Date:From;
	b=p2KXCux5LL2CLDuqQ7lBVa+G5OnpL2Ykt+qpst3MyGJNGw/0N+36/mKdzbAddPMbj
	 o+JTv3IgN4dQMzqRmlYLxYMGrt2C4OHBkCvrDt05zOdKvTMwIyI/4lE63OQf3XwWcB
	 +XJj8BdCPbRBBLiBn+SVzu3QdttMVMwHZTscVWQLIRcw20d737OfzYQR8s7wQdm0CZ
	 zJ93NmJTQBqn6M9m6dIKY0T5qgOF94Pvk74AnVlv7qdwrylqtrmdZ2Cyim8sMqaNow
	 f1csTLqAG0oZKVVM4YPrq7mq390wb0e/Auc19NiiVu60KCjmqKVQ8dIrq+fRWdQjqw
	 lYmgw0dPa/6HQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 944F6C87FD1
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175447559357.17604.4229722381437601287.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93faf8120659fbfd9ef0eeefcac7b1a93fd9cf6deb505a62dfc865841b9ae80f
Date: Wed, 06 Aug 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754475593
