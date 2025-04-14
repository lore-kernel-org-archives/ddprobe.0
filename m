Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E5464A06
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744589994; cv=none; b=AG4TqffOFbUGXF0jQERc47YkwPOHdRUSQx/9MryLJxeXbtYwe4tZYW1/9PCQizPiZWyMLwpLxdKuwgCijz2X2so57PRrrJOF+vX1WaiulhVWOhh9hZcVbsBIEVxlYl/DVini/kGs0d7oTeJ8wEL4Y6B841TNTwhchHLWjWdSvmA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744589994; c=relaxed/simple;
	bh=DuYKn8zD7mVkOoNEc9ExuV6bxPvsonBjU3iXwaiITVc=;
	h=To:Subject:From:Message-Id:Date; b=TuARLT9x9wDztO2tdtgHA2/W79PZQMvVX/xvuCNCqgiq1ooK3i7tPXQoyFbfzSqFe4pn8ROT/J6N0GeWqUc7fkepFNJzU/kUz/OhU0yXYqqQdELxs3HTEv+wuWkCqgcSieDskjeCpHelmoGPynjjIi9NPRbE90m2uZeEqdetNGs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ELUXsiwx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ELUXsiwx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A94AFC4CEDD
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744589993;
	bh=DuYKn8zD7mVkOoNEc9ExuV6bxPvsonBjU3iXwaiITVc=;
	h=To:Subject:From:Date:From;
	b=ELUXsiwxf+ROoobCX2Ko0dNjTLYy6Iws6EG0yzTLMpkWW6Q5mh9wBTnAhClmJjwx1
	 8fWatOzONgKc8ULX0OyOs5zMtMEXrZt01EGbFP7Aera7eUk6MnR46dv0V+4b5tiqQK
	 kWtNsKeQEgwxUPV5OkCXtgdRt96jhTg5KdmKWme1Udc1kkDnL9/hFySpZwNGgszyBF
	 EtBGovCP6dpSJJXSI6fypmWiyYzpONCIzVawjxRhfp6EngVLqMLL5i8AlVa6HiqxEL
	 B96Zu9mJjNACffCDX8Dqu5ff7pB0DQZ7fHbdpOoCuAG3l3czniGS07FQYnAEUujuPt
	 Acbn0MQ+S7lhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92A15C3601E
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174458999357.10941.8679904394443852254.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61a285b4ca5acf0cfb60104a3024af242e865485a6b480db7ee3a662460c140a
Date: Mon, 14 Apr 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744589993
