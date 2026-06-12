Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38C3B399358
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 18:26:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781288794; cv=none; b=hP+2ZskhzB/iIFtRoYcLjdG1MWeUT4JcJYMR6bHtYcM6DRqpvzX9dsLGGsJjsQuMewvoaT8U5WAEV2ezz9eNnsBeqVKNUItqIXCdyIeBpnsCsoW0DEqt4ynQ/sgjiDswCJBXnmys2nQja74laapRgOyEU9O+mRTtkYLRuDXmVMs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781288794; c=relaxed/simple;
	bh=+B789z/yysiQqbA3vktZKY8JfHA5H2CBBGA9WAOd+9k=;
	h=To:Subject:From:Message-Id:Date; b=FAvqsyHKJQfoQCzhaWGDjfw42z8tKK4plvrItulwTuvhqjm40ycIyKSlIOpTywDxfatb4AuMDClTT9PIwDR//muN+gDAp+9R7tbRbcgYn+L5k2jz2edMAQ4hGKx+NIaGHAaGubYLGqXJGbr9WCYmC0kbSVBsohVLz0PDbsgcTfw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uNbRTHp7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uNbRTHp7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2489C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 18:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781288793;
	bh=+B789z/yysiQqbA3vktZKY8JfHA5H2CBBGA9WAOd+9k=;
	h=To:Subject:From:Date:From;
	b=uNbRTHp7mw2HzVIDYa5tDLaJkWkoz1V+XsniFt/Jp+R+1BS8hoi1npiTgTTTtgoGb
	 wtSbmO5LDV0Q5QkLVoo4dUchuDtV7qbIpQjxQ/XTTCKFu4s3qhh0VegrRIUaJlYkE7
	 T90jXDVYZuwiy7J9rsE+2rehtNv6dE4XyJkh/U6BuK7Z7icwud3bACy/zymLBir/9+
	 Ymb+oCUiP5ptTUqaSW3L/4TLNAAG8NI54gX9rvgKu9kdoVpxvDu8EDCM3ES7KBEp5a
	 Mbj5qYQOk+lY2aaPdMjGHHFpEk/ww4t9IBECD5Ql8bvCJAfEAUcybmAuCUCgY7gp+y
	 wdqfNvvrWoyhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8B25CD98D2
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 18:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178128879368.14399.5575634872107411871.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64af837da01e84158880c72bada8c60a997f0d724ea4a2019920302756ff207f
Date: Fri, 12 Jun 2026 18:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781288793
