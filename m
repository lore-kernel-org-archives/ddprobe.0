Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02E882749E0
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 13:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769693034; cv=none; b=qoZVJSu50xec8OEK206gFI6rLKa+urvv0oeec/lGc+vTrtfCajtHTSOL8WyG8ZLsdJoMoAtfUIdQr2WMBqOlRopsNBafU6yiuD6GPnqkp+Cidb41EHcJW9W9AaadjIxXBcZv4qqTrQAgqg5LXBGOQKiZ/A8mJKGfs9DWE+1rz1A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769693034; c=relaxed/simple;
	bh=uG3fyUyLy3AesYv0n0+4hsHplnuEerYWVswodoRHwec=;
	h=To:Subject:From:Message-Id:Date; b=U00sK9bCDwmjcwPgU+XGkAj/Ytr1qc34N8tfMieVmikb4raAnH0jJv9y3rOOwePt3xKlblzCDCGRY8iBqqZrpx6A/neYbVjgyY9XkQaG9Ds4/kl1XON78YtTwwitvYYvtPPhO4C8x3suOtH5m5gEmUNJ3GvRQxQmpOL0/OGwwLU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V+XKZAxL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V+XKZAxL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4BCDC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 13:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769693033;
	bh=uG3fyUyLy3AesYv0n0+4hsHplnuEerYWVswodoRHwec=;
	h=To:Subject:From:Date:From;
	b=V+XKZAxLJWMUpDBSxfSm5cRfhNH3VUteWVghU5bVC0ntleXuMmIPpMsTTmDyRcNOh
	 u5IBzYiSMzRoSTWHZSGNxSBbDf2cMCiTzc5+h81JVUmoDYhKzVdG/25JDBIrTLth0T
	 Rl5oVCv0o2MAOiqItA0LKoPIXkVFpHXelncbcYXtK3RfQvUlC3iYy+KpgakKcrTjeP
	 GHlgzsg0TPN8P7Q7Wy2IWnJBps6rfTywhb0i0ZiklzbbinWgvV7gMpz3NJPm3rrF4p
	 YSvLyx8D2NY17OdQ6AJ5LX29hbaBbtttFlVS1fhy9mvnu8h3tPMazXrtHif7TH/mOH
	 9za3HmLvRq75Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95DB9D61011
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 13:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176969303360.25802.17636691979841975764.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e86d86e256fc83f6429462bde0a85da60f6bf7755fbe44d4629dab5a02a4e4f9
Date: Thu, 29 Jan 2026 13:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769693033
