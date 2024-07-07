Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CA3CAD4B
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 10:36:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720348583; cv=none; b=X79ba3Sxr8rJrETWQRWUioo7eWYUuJ4jdZsiB1FmQ5C4/u3DCpZzHc/kkBSE4y+glE4nGwKvvr57MEAc3BuNumHfDj657Tm4Z3sLgA1k26TTlA9E4nSx9/NrNJY7Mjt0jvqx7QgUzWWY6E/jBPW9I1PX2u5LhTcKcnTaIEh6Kpw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720348583; c=relaxed/simple;
	bh=svGIqSOS8BSRky4tkSoYO3hJ4V3LmnIBrYL7JJxcUtM=;
	h=To:Subject:From:Message-Id:Date; b=bZjxdPcKeRHcW3BMzl3LlTnnCWENYUGxO4Jj7f37PgEvihjpM6ldBsY0GS0U60KpzM0lGZyLYq0Icn7qBj7pmkltBHePKWwRr2S8b3PrD4qGCL4U6VVttEvrHczgLg1Ytv0msNLN4ZyZs85OqE9+xbey51J2nQcbL57ION0v+vg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mOXuicvg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mOXuicvg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6003C3277B
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 10:36:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720348582;
	bh=svGIqSOS8BSRky4tkSoYO3hJ4V3LmnIBrYL7JJxcUtM=;
	h=To:Subject:From:Date:From;
	b=mOXuicvgkveyDXtN/Ai9DvNGOzw/DgzOFjL76KxNEN95YGHzPqs1FnbFPEaB5RvCI
	 wBtduJVAVzzXZLgffq9RkhhdqU1DxnJPnLtpPzVPA24zPDTA4TfdEybUPXPGGIpmU9
	 s1T3JeKIvBXP/rfBV7GtkaTfR+uh7+jC6PJCTQMSFFfCG4OLbxSHZcOayn9D4nUJS1
	 7B1BMSzcqqinbISbCSjqF2Qcyks18efnlUasKr5MqDoIyQh2U+8vnCFvEVixFfhXIC
	 lQFz47JmZibBEJn0wRe7WVp43ajBllvxmGTIGtOtKjkne7r7NPmyRaKVXQYp2m3YQv
	 a7Pmq4bCoGklA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE645C38150
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 10:36:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172034858277.6293.1883063401677975200.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 970fdff13873c41efc17f42c0628a84b0c5f699b913235da53f0612f1c71bf16
Date: Sun, 07 Jul 2024 10:36:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720348582
