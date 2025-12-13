Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29B893FFD
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 15:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765639974; cv=none; b=drQT/frw8y3KAq4ZI+Y353x2W+rySgwufQMA5v6gfxtJMhPG9QxVlFqj5GDQdcsCuFjGRDCsN9vfOsQd+ULGdgrF7BTt4/xQl9eU4eWKaHaduEttZCFKBHiIHXM8t1yuPX49CCsNA9cNWysKwrzYgAdCv+ea7K4dPE6F7REN7Lg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765639974; c=relaxed/simple;
	bh=4lm+b6mnSjjdg3HNHguwOs9/gf++IUsPB6U2cqLk5S0=;
	h=To:Subject:From:Message-Id:Date; b=tQ6fqhcddZrWIdv0wVda+Nj8iS8PTwg+EzfKupwGXwpGfjek+NfY6Y5OuGBpKiL+Ay/uCGP+pWtovtOW7Txevu660/p87AkpdYGiuZ4aVtds22s25YhqFrXUJHdvXuLnV+0wkdSZSAIeXnZw/klVX/qrI0tc1sb76y4MXgKyBTc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ABueGbeY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ABueGbeY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACD6EC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 15:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765639973;
	bh=4lm+b6mnSjjdg3HNHguwOs9/gf++IUsPB6U2cqLk5S0=;
	h=To:Subject:From:Date:From;
	b=ABueGbeYcn4jx9B5NP5/jv6gIAtmNIFkcavgFs0BPIlXDMec3np1cGxEFGMaJ1QRh
	 WQJrIhfeUoQWMMz66yYqLrWs4qdP07IMDkvODabVAzl6yd5k6rAql+ipCDfkzhqW4M
	 BX4g4nqWB/yJZkMYSv2W75388pIg+Hkj3Ng6fARmuZB7LJA1HGjNuDgJHCrDNddIpJ
	 3kujyQErluY9q62sF9tmj6qxVw+uYixi1TPlyww8mXzIIPvEnz9nThgzLLoL4CjDC5
	 +Uhc8ix/wLFRRV2CubhVeCBWiiiYddeUXSfDyQgQYzjEphDwwTTuhCId+CJgzX1PKm
	 AanKci2C/riOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97C1BD59F76
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 15:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176563997358.28129.12677203567606274144.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07e3e83aedb12547e92574b85b64aaafda2827d940437a7b224d85c7011e1f99
Date: Sat, 13 Dec 2025 15:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765639973
