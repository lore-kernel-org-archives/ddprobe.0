Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4892C15C14F
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 05:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787461234; cv=none; b=NmS8CMvZ2aD0xtwE8T+25c/6Cb3ijGRMu1Vz4GIM+lGzaEX822bMXy8Ul24oJSUjUCZ6abJVL0kWwMDj0G5WvlQXocilRDSPYRXDkfpDcv37d01dhKjyXd4tbOP9XUvGcSF+HIWS03+OMnAhLrJwKpMixjDkH3p2yNAo44JJAv0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787461234; c=relaxed/simple;
	bh=TBX4ohrkwUiJZ5HeFUKRy+Ny4bdGuQ6MqwVXQw7J+ic=;
	h=To:Subject:From:Message-Id:Date; b=kdzMm4DMLZOhw8Xix0NLVgV7GHmY2zJO8nDAOj84k3UIeOCL1Hgfe2AuNLuKElyc9EgLEAfeMb0JGFlohQ9xlt6OtovJ3WioYfFS49fM1rtIQ6NF0Is9ZWhhPjhz9oaMLP0ohE2KwL+y6w5wcI7e6rY2YH04G7c14EZO2j+iAoM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rAG+/j7I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rAG+/j7I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF807C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 05:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787461233;
	bh=TBX4ohrkwUiJZ5HeFUKRy+Ny4bdGuQ6MqwVXQw7J+ic=;
	h=To:Subject:From:Date:From;
	b=rAG+/j7I0myqdUn4JJtWeDu+f66YKij1NM8zpi9j1GaEb3cTbAMrjEHgJ8SDfxWHb
	 8sHluFmaajyRJLYhMSUP27hXp/1esgcIV3PlxQrcKGPIV36R2UcgAcV/v1BVsFkrg1
	 QNNbqHRA39r8ePHDAgJFgfByiG6FlBuQi/30Qq0HHX0N5ZF8p34WNNZIY18xZOl5zf
	 IjC0Osaduzt6UzuP7JNvQifePiB6F5Il2izSbeL57V45Q3krwkQOpor0twZ8SSYyQT
	 Au1j/NXglZfEaCEXEDopMTtXTEGeKuzctX8RR0bHQ/GbO5G1+SuR7VqIda0aX8StrR
	 jHf5qUeryv8RQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB529C5DF8C
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 05:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178746123368.1090.7328320650719076809.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4e436868d92f919ef2595b5e2293833b2f2ddeef59766c49aef9414835929e5
Date: Sun, 23 Aug 2026 05:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787461233
