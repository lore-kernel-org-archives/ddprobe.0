Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 83EB340DFB6
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 00:15:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775607334; cv=none; b=gX3SvBLVF9xlRLgkf8dbIEmh1XJG7Cp359QPefBlEvjxzTV7IS5UvKqwGHagldo8SI0fsnYwFRBeQl8UpILu1VkXmjzjDTZ7HOFeWa2VfrzvxswNK5NUJdtMJtKD9SrUYzAMVAFSMq08vfV3Hqeo+LbGQiVt09CoXkG78k3237c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775607334; c=relaxed/simple;
	bh=8Z+p8UvKNyjhFaN7jlzui1SytbJlwdEREytE9I3Se+I=;
	h=To:Subject:From:Message-Id:Date; b=euQmsl5A8l9xMfAAINl2XcU4Sz1Zdc5ElPjyvZ7+C6P28/V77Xf4d0iMGXybXQ97KUSQ7/8bwwvnrtoy5W497qx5GLMzWmdX59CF3As1pCXX8D/RN2bFk+dYfF3Dc6rNm5sc4oGhPKvqn7wOM8c/qQS7o9neAQKoLgy5bXb/0mA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VnZMSLMy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VnZMSLMy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 2F8F9C116C6
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 00:15:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775607334;
	bh=8Z+p8UvKNyjhFaN7jlzui1SytbJlwdEREytE9I3Se+I=;
	h=To:Subject:From:Date:From;
	b=VnZMSLMy1O2Jj1UPSqWJWJpmnsUFd7zHbTp41lgEIoEW5q2q/AdGHhvjwGgnSu+Br
	 ES194jeqzgUGXRWwb6eZqk+jW8wJhS4v4RRR9SbetfdYIjh3c+m4EmUgFudS+qP89q
	 +5amHQ7EdpRkseHnwNWvV9HjD+fzcimInV8jq3jTRHWbTa3uPZySLRzHSoMlcG2vXh
	 bbsZC9hX/yI7NsR/uftR49GSjIbzMA7cg5IKyrJRfRdtSGJ+xE8PzYOdZxR6jsM/Ep
	 6MztIHQDVUfP9yUhl+AD/w1uPlUKAzxipNkMYhUqKidIDkTWxz27BXMNU8JMsM5BMk
	 SwvE8q6wC7S/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F001DEDB7D0
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 00:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177560733392.1621.5475349409504160886.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c04f8905e03d2fd8c604c8d221ac1ee4db9f835c6c195caa84a9189a3e9b1a8d
Date: Wed, 08 Apr 2026 00:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775607333
