Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1851C366553
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 03:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777780654; cv=none; b=DHGQvaVf84xmNs9mtmYF1wZC3XO6bPRnhV3n3teE6Z8oHG9xCv8lDX1KcMc3TdLvisR5UnPNyhBw90goOgIwWFHgALmOGzJ3+NK5pbB7xKROBuRXWRn1bH2d0OkGtXENzGqoyK3qD3JOcEV+Y+An59GQsL163x7UJk6uzGRCo4c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777780654; c=relaxed/simple;
	bh=LMs8d98mrqXaDZ1VKf38F6d73ZnZ+WKl0ZrGs8eqizY=;
	h=To:Subject:From:Message-Id:Date; b=rlOvO1da7pWuXh+vbn7QKST3zg+Qu1gliB+4nacT4n61JH1c03IDbYUV+lJvyzzyDfMvZREPFkNA28JO/dy+Fct3CJfvqYG8/OecvNUzJXL3xJJo7JY8X8JacEPcZGOLAsUx7hQgP+60QcRiBMsB6roXP4l7A6loYqXqL8Zvzkk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NWHHs4Wn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NWHHs4Wn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDFEBC2BCB7
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 03:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777780653;
	bh=LMs8d98mrqXaDZ1VKf38F6d73ZnZ+WKl0ZrGs8eqizY=;
	h=To:Subject:From:Date:From;
	b=NWHHs4WnJA3YC/2fbDQyq2YJAAISCiR51x8G+R0UvSyhz9cSuBn370/VLasTCt7V1
	 kPNxa7NUTMH5FVggSiwkIi6dIwhF9xmV8sa/lRxWNiJRWvG7SPsy20vT1U/Y3QCOQn
	 DNJ7TBtaQ8kgZDSC2efkdDZ/v6qGm28YfNeXVRjsqUboXryRIP/uNsgwsJjM6dJz+l
	 U8neWxCwfo6gicxaoOU5zvCIMDWAGnqq+LMtQI3OYEvW/2UoHqNdmBVOAw04WG4lbf
	 sOHCz1uFwg1eBC5pZt/8+lD4VAfMzrmi+TWKhHaRA07lHA+ZyN1yT8jfW6tAoiG2fw
	 uQT3L9kpgaUhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFE80FF885A
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 03:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177778065368.5514.1005792984842951824.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: edb980d4e12f446aa57df10eb3036da6c6541410747f77ee053b4457b6386cb1
Date: Sun, 03 May 2026 03:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777780653
