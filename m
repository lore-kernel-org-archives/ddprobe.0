Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E8B91A9F88
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762657194; cv=none; b=HgDCK3v5xBB8yULk9w4P0IBbQG9GiuzMeQpvMky9Rsy/x0pwXqQXtokOLUKxRT/Zu1saV3AGT9rS2YLAJ51+3hIjsbhA2z1NJrOLrdL0ukughDNPetzhuKMELAvAB0rByeBBYmGTNAOdEmCDYvhrcTO/+5ed/tAdho0BBCFlRgw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762657194; c=relaxed/simple;
	bh=3dPxkfYAUPUClM2JMaLzlltlzB45XPzspO39YMWW2qk=;
	h=To:Subject:From:Message-Id:Date; b=buxf1si+AujylRQuFdEU6W8LGiol16EbLMxXFirYQzEhrhd3Crw3f7XnM7S+NQu53kWKF6WRyXdElQnpiuiODY4jP00ue6OVusXPGgaDSNpHma2xpmc1xI3CN9OhNfukniZcxHWVcf5oU/MiU01NCeCE2A90cIEVbDX+0KgxizM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KQU7H483; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KQU7H483"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0F85C4CEF5
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762657193;
	bh=3dPxkfYAUPUClM2JMaLzlltlzB45XPzspO39YMWW2qk=;
	h=To:Subject:From:Date:From;
	b=KQU7H483LN2gChEZ7k1edXd4/cPBKiZM+V6tUElXGu486ymPogijmAfYs7H1K7qHv
	 b93poG699jVOmvZKElGdP/wTXbEh6ctJXJacMKmn5DGgWP8kIvbrOPVSQbTohyRsQE
	 FYpodKKteDuP2kBLO2Nj7Vt26noHP4EHk2mQl3mfxJKVQZucEMNrr11CNi8DTHano9
	 ik3iuPAYu2CQfQwqU0XttrObHu/5h9g7FGsQdb7Vx4Ckw+DwKlG9pxZBLdt1OyY/Q0
	 7Zf8+cfLm9SM0AvQDOSW648RMXYq2+bo7g9VyDt4YbdYJmwZKIynB2f9b25d3s4F3q
	 hLbMUf3MB5nFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94C19CCFA18
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176265719357.17235.5620447432822777350.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63c5e21d03c0e89e351bdc65d15a6b89b7cfce1e3214145ed3cd9381ac0da4e0
Date: Sun, 09 Nov 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762657193
