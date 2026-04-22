Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B16E02E8B8A
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 01:57:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776823054; cv=none; b=q2pQT/+Wi3ePCNqxek9jiFDigy9Qmln7rldqn+lSP64KEMVy2jSkedamnBEJkO8Yfl1OjkBu/q/RxszdxuUjeFmQ//yDuryH9/hH86iV/ZGzzSAKtTyhINafnNwPgt0vRYjDvQLcdP4AdeFfmE844S0Ukhzfh3h11XUS2orU0Zg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776823054; c=relaxed/simple;
	bh=mde6M0eNNDNXwl2Y9QlZiQtXBJzBSqDwYoV348lfRfU=;
	h=To:Subject:From:Message-Id:Date; b=ZdQuAY0MBnD5p+rw9c8ouS0fa/z8P2Ttl7UQ1J0pN57KNWRrmTMmwQM6OoN5/UjedmOG+YQx5uX4HC5oMgPoeaBQKwf7OA5JPog/VWu6dzu+uU+owYAbzFxID5uLI3Jt+/rDZyt1suCwKbN+b2XD3yudJnIhLugCDWAzeGSZfOU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZLnvnKjT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZLnvnKjT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 026B8C2BCF6
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 01:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776823054;
	bh=mde6M0eNNDNXwl2Y9QlZiQtXBJzBSqDwYoV348lfRfU=;
	h=To:Subject:From:Date:From;
	b=ZLnvnKjTwI5aZpq2a2MgiQr+o+qOyM3iTz81jicLnm4nbVppCvnA5aafWHhH4r8I3
	 xZRUMqIcTfRWgwkhjb6CbucE81FwZ8tsI6KHTjhPa7fh7+9Li9VouiEaH2lDk9+XE1
	 ne9ySmQuz6RapRt/tPpE53HWAfNGyG8bEMT6PR61Us/wy7kOeBWQJAPjJhpJbLMrD5
	 L/wDS/NtmNE8/9p9s+o3xFC+J14RJAwmqdaZttp3cBeBf3NaJR1E1SCQxIDY2U0Ih7
	 61nnfquyRFlW/apDHdUwpfjyDzIY45irclbP5JFyHVgrjmJCwTLQPB14sp7YPXQcNv
	 HXBl17H9E0bag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFEDCF94CBC
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 01:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177682305371.8207.10301811076396764765.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0bae91b142b02b90826881b1a29581b3d8316809c48518b18011da044021a00c
Date: Wed, 22 Apr 2026 01:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776823053
