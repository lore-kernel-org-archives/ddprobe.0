Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F97F34BA2C
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759972794; cv=none; b=GRzttR1ClGtGQsf+3i5XkaFUQf8nDONco2cFbm68ngb3tT56xyZCg3bAQpqV0GpnqDssBEF16P4e3SjexU0FhmcGMosTJO2f0Bw3Lq/lxFsi7sbcvex3aO0ULUoDc6lgHW9sOi2fDEHUCuG8lOY1nrlN317DR0EUIiMdc38ObJs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759972794; c=relaxed/simple;
	bh=fg+xOHXy59ITn61VywcsFnJxmn4sswB7h+OwjJHAhY0=;
	h=To:Subject:From:Message-Id:Date; b=ZbG4dENHs+cbe0effL5O1ZeelIjNATliF+asE2k5jBAStR8zvDbaNdIelqfFLkqEqw8W55a3rpXICdX+U59dg8CUjVNPVUPkIG+HvVeJdMHlVGW4vy+05l47yCWTQiZp/HUsVcYm8gp2ecW5MbZZYI40Ml2hn3C5WgYAWHIPqBo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eUBT/QZi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eUBT/QZi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A55A4C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759972793;
	bh=fg+xOHXy59ITn61VywcsFnJxmn4sswB7h+OwjJHAhY0=;
	h=To:Subject:From:Date:From;
	b=eUBT/QZiBV8sdKEYy12E0J0XRe6hUI4VaSkpFK154uOAz5i6vENzsj1c8sJ2BJnlt
	 2r6oLvi9KAIr0lKqXKIPCWo2by/dtRxqhoTHDKf6lY/ATqmPZGrUvpDHbNW1iuB3aL
	 tMN7vQ5stHxVyHNJhdTnJCuacBmIkVG7jWPVHoQga9oifWDIIUlp0b2QiOSIRXpGjm
	 NTMNJY+zagPsZ6KBB6ILdvbVhQ2n1XMNb/AVhi0YJqvtQ2vyCMzAaN+2KJ0gtWN/fy
	 5S+/whJR4tenNXXeVR4Pw7hhzylebG/SJKXPgQkUxBuai4wNSYYcZ4tI1EQVOMg3PN
	 qbJ6rVbhCbWfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91FA7CAC5BB
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175997279359.21074.14202510301276630569.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6c4d2f6089d43a8a21306654767a8c556820db24db5922b9f9f8a9ce8316c55
Date: Thu, 09 Oct 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759972793
