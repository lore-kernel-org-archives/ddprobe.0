Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1810D3BB44
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 10:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770546234; cv=none; b=e4oLjVmbnqIBXeiCuDVZ/XPUaOQFrYF2dQfq5qYEbTyNCR0im/uOR3Vz/xyJ1kGFn4KeI3zv5Lsu+B3kNh9VlaR69b8YYenGTBymP4dzLhYd/DdpUkxLEOHXLI3hDFu7fykRe4m3y6PdCArQabtr+JoAK0B+ng5eqe/7nznGyJI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770546234; c=relaxed/simple;
	bh=r0jYdmyvCWx3V7i5hrvEqYmHlUAjSeOmC/jgvi/vWQo=;
	h=To:Subject:From:Message-Id:Date; b=VOdofD5lA/iLjKbcUAz5TB5IRFtYU0MtVBx+SC/Z48GGRsCLPFHdpdt6NJVX69vSU08XVQY9YtDyJSjywEx4CcHVylQrpoA+mc4eIUZDmixwC5JOwAp8AIwRzsv9F3Tird9n6fJXIxxOJRHo2uXQBcx17U9fXonHtP6br6ABXuY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QVJ125up; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QVJ125up"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A715FC4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 10:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770546233;
	bh=r0jYdmyvCWx3V7i5hrvEqYmHlUAjSeOmC/jgvi/vWQo=;
	h=To:Subject:From:Date:From;
	b=QVJ125upLS8kL6a+7LXqzaX3/OTFOoGE5638UlrUMnFNPJmUUBxOKuhXKaJiQ6Ila
	 BNBJYqg1i+BC9JdYsMxkLk+7rgA5FyYCFUOmI2gtapeBa2xYPymf4H2A4FkCc2txXq
	 NR6VofjzGKp7VB0TAnjp73jYvtSGCyDYqmAOEWWoMJ1orjqhHycVk3Z4NpDmR/Zig9
	 MmOm4VG4+3ng37Yn+/DPMKE0GT1Q8uF4yhbnn4QaqcTeTaK7OWpfcyqvXUR5wm0PBN
	 2kUTcgQAzwvLCsgzEduoWcu/DmZGzkr52NLUHZfXHXfqkkPaCxvsvOAwsX8HU/MV5u
	 wgO8VooNUTqpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95DE7EF06E2
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 10:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177054623360.18393.2193399951041825938.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0aa05a96c3e9ce95b1cc438d068da0f1db1dbf312018052c6abcb3f3770089a
Date: Sun, 08 Feb 2026 10:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770546233
