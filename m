Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F2E0195811
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 01:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773365094; cv=none; b=qPquXXPYBLPHiAYa5/9id50sA/pVSRweKUxrelLdkcBks6BGNhMUhml11nWbvR4K0sL543MhudecqKpJsMFBVRiiqokN03zCaqjx4t9KtV2WEOojNej9WLYC8Gsv0C5lR+T+2TEVwVdz09vHEuDOjoBilvGNqfQZNpNdMUfKI8I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773365094; c=relaxed/simple;
	bh=b55rnP9qwmvKSMZ6Wfq6ITO1IgkWZhV6rsVVek9+vIg=;
	h=To:Subject:From:Message-Id:Date; b=bxQo3jVCtRCK+Kakl2iijjjwirC0ozXWzXb6Nx20RKLNgybrmSWbFinAB3yv+fsG5XJIM5NkwVyff2yJ1svzkW3AWIIHCylbBSKSu8YD1AVJcrF8e8ZcD/P/TPNgPZGQboIO2HynPG6sldIxZ8JGvTt5B7JRA2FDhZruJy3TPKs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YHx5Me60; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YHx5Me60"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DBC1C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 01:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773365093;
	bh=b55rnP9qwmvKSMZ6Wfq6ITO1IgkWZhV6rsVVek9+vIg=;
	h=To:Subject:From:Date:From;
	b=YHx5Me60cmygrPycYfw9j5DNHIB7C45RtFJIoC0RXaHZimFT4oryD2PcC6J7q4ZUC
	 GsBMDro9ItcKe4M06CEy4b4gcOFZC27Uk3Zh8uF1ddqu7ibebT7UfLqtse3NDko0oI
	 R7enJG2PsGS9GzvYrQ8BIMKhEbcPYpybEmonLN5WbMQdgLyzuSU6LAdLDnNRyK14s7
	 BIgfqK4n9dK5u55kBCi8sDp9OVzXbwDk3rLROYXSoHP0fk65hlN2fnWs7vMRwIVilf
	 GXwhjBoPfNF8eRGVTZMltXjPXEeAGCOiyJM4wjNFNmSzsVbMS0LQUZwzAQ4XAPNyqV
	 wIRULNWB8XJqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F647106FD60
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 01:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177336509357.31687.9259511942050775824.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2ba1a415f3b493ea9818e669353c99f2740dda861f5140378b3fa8d4381f09e
Date: Fri, 13 Mar 2026 01:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773365093
