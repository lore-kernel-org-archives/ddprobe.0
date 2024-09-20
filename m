Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58B21746E
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 05:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726809954; cv=none; b=IRj81lsU5dFwqboEIBAeWPZfIGtBQvvhaJ16e+V08NUrleOldZolOmJMe4gq+xztMrBeqNbr4HrnMbIgE+DUT3Mt1r9XrSoFon2sS6u5AT5T36qoj9qWYIO1VIOvayvvneHeo8fJEEpIp3SoeveFrhgOyrUWvcMPsMRFMBFsTYs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726809954; c=relaxed/simple;
	bh=F5onxTIbj7cB3KbxwAUKaT8r+kO9TUBRynXg12AvdWw=;
	h=To:Subject:From:Message-Id:Date; b=EtzkMpgBT3bUTjak6MOp8o2uIBbnzF4lYGmoQ2rAGZyLZZANuP3Fx2+fzODIb7VtfB7NdYSt1f8SIieu3P0fdo32ZC3bLCLxEA+KxEK9GLP0HqJqCmJzJAPjsJtkA5Mu1Xc/6GS+Wms5HQSIKzg9Ft864eZVmnksuY0WlnrKqjg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WWmOIOKF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WWmOIOKF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1541C4CEC3
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 05:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726809953;
	bh=F5onxTIbj7cB3KbxwAUKaT8r+kO9TUBRynXg12AvdWw=;
	h=To:Subject:From:Date:From;
	b=WWmOIOKFNHxVpttb+JHiqzmmlBtq6IERtzsVKGjmozLVsUIcS6I1ac2fw1C0/LEGG
	 Uydgh0ISJ5682A8lZt1zxMMLKyF85fDmcW3X2XP8lzVDjqU0uXRgDYliPDE+fa2JgY
	 st6bnc2clhDemUzqKZFQXv8Khk8T0pZpjaodNM0mW6nItiJcbk28bbQmbZjS7JLLOC
	 rwjwc3P9fBoGYL7hLCXZY3iRP9W2gPsEBciRuQM9Oc5yaUCmJ4dw1ghgA3mq8Radv8
	 PQTt2hI8Zb4zxULgmeV9yujKr1AU0bUle+1X+MGmvuynKqV6PKQY9wHJQOM8LIwqR9
	 NywUAcx/wDjxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95B6FCF58CB
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 05:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172680995359.18744.9656895534410173660.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8073797e64c25785390478304ac82fc08fa1d19f8d5e15681c107f0b0340e3f7
Date: Fri, 20 Sep 2024 05:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726809953
