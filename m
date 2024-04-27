Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AAB810E6
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 20:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714251143; cv=none; b=g6WG0oTQzQT44PrjESDibh+UJcXPCeHAQsDuzxDP0f4YSa9JZwSbRuFI095moAwcmDyvfOkYha1g7SScIoVNiJHny1FZ7EL2HVVhfhfpY417435L2N9nGFihFHuW/GCJBsYjloerk0azegeBhOzUeh5cL/VbQfXAB+EQsBDeXbM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714251143; c=relaxed/simple;
	bh=OS+OPwQsc3TZfqXwbzJOicfBEROy9awndXh9L1B0vKQ=;
	h=To:Subject:From:Message-Id:Date; b=AYZ3nE1PIIwBHoOaqRFeIfKOSIItIh0tWqrM6V1IhtEVhND+4Z+IR4A5+ANQE1frnDQvYg1U7HQMaiO8w2FySpbX8A0BciSwjIfmVoZI9tKeQzzvt33HgTtahIKApC1Mb3jycXLwTuJDzMUxMCOIWM8smrUDeL8vgDP8DWB4B3g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VjpSb53U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VjpSb53U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5B67C113CE
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 20:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714251142;
	bh=OS+OPwQsc3TZfqXwbzJOicfBEROy9awndXh9L1B0vKQ=;
	h=To:Subject:From:Date:From;
	b=VjpSb53UQtf88abPqIRS8cPZkqsv8nm6jqrXtVt6Bdxo3swjqW/PMBPfsHUEtjcIw
	 kIHrzvkAMXH9fcrolPwo3SB9ohJoAEvI8rd60AgSaFZStlnfeOXvmXVsIDdU4A6fQ0
	 tr3yd4u+xWFhx5SAUnb6lFnwJKqOed8xB9Y6RsZZGaK6Q/Vf+yTE83U8dzT+PEktd5
	 COAfizNuVqG7aOvepClhFYe6K0nk4gh0vaBoz8WqWMx7QWEPNuSV/9PvPGB1+4k4VA
	 0tRXvMIOfszM5aH36VxVIt5Ob+4gHkZrz8xyxaNk4vkpi3clwE/IfKlkR0AkO0TOY7
	 BIfT8G/qFLOnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFE75C4345F
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 20:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171425114276.17479.5002625432558114409.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a538674ee478f23bffe6f9d561d9ec0dce932da1352882660864c72cbfa3c0e3
Date: Sat, 27 Apr 2024 20:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714251142
