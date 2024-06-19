Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5216E77F2C
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 08:29:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718785763; cv=none; b=HzBtD8fcxTyhlpx7S1TxvBf7F35oC+ZlKks/TtaIGverAlu2w43HBkZ/JCi08651e94HrxTryscdVn/iIWd98VVtLXpBtG+pfLpbQlJ6v3fV1lVBBskNJNZ0u5dYxML8slgvvfmerPXj1YTvU0b237NrvAXHxPxH5MA8PMzj7Rw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718785763; c=relaxed/simple;
	bh=2mubQwtaQ2jDCTp6sDCzanVa/jmIgrvMnNackz90wBA=;
	h=To:Subject:From:Message-Id:Date; b=tJQfQEzGdDLG3boh+Ewd7ygzLGgHByTB5CHOfVjjWG6aIRQVpWuIQrDOTW7xX8yoeYZdMz/ipU8KhP4MhRbSrSx5hqyL1gQZ4NlggQNnpu+tmvbRBh1WsgP+7Rjnxf5jwdUGdnC8//raQpWuqOc9/VP8FhFYqUrRnl9TFBnrMP4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uTHpdvaZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uTHpdvaZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF654C2BBFC
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 08:29:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718785762;
	bh=2mubQwtaQ2jDCTp6sDCzanVa/jmIgrvMnNackz90wBA=;
	h=To:Subject:From:Date:From;
	b=uTHpdvaZGoEAyswyC3IxXnzA2qVKY5etGUjSH9LB2fUJ6SAkDsGNPqDQ83G02n3zl
	 UfODDP49O/bMQsMOl/a4BjVhQhncsrIVSBO+tA8mxMrPE/reENN2suKr5aU0aiK5PH
	 bvWMhKC2dm/k1QrTCK7KRSjzejBXVPp5Pfi2dd55dgU1mWHpvFa9p4cHmkn6RQ12eG
	 oTrwtWDE5VwYlYr623tAnNV9sxImq0QXXjLn/tinOmHiG9OCKEP0MyBtpsXaU85p6Z
	 BAicE6v41AUERDtZ/MvWf0yYDsmhuNy8M1xdsU+cJrocOWTeW6Wqa5rKu8DmM7XcU1
	 8FIQmtl7I2vAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9701C27C53
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 08:29:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171878576278.29456.5709343935006380889.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d50d88d7281861a633aad035a6b46ab8f0c733ba99f7c912bed105dc0ce6161
Date: Wed, 19 Jun 2024 08:29:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718785762
