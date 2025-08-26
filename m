Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17C7C14A8B
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756196994; cv=none; b=Cnu+0Q7omnsz4SqQZIT2MKXwfyHTui0cpLu9AwY/ZapLSDURxFU2ap1ns/tK8C3pzIPW9vp7N1cJ4ldkvJlHqt4nunLI+4XxxWV29XWcqBL97DML/p2PpiOtzYwiqfum+WcKR1LQdHXVtaOsMY9LGKa/qgufpQ/Uf8wUdMGfjU8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756196994; c=relaxed/simple;
	bh=57wK0bThuPJqkVSDZHDa3hB3mxKuLl0WdBeHtSHgT70=;
	h=To:Subject:From:Message-Id:Date; b=V1K9BZ4c6q9+74uubI7/qZG7YEYze1ZMpU1ztEmZUn806Dpxm78vUOhe0XwmFyjz5DSSJKYCP0qkaa5d35C0O1Jb1hg9IEUEIbhDm66eq1vnkrcN67qw9VilaHPgNWGK7p4JIAZhCEXlJYurbpAHWnxGNFEiQBY5u89U6FZdFbA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gs9xPAtK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gs9xPAtK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E6E4C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756196993;
	bh=57wK0bThuPJqkVSDZHDa3hB3mxKuLl0WdBeHtSHgT70=;
	h=To:Subject:From:Date:From;
	b=gs9xPAtKcqVW50CeSxOu0ifQD50vtyIcPNl7yDcTPEpWMCZ3nkw6lMN7v9gJTyuHW
	 af0zK0SPz9gIKGZLUDADDT3atOcUn4COrMrJ2ROvBvn9uH9cw69fNXf7N9d/nOf7js
	 4JT2iabsA6l8eA0V75UkoTq56PpYLbL0wJ6XtT/WoOxnttKDGWtBUPp0QEot4WQkjz
	 CJZQH+DT0YqWICmJWxWjFpVZiE8AKobMEy6OQ83czw8SdSWcc2OR4kuW+Y4SdAtWc9
	 RXHtckToverjLGKeLooz65teQbxv5Ek2VdD/EKWxWadQ3hSpp6+9lUr9IG5F5I0M0a
	 pYs0/ME93bBow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F46CCA0EFA
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175619699357.31735.18316631744562974547.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5304501380667636d9660e5c8ecdb9fee44ad4de403ce15558df8f5657dca4c5
Date: Tue, 26 Aug 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756196993
