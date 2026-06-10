Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8040822AE48
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 05:35:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781069734; cv=none; b=hH9745wSRq0JI6UvDvl8DVfmOYM159zyiEIFFO+KEcLQv2GGt2RzKdLu1qFggeJLoq8DE+Ad1AScQ+O0qjc2tNR6OvI3E2eF8ZpNr8GnaDULDDwLB/Za5bNe3zn5MlXE3CeYxwDuPyLRMFFpe8102Ba7y1sJY8kPb0DPbiOoPEQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781069734; c=relaxed/simple;
	bh=6S3PuO16gVJNAHU/GoJDAdQk0wUXfJeJehP3h2jGqFI=;
	h=To:Subject:From:Message-Id:Date; b=Myu/Qo1kRxh8KUIbL7DEzERkqyL6HDI72ISEfIOTEmOs49XYxZxhgw2vqwqg3rv541fHOrXarctNvgeNpgBiNgQHmjSM9Jm3TO3FF4k0CKaj2GKoiXRkpTmtWOqvU4dj0g0rd5RsDm+mRTwBUmji2R7m/cb+K11A+ORifM7H6So=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ns1OhhJR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ns1OhhJR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF139C2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 05:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781069733;
	bh=6S3PuO16gVJNAHU/GoJDAdQk0wUXfJeJehP3h2jGqFI=;
	h=To:Subject:From:Date:From;
	b=ns1OhhJReO/aqHc6V/u+nLzKToyiIKJ8sJHHxhH//LU+PdrIIPrZqG+0UTmoGMIW3
	 jqLXJN2yWjydG+yBvgmRPBfLUv3DQUfnDpbT5q6SSC7m0QbpM4FwTZ0ZGe5zdQShuO
	 V1xeC90lvDZ5zsn0eh804a1o+/lDb+1lF6xdG4w7X8oLHd1U5bfXAcOlVEw7hR7PcY
	 51yWwGvaLo484P9nlxyd6TcCo59XrPr57dFwN6czIqTbBbC0oBvzjlXOBvkpg3qAA4
	 F3qwbRLXuip6fu36RR8bATYMmMgWnAYz7IbDH0db4MQfp3+6vtAiCbvuNmH4n6jjQL
	 1AACiWHjtonMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6F5ACD8CB9
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 05:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178106973367.26484.9362616392939961650.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0839cf0b45416e473c994e97a0daad2686db258ab7f8086502a5b937742c88b9
Date: Wed, 10 Jun 2026 05:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781069733
