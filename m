Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A86037267C
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 06:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786171234; cv=none; b=SNjKMyMHHUlEMW8Md6K3ulWD1mnjp9MBIpwS3pGGfek/pnrcZuRxfsE+E2VD3XjRcZ2ImWeBEyG0A/z/R6clqbg9D8HGdnZF88E/qLFfuxOILY6pgo0I2n5pCG7L7WSO5HMXm5OyIwnxJbWitLmAO6r6sYWSVu3OT49/tEekyeE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786171234; c=relaxed/simple;
	bh=yQjRGr4yV3Z8QnV3QMkxnXZXGchwfNLX8g2MSjvVTxg=;
	h=To:Subject:From:Message-Id:Date; b=PFuhungwkhrgboZWOWjRiBOYdj5QFabLe84xRTTxwg6Wfpv6nvGt0Qe6JPxSlWswcYS1SOL4jk/Y/2o9wjqjNSVcNKi+KZaMzzcbAfpp/w7F7J4C2Ums5ikLuFz0OaevjhIOd97lUZV86jwJRNZj4pUR8RjPoPQqGfquVyGQMR4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pqJzmNI6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pqJzmNI6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0951C2BCC7
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 06:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786171233;
	bh=yQjRGr4yV3Z8QnV3QMkxnXZXGchwfNLX8g2MSjvVTxg=;
	h=To:Subject:From:Date:From;
	b=pqJzmNI6yCthJxu9N0uC28q3NC3QLRr1p6Ah8fe7UeqcBg4askJxMdhA5RwYBcB8A
	 ehZKDkd6LWoKFb1R7uTzixhg7j941sHzl9/dSU64G1RHypm3OFKYrAw+BkmguR3cqJ
	 mK8qWNlVgha9St6H3FiOc9UhHLXFI+r8z4xaGQPD/ubvw6XN9XMpkHqghQ8r175tGQ
	 vJKStYPCkwKXBrHZD4G1xMZeYIgM2Y6xMRGqr8v5GYpV53uGM/YeE98VKlOSlD+UIV
	 41K2t4QhqShTKJPPST5+Z2jRkDHcoR6nKikouu+NYLw00gg9KyCWHI9qWn8nW/kFjB
	 ha63OlJjObx8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB32EC55174
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 06:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178617123372.1370.9975818383371232396.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b3aa8572c702d9579ca4acae290826e279abcbe653a12e000d17ef68bf71ada
Date: Sat, 08 Aug 2026 06:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786171233
