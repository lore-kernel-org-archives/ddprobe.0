Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34E89EEBA
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749775194; cv=none; b=ug4xrj4r9eSszf/CQ3KU9nMAJzqdGWnCjH1sgTPSBk0SchU+2a33lne5s3/rfFi1trninXdtj2hRxKWpyVHz/2f2/AOGKdZGvthIl0vBL1dhdjZC1go7fwTw9IAdGmPPgqVAh7gT2RITBJ8kv87ZMbd2YL4rpYz1rKeuLsCAaS4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749775194; c=relaxed/simple;
	bh=L4lYQjvC3XyIsWCaNOmcip6pKxNWx7pCn9LZuzqM+Ec=;
	h=To:Subject:From:Message-Id:Date; b=ICHR5xbWVQQPa6+9wCNLoZkGaIb+YJ6aGvcnebAQ7TCTTBP9FIWVJ5bZCX/4pgmoJ5qWAVBLst5IOz1ulUPpYxVIJTSiFkevpgAhyD2IqSQ/XvTgrQyGGi5HHiUhPKXllwR3FPY4vYov6zLVBL3WufbJUUQB6YtbMKehZlRQbgQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m6pJr4YY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m6pJr4YY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACE79C4CEEA
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749775193;
	bh=L4lYQjvC3XyIsWCaNOmcip6pKxNWx7pCn9LZuzqM+Ec=;
	h=To:Subject:From:Date:From;
	b=m6pJr4YYLQWEqStKOualxV3h91C6KKRdBkD8thABJRMA3okC1YtkXM1eDRoiPrhFg
	 giN5tu1kXg7Fy7d+gvL7B/Sk5jA8pVdgbT5YULoFHah0VNC+YmFEeNaoseZpieO9cg
	 +kg5kxIy8gKn2nR95fk+v9uXLX016Au0fqi/1ku/UJqKQTXyjfK3Its3/7LCuCTV/E
	 lvW+8xIGgraL6ocOorqFvCaYmqXrdCBmy0wM3stkz+ItefuwEXuEGDAh8BsqU7xjOZ
	 QrXCqKzvTwc15muCktPsALwXJ12T49QU9LaSeKvW5nEJbAp0HsAWjR+0H7pC4DKq+Z
	 nD5r9V52o8KvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97A9FC71136
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174977519361.17875.7591919573452892858.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79acf47a33017748a0b20ab1f121fd2de895eee5a8ab2c1c1e67fcd99c06ed27
Date: Fri, 13 Jun 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749775193
