Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43BDC625
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 00:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786665634; cv=none; b=kjHDumvH0zyapURlJ4kH4R9cTow/gQ9nNM4m5gPjOpjIBYwBlmKb9khTIcG3ATnTfqLZD+WzOwLTA1DMXXqQWVJGpvxIHiVUv5Ub5+LFnnr70MvgU1fUTjZvRj/UH4B87FaqW+5bOTVXnpmNW9Eoinmuzyah+RQLeEoE1tyD+sU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786665634; c=relaxed/simple;
	bh=xlDvORc80yvxGGD9m2R2AZ19oWe8eA78ZQkUg+3uaWw=;
	h=To:Subject:From:Message-Id:Date; b=ctnhyli74dmuJLf2TWKwKGsQzk233vJAE6iboJ2FQYM2yoh015l7mOfQJwLzi3u5WSoCfZVGEpvuUFNEeVCir2dvVLEAdsMWE4JOTLPYOZoQowrV63GsFgjCFH7OCnS61mHlLWt+lGi+XKUOLbPyuE9ZGcVFAiAqAbNL7gaMX0g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Sr0XYLZr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sr0XYLZr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE476C19425
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 00:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786665633;
	bh=xlDvORc80yvxGGD9m2R2AZ19oWe8eA78ZQkUg+3uaWw=;
	h=To:Subject:From:Date:From;
	b=Sr0XYLZrrabaOdF/6a1iVmxjdN8doAO0/pKyxlaxbeVXHCLX6w+VI2evJWnOs+oRp
	 N8Rk2TLyvkmGHYj/w7JUvk7/PGHzp36x0a2p6N6XfsZgSVBLlCb6jymHGX3coDTcOG
	 jERyj9nHKeyJgpy+syXHl+Ji6Yj7Xo9HbUuBX3DtZnAxt+0MJ4oVq9UySI9oZHcr44
	 NEwcHjkBqdVHqmyUsB+p5wgOBNolmTbvEqRZmDDGKwJqdhrJCDeMsZ/jiq20nqkx1p
	 u3hVvNiU81XY7E1VbzJMEVTyiXmHKFVGmmupmGWVXO3n1hrOjTDSJo7JntJCX7+rIo
	 rIvCMihYDGNOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A963EC5B572
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 00:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178666563368.21680.1457247560616195660.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46bb206dda295e1a794d7bdaa2467d38e00ecfa7d563b88ffae58d4f2bd9aa0b
Date: Fri, 14 Aug 2026 00:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786665633
