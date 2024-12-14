Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24B9C1AA78E
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 22:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734216354; cv=none; b=Le+aa9PwsM7qNxNaF7Qa1re0hkd9huhHUk0ADBNhD0DJX+ws9wIDnc29t23XZdH6EltFzgi+ZNbERMPxgdEWAZ97KGxlgLgj3mMgVfveoyuM9JNdrtQ0v+NeHtMUhcRif8UtH5MmfevlnCwAUjpFVtpLnDNvp6AHtmepQPtCA5Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734216354; c=relaxed/simple;
	bh=gHs15UDXMhCL8zMmk4p0uzc6sSXEiHuiN24MUTe4A70=;
	h=To:Subject:From:Message-Id:Date; b=q8LJljgr2Q748PRqX433EY77wpr9r/TJhWAemgopQInNSzbhrsu2YglAuHI8pdO7NFcuS7m64h9CdhGSeCOv1eCvGuxhA4x1TpW5HIPsKHe5IvyFixxgDMftHHMcSrAaPRibDKYU6uzrt13NpG3Rb9NqaqSW2IlPccy0iyusAQs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tdfZU9GW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tdfZU9GW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACB01C4CED3
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 22:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734216353;
	bh=gHs15UDXMhCL8zMmk4p0uzc6sSXEiHuiN24MUTe4A70=;
	h=To:Subject:From:Date:From;
	b=tdfZU9GWlm1+NdN0Ue2yHPpMabHW6anK8kq1o68OdzjJnEiAU6JvZDP+xAnLA8J2p
	 shAB42lhvkzEhfY6Beq7cZtSNtbLzaKi7dZBQDPDBk35VgsOxpTUEyRSSy2e0QzyCJ
	 rMVDUQXQI1EG5RpC0tdRXJoUkWNqGEhr2NgmMAoEqPcXej6dhKG3EFDkSwMNwZzm/p
	 /QwV+XnBzijnXAir+lzknJ5OKRv0FP/oXoL1CB2oz5bRK0F5bmE1Ty+mbz3ZN95D9i
	 ajr4AkAM4O4Nu9gLcffzVg9AxM6paLgzn2hT5Zw8raAfJ5GAZvjR0x6NneAbOt4cY6
	 yDVtmFpWNNE0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98D94E7716A
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 22:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173421635361.7983.18015191819953185685.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 716ae7afd01b468a658c80a15d4e4321d4036a1cd491b605784d0cfc083fd061
Date: Sat, 14 Dec 2024 22:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734216353
