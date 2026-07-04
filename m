Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 451412848A7
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 16:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783183114; cv=none; b=B7IoDwB5RDtPEe//YfesA9yKmE9Wst1diKGJINujEZCC6j3Fu3yI7WrgS6j1xKxfQa63FHpjaD6RjG4HHVhRCvYku2jwFKt8R/E4jdaPWRRr1kE1hc3+VNtADWXIAiPpaDIcQxMHwQIM7BwtXhtOWVH82lrtcLHOkFRwbX13Lro=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783183114; c=relaxed/simple;
	bh=E099XQl7JRioY+V8KXdm7AHsrNjW4aib8e4IZkGmUz4=;
	h=To:Subject:From:Message-Id:Date; b=n9HDuqnFnLZnc66TNOHBqtH+BH94SQM8ZYJ1EO6dUID0QHl3xsnt9Ye8BjrEjdEEGrEAS6KcvEisTPnhQ24ngPgRkLC+x6sAeWGw+OOhS6H81hYLeypdHdRPj0VsIx0OudH4OTTQMhCuItg7aTVy5MfhlFqKl4Uu6Vc4WJ6EdrI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EdoND/di; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EdoND/di"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6F64C19425
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 16:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783183113;
	bh=E099XQl7JRioY+V8KXdm7AHsrNjW4aib8e4IZkGmUz4=;
	h=To:Subject:From:Date:From;
	b=EdoND/di/QTkwkNnwoRX2srw3/Jr0RzEe2uJygiAp2SExnAs7COI1whegkj9PTWQL
	 KJIcPAKxZU2q9RlClkf1mrAwMmSrXJiPln4xrArOdkfQZfjk5KIvO01SyQjEx425WC
	 jhjUzC+wnwl33DzyJLwyYiGR/Qdr9an5bXHwId+T2bAWsEbXugkADMSfpqLQx9Sh08
	 vBTCzeY7m3uLQyfxNmZJTsY1kKe8FWpWdYGrqQvl6dLPvHvy7bYLvtpH/RoFqUN3Z+
	 zAsaB0hmLkvUYZy/tG6D7BoL2CHm3MHRGZmLK97Lzr2Ln2m6KFMlNFWqrj3CnPlnSj
	 hLqMCyq2Wg3zA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABC63C43458
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 16:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178318311368.12554.6126509060439274183.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6bbc1a5886b65c2dfac2eb6bbdaaf36b3abce97d248f7e341ca707c9cfd45445
Date: Sat, 04 Jul 2026 16:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783183113
