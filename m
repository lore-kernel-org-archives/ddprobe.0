Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3456130D3F5
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 23:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782604714; cv=none; b=eEuPg98BPdql/UvPT96x0X6ovldSwW3RmZxm5A9uxwPwsnLyv8jy0/FzgCCH1ivz4H5vZkk+WYxG4QKoz1hYuLp0tayE+t1drDudaIBAUoC7rxHwUibfvNDNFVqyqRYciXRW1KtFSULB+HwvK9SdUlbLFM14IVo/+JIKHGfqFKo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782604714; c=relaxed/simple;
	bh=Haqj6Sn8zaJ9/gjrImEM8o9t2F8a8EmJt8RrtgxziR0=;
	h=To:Subject:From:Message-Id:Date; b=j/5orsgZJPne8CfEItHLRT1a/YQcAPTQzizGKj3loiaHrCxx2b1UsgqAWfvxPA62B4Jgt5rnlCjGQ10hHfaBy+Uvo1hS9FNjZ2+q0b7+dTt0vg9TBN4r4TjKSqE/yZYjqRobcYHSF4baC9wZgFLUne+3RMknz0TqbNnbmcBdCQg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O06DJEB6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O06DJEB6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2CD1C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 23:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782604713;
	bh=Haqj6Sn8zaJ9/gjrImEM8o9t2F8a8EmJt8RrtgxziR0=;
	h=To:Subject:From:Date:From;
	b=O06DJEB6wICUHgMqjCR6MXlXnkwZXB0P/ldjFySFzIp9s07WkQNNIodthc9l/LFmt
	 7O9PdrujB+TJmnS/x5ikrtkvQwCehWHTUr7pYQiIlbDmoco1JbklLnTj6jsmAwkQFK
	 a5jgbbf42vWhi9Tpb3i8vTwGZyIBGiehoj/ay2yUWxOnMtMrd4Ad6FEtmMjWP/nN7U
	 DwbUUIrkHg+K7VJXMLNlsVhKegq5cjrv+I7jQyJSfcyxS6mqFYqN8OTM4QT9j6BaiD
	 tpjtuhHFaqkJ7L42OLu/BLNFbPg42M8abUKftF7WZG6XUSinedRxJnxYmCF7yzY5V4
	 /GJ305SoaK6wA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4F25C43458
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 23:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178260471371.5873.7479158174741774167.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b63cd358e9334a84e1e06e7d26658b949656dc6812b13816822cf74f6bee069
Date: Sat, 27 Jun 2026 23:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782604713
