Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 307CC288B8
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 01:03:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780103014; cv=none; b=ovu4xywqDS+Jo3ewYwdPPgZUxcvEs3SYR7uJ7wu/6PQuWN9aQ9xzBUQr8/iIEmRWF2CjTu7Uy0i7nNpvV7/FnNJ0VlCDV7Acl2LDBWzJ9CuU1v/uEwh+aaReioi3twOpSIA11Mop+PrZVLZWmmn1wahWd+hJcu5D+jyG2X3jkCc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780103014; c=relaxed/simple;
	bh=klEUXB9ZI5ywBmVAucSNEw+dH+3vyYkr1hFQYGCgHW4=;
	h=To:Subject:From:Message-Id:Date; b=Xvqs3CcByXYr5bFw6r5QNy9kgYLrZMgLku9bIH8ER6kUHPomVEwML/V1LkJMS8RPTrVvj/gAJcRTWfxinvHtmTYYoXBE01RlfMYhsVahv5YChdggNWLYq1lrQpAWMg6nAAUvARDwPFfP00coaZR8mQooT47OmsKS7Sp9Fkq6CBI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qTLj+erl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qTLj+erl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C921CC2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 01:03:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780103013;
	bh=klEUXB9ZI5ywBmVAucSNEw+dH+3vyYkr1hFQYGCgHW4=;
	h=To:Subject:From:Date:From;
	b=qTLj+erl+Id9ygKFKXLXwUsa7Ylb4Hii98EtpDuxkwxco1num8aKWNtv0OD9AM6Ob
	 KyTYbjGwIuMLhlR5EFODi0hA9q521o7EzpCFdwjXRL8m2SFnCiyC+4ogXkHiEPv8Y8
	 H3Fmi4AU2Zxl8g4KwLtlNQq0rD+PKLT3mZRxTDIat8/Aftkjipr/fOufdAZom4xQRa
	 nThYVhJxtb9polC/GiJ+R7lZpHMdwJUbmZzrbVEbjuAqJZN/bmHqawIOgKrRnjcSH1
	 qH6Ngk1O2MQTMM8qLxS6jnAV+6adoHvjWGGcB75dVzdMQTPX3Id+qi9fkSJkxmQl2/
	 RoQpLoKvRKY9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACD36CD4F54
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 01:03:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178010301368.26263.18041173041848579743.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99783eb17158203f3eccd3325a8ee579f35478d94fa16d3d61887bc6ef092ddd
Date: Sat, 30 May 2026 01:03:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780103013
