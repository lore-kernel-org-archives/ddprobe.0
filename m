Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D18FD277CAB
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 15:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771689293; cv=none; b=Wq9LrI4VUXNvYJsP2IbpjNNjXTIiJw0o2uh/7QS8hIiNGwLkoQUHrRsVJbtzfEN8Z/5N5CbmbY66v4IKyEwuvcO1dxatvt9HR0WUsIX3UO2xDF7wHOgU964cSen08bTDh2ww4QU81WC+YzbSR0340q78ooitUgRm7kO18lOwWnI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771689293; c=relaxed/simple;
	bh=yhzLViact730N1iiNrH+Ms5Fox1cCWwNQvmpkDBbOUY=;
	h=To:Subject:From:Message-Id:Date; b=VA4ZNUFOEp1PIjDRgMQQuzCTEW3z2vWhHBOsZvRcpHcfiSqWY7JpSePIodEranPQwADCOK0FAo84Ca83sVA/FU0+vZ5fedbwhL1M7hZL6QjHWeQUCrVsErNIQxiW2NX+Dj10kntTebrSkCLGXjJqD9VWcXG8yT3Yt47kZG+qr4M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aCl/Fx3h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aCl/Fx3h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4F40C19425
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 15:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771689293;
	bh=yhzLViact730N1iiNrH+Ms5Fox1cCWwNQvmpkDBbOUY=;
	h=To:Subject:From:Date:From;
	b=aCl/Fx3hQ8QThVVmPVNq2xfKtfBBXVkvjUge2cy7Cwa96A1MT3jxjHYB5K/N20xh8
	 T+fF87m4Cc4Q8k1KQ5Om4o9YikLlUcQHVKvz4KNZhhkft2nYJZ61llBQbtK6/vByyP
	 DshPCfD1YehR3tcCQXIFM73jR8yDVvx4JNwhjsDVCAyViyC0+YEYJvVQ0USvZctOek
	 w1s9WFpedYrwcBZSbzHbJBWJGIl1Dp+Yq9b9m1mrZfcAAQlcz8ldog9aIBYcECJOU+
	 80Eex5traco4lqiRJqaad0GgcYhHAcmuRtFeZuUtnQCRrQlGQekn+Mj+F+Oxk2iq54
	 ng/C3dxZVOyew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C091C5AD7B
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 15:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177168929361.32221.14207616342518569839.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0119acb8ce0c2d8a4d7a8c7c7ceb5ee93af64fd54bda0f85876623c17565dc5a
Date: Sat, 21 Feb 2026 15:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771689293
