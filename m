Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33FE628F5
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 06:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732776954; cv=none; b=INKKFUwB3x9hOw31t+QSytP5T6q9o9WpyEwXmY6Uz2FclrnpA7w40hMOjjzQ+PrIoNa3DCHFKhDcFrqq6O+1y8/Jx0BKd7QW6ugf1T2DdIqC0fglFOPuuc4jsFmoc7NEFaCu3a7gawO2bgfM31VY6jiVFpzdFj6Drduh6u1nIqg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732776954; c=relaxed/simple;
	bh=CiA56oUCXGgmNdwqM7tmJ6XQwedww4uaiIiTqtWoLxo=;
	h=To:Subject:From:Message-Id:Date; b=TyKM4w+Td+2QR+Ry1gkHwA57YRHmwyeXmoFycQzqSNhJNl1MS58n/N9LiaAX8TmhcZzrrT1GjC+qrY0N99EzKnMDCziALArV5/BckxQYCWhBTnsZqK1aSlyvjFnLf2WQ0nwUuLgIgo09iFSUOOCGSqUtuIZZlifKBZHRqZnuEbQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vPtEERgB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vPtEERgB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCDAFC4CECE
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 06:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732776953;
	bh=CiA56oUCXGgmNdwqM7tmJ6XQwedww4uaiIiTqtWoLxo=;
	h=To:Subject:From:Date:From;
	b=vPtEERgB0tOjqiVxxnBH4g5fnQIJz7qw3Vi4P4AHnQxC/bFKXgIYCBHbypOwTaDjN
	 FwlaFeXd0xr4erkvtVpL/zH9m9D7s916QltfPNOecta32vyAf/6iZEdlBxveHbNDdE
	 bFLly7SUkOE8suZhcPRX4kInP2Lns4OgUXMYxZQZjBi8ecQcBZZp5/PdD58EV0mGNQ
	 AO+py7N8rTwTqtvwckg4ZY4iQwA1+WFj9kiqGf2ERrvgez1AT63mBeN0o6wgDmd4FK
	 j4h+gLznTjBriVrmFzVfh3JIEWzQ5U2/jnkjluJlaewZWmRHfxT8C8hdQRZH/w8Ia6
	 yG3ZpPkNnn3RQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEF5DD66BAD
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 06:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173277695370.10108.5878114809455759302.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d53e6628d2a0e855712f0e977b1f3b1434d07e975f912f4a769a70d84af15d7e
Date: Thu, 28 Nov 2024 06:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732776953
