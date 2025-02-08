Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 440D81D8A0D
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 13:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739021154; cv=none; b=ddK2B70T9hxbozHS2igIaRY5rkC851iBWY7TGzidxLQNKVqp5Q8nZUK9yRWXfo+cNEfdu/07nyN/r/l4q4myofhu/ZavA9fjxt6mQ+UgJNri6Es4EiGQfLCKpEgAYftv3hK5LB75+qOQlN0KqOxijw/TNM4f/tIPXyPZB75B7/0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739021154; c=relaxed/simple;
	bh=wNzf942TTO/mEPCLdwNI0vo9GqbyZ0fJ5JQIOs8PFoQ=;
	h=To:Subject:From:Message-Id:Date; b=ij8yR/puA+N6AcgQU23WHP3bISfvBLgAV1EmcoQPLGcgS6gwaqZl7sENYvP6uXzFeey4AFwORdk4wycxnZZR0/VOhvr64EHmy3YXyh3hhu5gZuMyn7BHVYk7dDBAAtEYMBo2/l583ogQ01dOxO2SlcnUA2utGptfYo+GVrVEVNw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ln6hljyr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ln6hljyr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1AE2C4CED6
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 13:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739021153;
	bh=wNzf942TTO/mEPCLdwNI0vo9GqbyZ0fJ5JQIOs8PFoQ=;
	h=To:Subject:From:Date:From;
	b=ln6hljyrRVMu6AMvOC1qyUFBtr0B9stR+I0S6d1q6W+OfPSRvPr0wb8GKMOkCcHtP
	 ICbLtIbaV9HVeyyF03ISaYvFZjaMfO16yYCDPA9TUsIYEFJYflz3GOoutV9rN+3p3U
	 z59ZIZ3p3UaxUg4ExncjwmS0Ty4jtDNEKXU7JVV9qWX8kMDoLTvb2OhZ+WO8dnWmXM
	 HVJT+QHbg5hs5oki6sYhJWkmKST7B4XPNr3qmDHT8AnMoqHVkK31NQogS8Ebb75DxU
	 lcLBJj8fENBLtwFfzzxMWbp3Br08iWLGW9Wr8mQnCD+BdoqiR9EXJteu3OCjmBX3fr
	 7EO+9+K32Duqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A228BC0219E
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 13:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173902115364.23402.9905654266585629282.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3efdcd6f5624f0e8440b3f8b1ce55479346a406e936eb5968154bba9210f18d4
Date: Sat, 08 Feb 2025 13:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739021153
