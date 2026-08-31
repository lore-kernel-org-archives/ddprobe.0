Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 614943C10A7
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 04:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788149434; cv=none; b=tvr0Bcv7UEKMkHsa7FDPKVcZwdcst2+SALzQE9o3rLlMBzr3d5vRxRgYWClqOyWfOkO3lYqyZyrLYqdcwvqYD1VHF8sO95oOQsmSm308f2HBo6jZrluWy0f6+wI6Nk1wjq+pdirjf8HB6DeQfqKsa+FH5BnsST+I9Qfx6xKkF8s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788149434; c=relaxed/simple;
	bh=VtVeLezWKTNWE53MU/wMoXNHA07YJSoL+yXgDPjxaBo=;
	h=To:Subject:From:Message-Id:Date; b=gNyY/A8WUbOmMyU2kaaIeZ2bIVe7ji17yi+PtNbbZcxWiszcGU2L8bI41/B6Sa0OKk+F9Fm4ETs9N2SqqrmPD2IQLfmSAfXq/kTzBjhZzMQVcTTqOGKC7crCO+i73zPpCgiZd1h1iqFEtxTgRkAYV/6C0Tham6Se8OZp7TkiVik=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hhw24/JK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hhw24/JK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDD00C2BCFA
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 04:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788149433;
	bh=VtVeLezWKTNWE53MU/wMoXNHA07YJSoL+yXgDPjxaBo=;
	h=To:Subject:From:Date:From;
	b=Hhw24/JKR+hXyNHIY7f9ZXWqRc6mQzj1tdXFfd9koebYWMoGnVk6pWiwL9F2Gb7Pq
	 7Qx//V/qnoGOm+82iBPxhCRmX2AtyAvFwL9LKnt5tm1oDxGu49frGF4TjszadYwZa1
	 j1XkT/m81A50ocv0IiZEOrUDslSXxwLe5/CheWJR42G1FKnmBK7nNoRKdRdSiTALlV
	 gyCgqRKJb8n+9RVXWizemVjmqFFSfvA+lBSOFqJWMNr3DgKvJTZ+Dd9/7I29rrQd1I
	 sqjqeYwKx1XfDY9K19yW/FOSeW8417io2xzfC8fMW04B+IzaIihJdLHQf007BshVYg
	 Z0autrhEH51Vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA7C4C61DD3
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 04:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178814943368.32071.15864729104285506604.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ec0d13721b7d5bceba39185c661789a0b3ecb365f05a796fad1af8f22024201
Date: Mon, 31 Aug 2026 04:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788149433
