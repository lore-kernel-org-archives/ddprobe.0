Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A6437DA73
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743182394; cv=none; b=K49W0J+3oT65ukWgNOOXEmYcRdlURThaEY46HyW56jpt2R9lrsQvR0fFf7MJ10KEl4s8S2exxQkPKxz+Hyj3XeprUAWRis+h645qLEdaXhwe1uaHSh8P45yudwkhjsPhwDqf9oIy30HWW651aS/qKNKbYBVUfmEO0JLxTwCSMnY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743182394; c=relaxed/simple;
	bh=TtVNVSNqCb0KpqQIIIrydFPqiZQ9xTjLEUIm2HDxPz0=;
	h=To:Subject:From:Message-Id:Date; b=oJRH+UmD296VNFKAYYVTIMZblav30x4UPuFASk7IdYe+FV34ilqS1EfZ4CDj9lzgIC+qAEoSlUy90JKDb0T0F2YnM/UDSQeJIhJyhIDro5dnHnEI//4AQGHfNi+rXK9hBCVCvf0nTrRDKSD+lTaMWfdSx69s6FfJl3Zo5o/UNbM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ld5mXbH/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ld5mXbH/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6CB7C4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743182393;
	bh=TtVNVSNqCb0KpqQIIIrydFPqiZQ9xTjLEUIm2HDxPz0=;
	h=To:Subject:From:Date:From;
	b=Ld5mXbH/NFVPEHfkzgrRApS2BMhTtJf5oNa80uQBBgPHr1C/N11/YV/PJvFS6V/i0
	 CZi8aBrERXucyYPD5YjPK/2ZwOMMg+MiSwX8Z+/OBvm1979YNHeMZJJYM2pSjPcskQ
	 JYcdgRKHRw/LQM6lAEXa/M1G08/2SU5poDaRQZUUqfIwFc8PwOiUMYbVptrsEXwfG3
	 FcBJpZV8u9DY9ss91bdL0WAcleeq8ZJGvFo9zGUeZUlaNKdsZ7P1DC53vzF2jfXbSt
	 Z8ME9s8lzjMbN7ERwHSFLUxMPkVZfsx/5BYoiZt7V70NcmJCHMRM08twaYf5HBdPSd
	 yOyXX0IkisLiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4FC3C28B20
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174318239362.15362.10011393760943589933.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bdfba5325cef8681a0555d03aa6654c57bb231282df018f244d9e693eb6b2f97
Date: Fri, 28 Mar 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743182393
