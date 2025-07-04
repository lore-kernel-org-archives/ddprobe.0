Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29C4A57C9F
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751600394; cv=none; b=s2/tbINadL8Gnq6Wv814ib4vhjrbRJ+DJ0Y37gU02qK0ONb935W3tgMoPdZPT/t8lbMoAZ1kc+toB7wjXYfM/3ami4eXxTVJrzxkAUjAeqC74uTYwWLirUwDhSUizw6iERrH1NyvwDDoR7BSzBt7hz5tw7JO2gryDMAJp2OjCvk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751600394; c=relaxed/simple;
	bh=Rck5A3GOO0/5LR08U8MQkxuFW3vOlpH8jp6Y6iJMEj4=;
	h=To:Subject:From:Message-Id:Date; b=JlyK+DU4yr2SsSGTpROqMJKjzGmIcaHf9xLcmnv+FfQTRhaLBmG/rgW2OT5flcl+Klu19e4qU7FgJrSBSe3AvaZYuGhuipdySBofz+gv2iUbXBFKssrzf8wHYjL4IsV6A1shKTKyQrVv+yECoT9FkjwT3pg88+MSSFmiYa04JaE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LsuJmluP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LsuJmluP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0947C4CEE3
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751600393;
	bh=Rck5A3GOO0/5LR08U8MQkxuFW3vOlpH8jp6Y6iJMEj4=;
	h=To:Subject:From:Date:From;
	b=LsuJmluPXOeqBagpvlDlHx1AdPFrNUGuToa8UYKju3wQhu4+d55DplXxff4qQgJfF
	 eoZy9PsUHIl0k0brG3kEhpGZSOFrZY55mADkKkdjixCICERt2ULN9yXPIfwSHtbk4l
	 KnVsB6n5wSUCTmpzifKTBXApWREMbo5azidoDiPd+UVPnmxvU3gwpa1g0BLuMscIfU
	 rP81helszobWqTTdYiOG0Ot12VFuWUkB2os6rGw146tyZOUWNGoOcdbRsuVTeysrWz
	 vwCZ4Vtpj8UhPjRF9Ym8WIietS2aa1/pcemP7+MZXLHw4TZeym6lS06Hov/t8u6bys
	 kJa9pLtH3fqRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F28DC83030
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175160039357.22134.6356630738671508908.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c8f686f27c8bbb6839e59ec38420b63a392a90120304a2d3c5125206b4ccacf
Date: Fri, 04 Jul 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751600393
