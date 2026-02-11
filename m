Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 420682FF177
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 19:24:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770837894; cv=none; b=kDS/tBGAIYBxfezqzbNnyt5hCgXQq2DGNzZ8AzY+kVLUEokSBoFeaoLt8F3xRfMRqMzmgmzrcYOfycwTn6d/MGJCbbR6F78puoQC5LMPBcEplvUdad+sXR2AJ9JVx41pNXQd1GFejpRBdXGG4nhHuol+1RPNA51qGJMqhLQIQBw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770837894; c=relaxed/simple;
	bh=sy/vxDn6zBBSbrU0Lfr+Z5dZPO099wxWGWGJPpUtJ7Y=;
	h=To:Subject:From:Message-Id:Date; b=FAVf1oj0Qw2hRwp50h62XlrsMJTtKdngtggFGhNtQg2Al1dGb/3nteFis4LLZPzpqNXzCi+WS427BNBfuoVm7N76ZTsF33Qdlki+9GXbAsVwtQVyaMFN/K6IAD6T5bC4ndpV6//V3k1dYu9qiAfbN18lefMJfHzUj6Y7LvnEtZM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R4+KlYLw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R4+KlYLw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E8F44C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 19:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770837893;
	bh=sy/vxDn6zBBSbrU0Lfr+Z5dZPO099wxWGWGJPpUtJ7Y=;
	h=To:Subject:From:Date:From;
	b=R4+KlYLwjUJUYDUnsn0ACYhri/hErbmSGZanuI2Tx4yBAB73xnDrazjTehfrQx+dB
	 1pEI/jMsRsLtJ5e1jsJD7bmBtVHsMPDCs+gX6vyNj+7oWWTE81II8iU1uJO4zYNmum
	 jaQrMR99FAhwZ+/uEY4yRQNwxCXdh6XxKHMp5ytCgCgBUmdmCWa1UcgP64J/ytEzPu
	 7fzknGdcjPmQSip5BMt5JA1s7BP86MozYM2vIJmim/j/gl6I/qus0M3Hiw/i20NtJz
	 sH0hvSMrZflMzF1cDFzvkEY78BerJi2ozOnLwgcT3IRGECBwFh2Ja/OsXpX4P9sdVO
	 pmU6GxbcZO2QA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4D49ECD6DA
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 19:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177083789378.27887.6162516334531637301.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f217dac04b97475cd0476d7130cbde08959ad24fc16020ce61192f0ddc6b5de
Date: Wed, 11 Feb 2026 19:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770837893
