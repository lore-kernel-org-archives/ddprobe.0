Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C3CD22126C
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760924394; cv=none; b=PnbDMJEu8yYIhqogwSWMNr7aTsLTAs9JLbZJijJy4ikq2Ljt9HRPVLjehiBkHbWFd2sOSu3OOfI9YA5yQF6OTmcPnhel25ySkOuhoqGa5zjQQeJIoKjPM3pi6QLVq/OJMotLWw/j2oQoNcdCiAIze6WUV8BwY3PxC9JUj2hnms0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760924394; c=relaxed/simple;
	bh=BxGOBwjimz9kl9qnK5Y8cxA1+9Jie9YcL/fyHDjFMY0=;
	h=To:Subject:From:Message-Id:Date; b=atBXOdAICKpiqpJ44YJ2Ns3fZw5zCZo0xU6EPMMtVeRhlrxBf/NcA4GncUoDZ1cuK956nn2FZv8mY1eanLHojMGhyPVxVinZD3ZlxqzJlIsNp/ttiw/abirR6ksG7o5riO8rp/dRljLSp9dgff/QDbxfB8SDqxG4z4nrlrtHN3o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XM2PgzjS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XM2PgzjS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A88A0C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760924393;
	bh=BxGOBwjimz9kl9qnK5Y8cxA1+9Jie9YcL/fyHDjFMY0=;
	h=To:Subject:From:Date:From;
	b=XM2PgzjSOro/vYp/qyNqYpz5MfFzjOCMTuf6OgQhKTHMJ+I3Va46mFtpMmfVMzowE
	 XT0Z5Yklv75VLwsZCclhQCkSgUFWdeCrYDjNIpO1x1hUfrU7IRBDpe+jaz7JoWzbus
	 ZCZxAW5K1XXdTpyqHaoTuLKOWIPCuXboq+t3ZoIAWcx6nOZxYaNs7Wqd5q6NTTw5yt
	 ikjZfNPKYidVJuohnmPyX8AVBLNntzD1x7RSumMo6oRUCTpg10Cwbv4xRGYCYIkV3a
	 SZYMTeZs9a5ZQ4+WbKdlPZXzCvfgFz23aUUo0oWYUWvSRS5rOmwxNy66nPwzxeK3/4
	 4nsa3O6MURWiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96BC5CCD184
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176092439360.23770.969816156101035585.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e966fa6065c1669f5bbc389531709d9300428f0e359635c7b2a5146ebd63b24
Date: Mon, 20 Oct 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760924393
