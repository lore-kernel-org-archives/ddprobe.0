Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2200721423C
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760755794; cv=none; b=eFq+uc15Jr6RL2Zs2CvipUJa4OnYylXhltFk6pd4WB8b2j2XiQFtvVoOu+dSMCAtk84tHAqD8lB4lLy5XhVsIMhEhLYMGQX1KwZe39UeJ04sWgl177E31THZNfGQpZSkad/5fF84pBskGApQyqWSUFHackH7qjr5eoW6CcQafms=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760755794; c=relaxed/simple;
	bh=PPCZrQdE1w4y7Yw9XMpK9puY51XMib8kT7ZQ+eR/bBY=;
	h=To:Subject:From:Message-Id:Date; b=EGs+lt+CjxDg7OVSHLv5Hm/aGSidSz3ArKGq5gBWjeDU4cti1amiEdZfidqmHxhGe6/1/f1rWxyFS6Zr4g/DhO6sv/QiYHSOn5F40UgXlgu+xZh3K9EdM81s+FPBw+vStzi20Ijpi1ciOEe8NJ0CGyuPnVGcEirs7VTlAzDJ9Qs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xl3bp30J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xl3bp30J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1330C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760755793;
	bh=PPCZrQdE1w4y7Yw9XMpK9puY51XMib8kT7ZQ+eR/bBY=;
	h=To:Subject:From:Date:From;
	b=Xl3bp30JirPSD1i2ApsrDiQZeKcjjvfbC4FXWYCkaWT6Lgwrhjf0CSoSgrx9AYTed
	 Ztq6DVNKYwxkes9Tbtx6jJu86kU7NJh9sVYiGs3tFxs63x7f6XPC7Rn1KkALpwnxay
	 m/0smqJvajRMpId04kgq+bmWR9pRLWWCpFO31RqhIXvlTAn2NF3ERIHQKT9Yz0dzk5
	 Ol+TumRbsNBZv4MBeDutEDQx4EOY6MwL2txeOJLrTm6tAw8EYUdeHzZ4su2v2kpplQ
	 6yUSEXDWeNsoFYittnAz3gX+rXbyZS3DzSA//QR141uZguHkvvsHm7TuThTUBeUlu0
	 NrI0haJQwFQmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2F3CCD199
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176075579357.25261.11202615173043692262.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 219ffedc8759756cb146bc80e27b146f9a100a22560a71d49c45a8ab4f1ee480
Date: Sat, 18 Oct 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760755793
