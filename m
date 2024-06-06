Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6405726292
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 23:17:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717715843; cv=none; b=qIOHSK0vw206uhw8IMh4X/UlLjUcpMuRE4X6Vx0gp+JQjjW/ksbexZdS1/wHnYbNr6HbHwWRpQoN+eKsl/tcK17WMIQWSE0qexK8dVO9KcFJRkAh68n4eyrjVbfsl//vDSPx+xrJZKmqoBw0OlZJs+SzTb0/HnK2anQhWV+ixmA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717715843; c=relaxed/simple;
	bh=t+TUgYXqRe2maIpGmaf9NjZ6Fr1J55HQvEyociRXvjY=;
	h=To:Subject:From:Message-Id:Date; b=mhzYuLcRuzNhzjGz/BvB4+zRPCpM4i3fHbO0qjIzRzZK7l6Xbxph/qZATSEkwYIgvyA2Rh+AvDNRZ3yVCD7wZbP+j85RaeJDUjjLabHlenWxGAH51rdAn9iAMaKh/Ur5OGwzmjg79ug2CrQTRSOHnSg2X7JEy8ONR1jSWQyWBDM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r7Wchfgr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r7Wchfgr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE397C2BD10
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 23:17:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717715842;
	bh=t+TUgYXqRe2maIpGmaf9NjZ6Fr1J55HQvEyociRXvjY=;
	h=To:Subject:From:Date:From;
	b=r7Wchfgr2IqtLfWRgPRomL2Hxr9ntpcf6oHOuxtjBXnZT314nVmGPB61tprgEts9O
	 zE+hma5maPT1EZekoA0ij4PCyTRJPnX/A3KbGN6lDI1O6yKsZ5/q8Mbn/3a7AFH5vW
	 EqJBwA/ySIVlUVqKC22WKIk7WwqCaAUHbMsnQvWO2rSbHGdCRTgXTQRFLj1T/KsAo1
	 fpCcmvmweL7N6SPD4cTRFlyTkTK/8WJzXgT/0xadyBNVg7Z+eDpRcGNboRn1htfdoA
	 kASrK8WUYyz6Ud1nQ9ib9VgLhYARxYfG/WqegMHASuEg0hYGT7e5EPktIlEdlzcqnE
	 QKMePK0eIPacA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C919FC27C54
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 23:17:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171771584281.19542.232722899591786343.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b28dc8db55b70a06633881deb2eebc9e72869c3e3cb13a0ee364c08001cbbe38
Date: Thu, 06 Jun 2024 23:17:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717715842
