Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F81442065
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745711394; cv=none; b=DRrb0ZLia453ROkJUXUFo0+alPxL0EXOcqYdqdsUi52OVocKtIAj+wPvakF4JXdUGcHWN2Fsph6uYMtaIQ2ro+gxQGcG2KeyjOzCXdcBw0GcUP8G0CHpc89LDwDIxo7FIhz1m9NhvzbTXIfJVVK9REWpT4rgnqGeszyQZp+noTE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745711394; c=relaxed/simple;
	bh=5AB6dSkmnzc5p2JRg78602qUPxOTVBiRttW8my4IriU=;
	h=To:Subject:From:Message-Id:Date; b=ut7mHeGfkvKb70/5H0tZIqxfM1D96wDk9+lDUHjeJeNX+DWeXl0IxmWxTAWnVKR6jZvJikXyh58JxCUZiYEUiVzyW2ipXZKkArNcGei3cM9H+S/F5aDlt/VPh+I/CDdRwNKAhrNl8I+96Cxz4GfhZVVSlSnONwG7dvVwi7GPmoM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mf1eD1K1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mf1eD1K1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F910C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745711393;
	bh=5AB6dSkmnzc5p2JRg78602qUPxOTVBiRttW8my4IriU=;
	h=To:Subject:From:Date:From;
	b=Mf1eD1K13RAreqQdBMKLhQ81xPVYdcor57TC5h7n5JFk3+YuKcaN8J5QCEBtfNwE3
	 dow9pn0Ecdfjw/m+zccwvEEc6CdvzjKsFUE4aGaxMHzKZFREgDS6t0I0uNNN10pVCX
	 LQZ76syzCuROTzoa7lDqveyYhjCTgrOdRiiBWQZmRwKfyUC0d3Xm4jmewGyrT69wnM
	 26ktwPq8JhZJQ/AZcj3Npd6jawgDtn7tnUH/92xAr4ACKH4U4WxrnHHB4/ksYLozRu
	 Z0uOMr4Xs7Hrj2gi6EPmv8qAIktgSny7GxC0Baavj1rH77KxuVUPhdwqgWAU/VkQhU
	 56Es8E+MQ/ohA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E708C369CB
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174571139357.30778.3881129725530555003.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19e9ef9a0ed5feb2125eb1fd8a66e421f55e1b034f682ba21fd96b6314fd964c
Date: Sat, 26 Apr 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745711393
