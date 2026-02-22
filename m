Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8E86A932
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 23:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771804493; cv=none; b=UOMO3KKbblX69bbxAHFOWN9JzkB45ArOWz1bNnR85WBzrljsLs4oIJ20w/FIhW6Ua/pbrRhnUCQy224IRg0R8sS76NVRiOdERj9JFdxUkDbBi3Ra4zgrK7Lql/rf70zfgwwoBJFXFHBXj++dEBJJ4jBHHSvtYfOP0aFMcb3zyPE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771804493; c=relaxed/simple;
	bh=zwq8LFCZFH+oIoEEEAQhNagm8GxdWcss7ylMck332p4=;
	h=To:Subject:From:Message-Id:Date; b=lgeRdzwtEIu9+qTDPIQRNt0QmpxdthkCosva2ouIX+5i19eI7wT3WgdId/lfzbwcEePAK9qiem+6QkWL8ZU4aaauhhndPNDddDZEM6bbDSWtbiTqHsVHGDMmFvdNoM12Zu7NgE2PX8ACMGmkuF8uSgSSTqQOSJ5qXipm+bisR9E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ko8SjvL8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ko8SjvL8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACC3CC116D0
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 23:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771804493;
	bh=zwq8LFCZFH+oIoEEEAQhNagm8GxdWcss7ylMck332p4=;
	h=To:Subject:From:Date:From;
	b=Ko8SjvL8PNleT8oupUmBmkMn+pdgzb0Ex+Pz4rxRJrklYx7mvmoeZaTp2cDONz3P3
	 pQTRTM0tnZWNu3Z7Q6SF4tiSNmRL+mWA7W56q3RP+fgBN3lOKFu8VgA8nw0jmlbAhb
	 aIxlayGzKmqrBJ0/if3IK73wODhkCzhTGRsVq5OzS7ecL6rMUrgW/GHSNXzzf9v5ce
	 uTyyurGl7f/3AZCPz1jcGzLv7wiEUNo4teXLduiBN+hqqDUxgapgCN6IlZ6UkXK79g
	 +PRo1F/LvwshfKydQsSdb7ibXZAEr8/XPYOd/Dprn3jynIKzkVo3J6Xoc6a8GDHfkM
	 3H6u3kEimuv2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AF22C636B5
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 23:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177180449359.5994.11750551148514042429.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03be91b9a488313ead4e45fe2676207aaa406d2a35095648ee168ff502e00404
Date: Sun, 22 Feb 2026 23:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771804493
