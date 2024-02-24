Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ECBA046521
	for <ddprobe@lists.linux.dev>; Sat, 24 Feb 2024 15:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708789697; cv=none; b=rJfKeENjGza+KONnwI8LxhmZ0N54hmy73pOv6s+xdEaTd9KrAn+f+QgDIDmmyxaSdgelYcNWn1eY4nHez577nNjR20zXcJVPWQSpNDJFhfaXsNIrOUncZLhv4gcRaqilm4mcWaX51W9ZWEwvtv3FTDtLSN0FKB/wP8tCh/V17dM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708789697; c=relaxed/simple;
	bh=JfqTWElbddMP0ptAkVWPSp2gIeWJkvB5ysFg9tAdx0M=;
	h=To:Subject:From:Message-Id:Date; b=d/hpixu0wde9h8XVluQu8FXEpcWVI9ZTwzoUJAki51vCfu5iSRArjITL6EfKSkcrd8YAtpp0exhnaNBrIlXwUvXoN1uJKcJoMzCoEVMLMgnnpbnMHQ8AXQ3bkp3arTBBPlXewKTk5xuG00ZWBOUcLq0kbs9ulZnwTjRtMiPPuYE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qkO4Zmyv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qkO4Zmyv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F1CBC433C7
	for <ddprobe@lists.linux.dev>; Sat, 24 Feb 2024 15:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708789696;
	bh=JfqTWElbddMP0ptAkVWPSp2gIeWJkvB5ysFg9tAdx0M=;
	h=To:Subject:From:Date:From;
	b=qkO4Zmyvz2WGF23F9/6bx8qoXCWcb1UwkX4zUgJ4iE+3gmFFavcpPG2UuvQ45Z8Zs
	 uaVV5fHtxz8KdV2gPyCoPnNCa2sy6I2wi3ymF6D8KH3zXEkn8MXtkY9RDdiCa/4QKR
	 Z8ws/46D4u11KrzSjy1qe45S4BpKutvarnqW5nzXHVcxf8Jd0im1fHgOAxUzHa2AI2
	 4F83t3i9oiUpRF6f+RIPQ4840LOLnkEPrivOi/8guD/1f7k4bR81n3Az/SmDNt5+II
	 EBzdbjpq6ScEgFoR3eNei8KDeN/BF968vHqnQ1igSl0i+L+TUs6IQlcimfNrop8sSg
	 S7APlusr1IxQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6589CC48BF6
	for <ddprobe@lists.linux.dev>; Sat, 24 Feb 2024 15:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170878969638.15622.7138159576771001648.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49b84e5d84805e24291ed6ef706a821e4ccebe7e91aafcb7a2dc22a67f471f0f
Date: Sat, 24 Feb 2024 15:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708789696
