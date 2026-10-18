Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C2A0277026
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 05:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792302634; cv=none; b=aOZ59KEcnbIZLR62I08G0YzbSXOhn96qE3NkDjRnI0d6KCT4Z7Wcd8Ism5zQnYC2pRvDv0l4kkHYDifdpwkos62LQ9sufGhC0KNDxI+tiTaD7nlsrQaAXVRge85xO3lnvmpqx66wzPTpTuqGY7H/gonbrQqVOYI2dMkfuAIATis=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792302634; c=relaxed/simple;
	bh=alQbHN7tyApFnus/HcknbWt/K2WzVGq6wye+GA4yZdE=;
	h=To:Subject:From:Message-Id:Date; b=oTIIgNSXjF65hgAov2bYV9yfdrkwq9zU+h/3A4sfNeCl/ru6VNPxcSWrZltNmsABAm56gs8pibVnpS8NFTducqcN8+XAz5mQJzfBV/1c6pveoTRreFK6MKSshFJXZ1HOwRa6S0IDD9tMW2WvchN0KOWCefXH2lQofobiHQ0WhCY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hPNHkQWm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hPNHkQWm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB986C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 05:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792302633;
	bh=alQbHN7tyApFnus/HcknbWt/K2WzVGq6wye+GA4yZdE=;
	h=To:Subject:From:Date:From;
	b=hPNHkQWmWZ4BMmz4kZ3hOHFNKtzMOpE6V7Ymjqv7XOlDKagHbGR0M64abk8ddvty1
	 JBPUGoiArYXHDbPT6LVr+YHyzPOZ4PwesaCfDiwYSkt1E4Ig3gv6lwOI6O/Ezne1VC
	 xtJRb7ckV8Frlf0Wv1fgUoEFXNu+YbDSUIi0PwK9C/xuvuW8RZMME09Muh4YJvYp2C
	 +4Px62ZAoMzSiK7mho/EbpvTKrqqxhkJ4SvQ6hIEtRcHMEW8PXciZNEMmxm2zp4eQ7
	 MrkT3grAVWtuyUXRGrSVO9WrlaXZv5dIlzhxqDSPjLbo7BDKmEogriqAH7bh6eqllz
	 gr+9zR+gZfZmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7B6DCCF2C4
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 05:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179230263371.6438.9773262845832556054.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8729e30d0e1d88a2b2ab59dbe13c072c07625bde9c9af9aff2a85c03bb28866
Date: Sun, 18 Oct 2026 05:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792302633
