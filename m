Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5216B23C8C7
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 20:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738959354; cv=none; b=NAHeoPJuUlaNrVvhE21ZqEM5AI40pY9ET0RKexTfn/N3AH6ARQcDF3uKinml7chHvRIeG8+fhDeqWGKk5/QduodWlwLoVpC0nhZ2ftbTgIcWs1GMTCvbmqu6zEWBMSXmKYNxXRq9FanYZrrp4DbGYHgr0U5UhKj5gPDL648y8og=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738959354; c=relaxed/simple;
	bh=xH02jKAUYQJdgOFrHiEuyJhDk4lTEZ/SoZgJ1cmbE44=;
	h=To:Subject:From:Message-Id:Date; b=bmDMTZFkicHGgo38qMc+mxjGruPyfR+Kh6WoYKPeY657N7ojVWAtpMThgj6mUEJx/KUlNorqWlZUB2u8FMwKHGfCWp2SKATdfIcI9AO5XM2KbJHhaoQ5MB99xJxpx5zq3cqA1IATmLCYz3D4iAbF/sJdhShL4F0xkhrIPVCcdDo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L50g+X/j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L50g+X/j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2026C4CED1
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 20:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738959353;
	bh=xH02jKAUYQJdgOFrHiEuyJhDk4lTEZ/SoZgJ1cmbE44=;
	h=To:Subject:From:Date:From;
	b=L50g+X/jyolpWhnaYWtcjxP4sRXq8SRIdvYfztlnrkyzIteNGJlAm8xtIr9w/smqD
	 iEl7VZVN75qtOrsUKzAJnWHwRZACbaqxiAV+WdudMQjs4LFcL1eWKtfjFwfP0ZPumo
	 trePCbL3vnjA/6qfHtwEwBcOZHIPafZB2UllYNVouBEa31EwnxxQWXSjAgzXVjvwDw
	 vJR+FZql1OGmfUnFfpk2bZ8krcHxZqXe3Eheye4gqMArAt59EQjctemyHply2C9URF
	 AobTGQg/mYm14cx3xcc+qa3mIO3KBqF4Jo1nc9p6bZyaMlegMMcEPKkbYTXQHY1tF7
	 ZXvDNltEjhj5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4E5DC02194
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 20:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173895935370.8295.8113752379517413483.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0bdeb24dd18fa6cb1baaed5844c9066ea68dc2a9b121075e20bac501333c7399
Date: Fri, 07 Feb 2025 20:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738959353
