Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A4DF9361DBE
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 07:37:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777016254; cv=none; b=q+yq3QzsSMh7Q5L+Vf37ypvf/ZA5K3OaRptG7kkvN4oPIq4NvSq5rXFbXk8mXShaAp1jdgdiaPrJuvSMpv+t7BRistKB4ybDLEyV+2O+CdcPUcf4Zt6jhiHQHGFk7SN9SadB3Hoiry07bklXCDm8fJvYRxWSYB9zZKfCqhkQfpA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777016254; c=relaxed/simple;
	bh=rboPrZxmSYsds/jYe1wq/bts4fTQGOXqQy+s6aaSIIQ=;
	h=To:Subject:From:Message-Id:Date; b=eIwJF3bxNvh9BgVx41pXg6+Ii2jM+5crLfAnE31vL+WMmHdKCd9C5JuZStMnhF1nbTVrJMMWfyYhJTwQseY6l1j9mrtIqPGia1bS4pDQ5WaS08NsowbtUNuKKJh1MbdsWGQmwisiZsXwNmx/wr5ly/8nAwHaPrCHbflTYIhejz8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BMeRD51D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BMeRD51D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE305C2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 07:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777016253;
	bh=rboPrZxmSYsds/jYe1wq/bts4fTQGOXqQy+s6aaSIIQ=;
	h=To:Subject:From:Date:From;
	b=BMeRD51D355S9jv1Y+glvobWPfCfh+c8y9YfE+kZg0BejVZloB3VRdjvy/06JYEUa
	 P72h+/rJrjScgEKNuuQTzc4aQVXTjPHRastSGZwnI8SFePBR4HnWpiKRFbXWG6DnbD
	 Tr0AiRRsiHWqyIg0Suhr8jd8DCx/wVvryjOQhSFATJOY7egKNMS/LrT7mi1RY1lHrI
	 ot7bAqC2xWf45y+0Ol6K5It8FlWd6oN2ayXVLbmp2SUMzwS8Jko7uUsIQz9JvaniK3
	 slCgy2iBxWubsjy8NY/lBRauy2viEAju8qMPURibUgOx7Qtgs6/5A3vZLzmq8xSBMe
	 Aw3XkfcRoM4DA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB2FAFB44C8
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 07:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177701625369.17075.8380021663466766513.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b15906b14b6a9763a65328bc9e51da4d6b414a87ad5597ed06b260a2499e8e20
Date: Fri, 24 Apr 2026 07:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777016253
