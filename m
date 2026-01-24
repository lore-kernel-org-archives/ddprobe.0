Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FE6C42AB7
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 04:33:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769229234; cv=none; b=L1aIJvScZE1EYqpQ+IHi9FQv4bPrKFRWM9FqlkMzfreAXL/MC+hftCux4LakFtT1W3KUGqmgkqJ1tZu5Z3f98P8bwlziOSDrItjf+jR03aF2yh0Sm4ubKz48mWMcjZjbiftBmUPCQ69rZwkQ3UV8roiYlT05yk1bt7tarTmrIr4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769229234; c=relaxed/simple;
	bh=8S8snHbKdxTrhP5ljjuoUOv17tU41s+n8Hk0FWRiENM=;
	h=To:Subject:From:Message-Id:Date; b=UWfD/dpt8RYNqazxgFJi6JDeXj/r50C3U0qpT7vXwMQEvOnGFHzjnYcaqiP8EN9ulwBv8Hv4gH5TBkZ80+LV1YXFvrFUUX4rfnv6fS+hA3AtC8IhaDqkWWX8yIwDXVHJW9BUaM6e6TjpC1lbbIISHCfi0qvaf9f9tgMZEAHfrw4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=grXEIvI5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="grXEIvI5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B681BC16AAE
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 04:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769229233;
	bh=8S8snHbKdxTrhP5ljjuoUOv17tU41s+n8Hk0FWRiENM=;
	h=To:Subject:From:Date:From;
	b=grXEIvI5k/3J62MNduK3d1FHNojLC6J290GJPNxJc0/Gz3ih6oswfGBNb9DLj6asb
	 KNJyOieI7xxEYDxTWro2WkDCSaXF680ZRZ01Bjn9L2zXTXBtVhH0ExUXmUDud3zMGl
	 HWEBKPh2enaP132zK8jFfggIM8LJYgUa1pCnCWCN8yqTwIexbNgqUDCHNDkObRaTJD
	 w1As1qhx59NqbbaHhawzMHhGs11RpHMD9gnclQ+LaQZsJiL036rMYsC8niqgf/3Cq1
	 4QUMQugIQHFoj+fSHfi3coCq3SKIGcr5v4grP45/2itdcf2P7AIgjUBRBu0q+d8XgH
	 7eebW2fpsBb+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C87DD7237A
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 04:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176922923360.17924.6730910344213149694.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b571bdb91e123b734b9a9accec803dad04f0579ca1728691aff8b581907cb614
Date: Sat, 24 Jan 2026 04:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769229233
