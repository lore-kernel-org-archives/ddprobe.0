Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 377693507F5
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746493194; cv=none; b=Hk/4RvvMFh8vM0ocrzOHn5IBBMbWUukg08H99KpLkXNYr/03tVMB/YhBeeh+97V+VNsy9CQln0BisUWRlzKOvRNMpxq468trvzgR92VtsTgjdOs1+t5qIvzYUoBHkjJ71CAwssHkSlJ1B+edSVYIaQJpGq2YS2Ioqhor8tjmz6M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746493194; c=relaxed/simple;
	bh=+yGX6E92pgLWMdYlsK+/vO+CYBmwH1/s2aa69j70LIs=;
	h=To:Subject:From:Message-Id:Date; b=RRFY9vcU6adiTPkQa5ILMyexgHRjh1SADLg7qa9RdyiUM/kVBJn89aii2E5wF+UG+U5J2hvO27qyIhO41eXCdWDkoUfbFYb7P6Z8dIvSPc8g6qVFLa9ZMKJmyk3ZUqc3M8LMpOOixUsPh7R8X0k2jZ/nuuN5oSVtlSjbGFRZSOc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OlheuyRa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OlheuyRa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F5AFC4CEE4
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746493193;
	bh=+yGX6E92pgLWMdYlsK+/vO+CYBmwH1/s2aa69j70LIs=;
	h=To:Subject:From:Date:From;
	b=OlheuyRaBAFstOTo3g7XZyyNcW1cDqbvLl8W2pPOq0D8Kmb9FxKGqWVdWcPV0ZXsn
	 QOWXrvR6mAyHjQgL6B00mzt1C7AIJf0kBn2KufrkzWC75IxZTCZdpVMb8VE4bVOZxD
	 XB+GPIFPBLCya4ICP5ygxVygsJk4rDP6ih8kjzq5hoxnSr2MoD/Xx4gLUXohuAbZt5
	 3DUfncv3EW5P5UtoAFkF9M3j/wkCIYAZ1qZdJmnqQDe2to6DykaI2DM+tOaqklOkt9
	 DO+lzzF/Q4QRYjqcQmMQKBxaiph0zWeAZz9a0bwJcn80JnZwRhjqLHY23+TG2LCIJn
	 wcZtSHw+UHOTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E296C3ABB6
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174649319357.3383.2256307154478310694.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47bfb23709bdb27e1e3a4e675deffcbb29037d99c93be73ad7e7cbf1df963ebe
Date: Tue, 06 May 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746493193
