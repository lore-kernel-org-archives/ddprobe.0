Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C8BE14B09E
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 12:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722946554; cv=none; b=PTv28rJCSjuUW6B/p6bz6/vkqFNhmWvDZjj8WobRAjWsK0ROUPUaPnmu1DVFux7a7RMXgMh+pROaQZGyAjzPI5iY5tAB/rAwEf0nETIw+yKrBfHIpnV8E3klmHMVdubvV1UbeLAZGkRCjpa+q18gqdol5va33s5GpVsyULcpLs0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722946554; c=relaxed/simple;
	bh=b+ziH5BPxb+L6BugqHGKLnsfEa5J4W5VSPRlV8QXl1M=;
	h=To:Subject:From:Message-Id:Date; b=YdtHPnNACzwSYRifO21sczvogT8i4bUvr3I+jnEJ/54IjrwWVgQcLCJei7+b2X8XcMx9SHw6Cq+n1sl7ezqWBAKDkfq1YD2osK/lSMswvZcUYhPvV6nkh0/DPP6zmeUQDkde+5sTxbnGvZ0NddItI4EXo47tJtbsNR8IH9riixc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jRXnUWih; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jRXnUWih"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B05EDC32786
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 12:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722946553;
	bh=b+ziH5BPxb+L6BugqHGKLnsfEa5J4W5VSPRlV8QXl1M=;
	h=To:Subject:From:Date:From;
	b=jRXnUWihPgsyGFgdTlK6xrgDK2gCjnrgBRG7P+UfVgZx1ABMQtDk6O02MOETdro4Z
	 89OU0EESYdOXs+f+IV9c/BBOi3z/F1cIwN1FEr2MPNub0+v02v4XqdRUVkhVRZX6Rh
	 ARV2fI/sRPifA1UkqZ52POIgX0uxdlL0cHe5uX4va8O/XVS9z0VTswZPAyielqXtlJ
	 P0eA7hi+m6w4eOzk/hVuLp6yaYfUv/8iHZtZjUJiXOsq9aT+SMnmd561zZ6Tb9k8ta
	 G4nQCLMTRcwSHJSqgQgf2FC0MI+C6uqpNU7ut9tX4TFMNzHIXx9TPB9zpZC8Q9IN81
	 9BKrzKdOaFZIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9939EC3DA64
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 12:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172294655362.32680.3846959061693287057.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: def1e8aa09df6c1017846d715a35af6c3ef0f4cf438c0202bf0439b8ee3a6b13
Date: Tue, 06 Aug 2024 12:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722946553
