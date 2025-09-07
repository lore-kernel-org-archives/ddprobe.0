Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E6B9157A72
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757270994; cv=none; b=N8Pzq7dY8vwOIqZ7MVwqyLf47e8O8ec8jVyPP8wmZg+e348bLvBixom1BRe0SOIa7r+PSx4W9VZFC84XWST/8M5VkIeka6pu7UMK2HdJFDAaBk7/sK9KgQMVWUI93UrzbJS3dLquwqyljb9FUPlr8aw+DdyAQj2YQjBwsb64s+I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757270994; c=relaxed/simple;
	bh=v4UeXVxwsqZoGCkxhJMtfFkIm7rmI2Ys9j3Op3tYP+Q=;
	h=To:Subject:From:Message-Id:Date; b=ihZf/OjxIOakDtnsPu7E1zi8uzTyX6SOuOymWOJAOaaO0OoOA1wmDknHrx3BD5uFl8LFi0m5Tg5KlX+26LA1cOnjASo1GB27B1Scm5fteOhIsYi+JtgiWACMIueEysbAi00rzBnIdNiOSqzxuTVckbcnzO1KFj9opbNk+esvr+g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mBTnkvY8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mBTnkvY8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A647BC4CEF0
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757270993;
	bh=v4UeXVxwsqZoGCkxhJMtfFkIm7rmI2Ys9j3Op3tYP+Q=;
	h=To:Subject:From:Date:From;
	b=mBTnkvY802uBeb2VcprjMKVoaMbusT8rgoy6y5G3BbjhPUKmylm9NjpGLOj4eK9kc
	 VsfgJpWJtn014DhFY+1yFI59llSIRZ1A6lzqMW0LisQXE46X3OEqshVZzX49XgUNDv
	 zbDMmcyoazx5P2hEVU9tKfWAWc3H6JudzzJPy96N2GqYvLTDzdUWDb2xEM6a5NxTKN
	 9GQ5X3CZYWbKwul3vwlG32d8OJmExfpH1ouj+LbvoRHARn+4wUANinxr4yQx1gH7JM
	 gV2Q87vlnHtH4MjYNMptI+TgIT8Pci6ggGn703WJyoi4ndTtYbuIfYN9FGwjLonfNu
	 xsyeNXYFlPJ1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F9DCA1017
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175727099357.5874.13207791143621187769.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d97a3c230e5c6704141679c0468ee13e0de6f3e79ef5f90818a6ca0d83ae05af
Date: Sun, 07 Sep 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757270993
