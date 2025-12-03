Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 240FB54774
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 05:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764739974; cv=none; b=rwTcfRWK4OEA9uOOzXsyV364cSzTqpZXhN9Ar5YRi1Z7IzsD/GHBZAChYS6pXhKE+aT8IGad4CNUtRzwCPaA+fWqG8/m0dLDwgyKmqm4NcPETDRzs1Jz7oHrU54smi7HDhLMsbv2rw4RlfVA8wy+2J8aLIyDKXYek5xXAKmdLHs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764739974; c=relaxed/simple;
	bh=Z6MPA9EokNo/rua/itd6pC2PGeNu21YzT7XodHuYiy0=;
	h=To:Subject:From:Message-Id:Date; b=JeRBRAzDOzmEz6uQItaRRfXF6+HfLc5RaYWZSirvssER3kuc9RA4a+C7TGXyPrJ6/dnpIyNfDHxPoxeofq4C7wDx+95UO3QGyhqb8qK6cA5jYabYXH/3YpzFp1dWH/PzQt2R3kl9YGUXxOM8LJgoMTcZ6YRj5Ky3/QITE0v9AQQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jRSIdHcr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jRSIdHcr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB327C4CEFB
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 05:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764739973;
	bh=Z6MPA9EokNo/rua/itd6pC2PGeNu21YzT7XodHuYiy0=;
	h=To:Subject:From:Date:From;
	b=jRSIdHcrICx3tMxGZM/vM9A2F7ulgx+y6ySWA8iQhVTjU7xZIcPu5q2t07bxqKV19
	 sQZ5ENjdt2FCZk0hc+Z/qWIVD/eVDVxudgx+bmBZCD5LnGGU0Rm8QIyD7LbKRw/AGi
	 9NBwhF2jdNJ3JDUWygma8S/25xZhpTiygyKbczY2ct0pQYC5qX6sR57MwbnYir6vVl
	 njU2mGAsQ56hw/lgBul3v+wifGxMXA/np5+KS29Pv7BOm7B5jmrr4fUY1K2uu9Ih2h
	 NGYm4j4aLrvaanXNqvipSIKwS5w/L8aT0FWMqihnWw9oh6uO2VpCimO3wcL81jLbdi
	 fqul+tUnQ0McA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 965C5D1266D
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 05:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176473997359.16567.3945181827462887502.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b13750fdd0bcf0fbfeeca5da62d5aecc06aaa15cf46a291e5564593bae100696
Date: Wed, 03 Dec 2025 05:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764739973
