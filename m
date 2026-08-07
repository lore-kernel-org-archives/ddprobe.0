Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 954AC34B697
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 05:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786079434; cv=none; b=s3Q1+YT+G3zkXyFVklH7Ql8jtbZblc1YetGOSh6fCtjr3w0IJkecZSuz5bFjwFBJGXfyFgcNc29Z+6tKgE15aJoQ+6k8frRuhlboE6nPfuCCJvdwc01p1+WHqjbUp3yeJ5kegG45wmm0jcycf4Y+b7gilILgeU9qWOSb9MbU3r4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786079434; c=relaxed/simple;
	bh=Yb+FMrSrWea5uhg6VzneeLd8P9pjmFBxjkKJfry1zdY=;
	h=To:Subject:From:Message-Id:Date; b=IwObsppcbtBAebpWwQW46rhRTyk7eFcbQcjUeYBsnemFj2dqYbeVndUYZ2kAK4edBiWaERWmzfcL9y6jphI1Ea7sJ4wMB2raAOc0wi1ncFs8K9c8CYmXplSkJ4x8R+PMMnSbRIMPn/T/jHEVRyazWjw3fM+ZiOw1ZYmlKsBoczw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uEoX3qrh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uEoX3qrh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF6D6C19425
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 05:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786079433;
	bh=Yb+FMrSrWea5uhg6VzneeLd8P9pjmFBxjkKJfry1zdY=;
	h=To:Subject:From:Date:From;
	b=uEoX3qrh2+0GkFeVTbQ7CJputydgR0bc3T1KBpIjMErtQhydcZ+w1x4JXTOVftEYh
	 OuqbBAjpr1i940mz17wNidPRlh/+xPvEfe1Wm+HmOIzlNAOxAuoyxj3zQjxR3uV30O
	 +rMQ/OjNo3bSdti1nBFKe0OvQcPmt4uNUjZM2K4SGvF/Sp8xacvgMds2ylsOFpThCB
	 aW59/YvRkgvtLflI6koz0vmEvy+Xg5XDbi+XGEzUAr4plA0Z7uKRqOiNyvaMzm+Ihd
	 sQI8sy8P9k3zqUyjjGRN55FIVLiWnSM90tLbj+7Ti9phmcqUZ4BFcrfc34YklFfU49
	 DS4OJrb9XtX0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A983CC5AC7A
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 05:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178607943368.26114.10520002850721432823.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09ab5bc7c1ba5d9083ab721b54814050f45d38958ab2b74e909a45b8ad9b7388
Date: Fri, 07 Aug 2026 05:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786079433
