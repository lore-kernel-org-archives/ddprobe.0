Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B133189F5B
	for <ddprobe@lists.linux.dev>; Thu, 29 Aug 2024 23:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724973954; cv=none; b=NHaJUPjLLVy76u7uzebfhYU2C5kFHhjnSeSeLer10irPSyP/pdDQYt6WdyFjB84WOFSece8QDKOTJtGCoqN2qG0u2RpkWpbAtts9TcDct/UlgFYjejI7uHxvmLxxyp1IbXNmaQZcr0c0GB7hWNSi4+EnKN0QbVSEQfjlwiQjMbA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724973954; c=relaxed/simple;
	bh=JtjMAoEwnER9GW8h2CgGUclU0zjlqh7myDmc9nKAVyQ=;
	h=To:Subject:From:Message-Id:Date; b=HyKcy1PWG3QtO1S/7q+nXTIqZLstXgUGVJGDvM4Xo4cMNwd31go7t4b6B+bBRCKerfpIHTLExB/YUO8gsjKkouDqsbbl+E00Uysv45MbRjq5ouWsgICKncZPqv9FiE+7jTmQaKIEWm1x12Czi3SbHNOMsksvUGL4Wbi35NiTY9g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bH85GKfv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bH85GKfv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9855C4CEC1
	for <ddprobe@lists.linux.dev>; Thu, 29 Aug 2024 23:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724973953;
	bh=JtjMAoEwnER9GW8h2CgGUclU0zjlqh7myDmc9nKAVyQ=;
	h=To:Subject:From:Date:From;
	b=bH85GKfvTqHQgi+E+QkaHZt/5uCz4OwbJoC6Ap1QFz6WGAy+zGMGCwSwHKpuO8fWO
	 C8eD/Pp9wL/4YoJ4EQaSvOPIQTcVYYEr/4M6vy3TpF2kLaqeCiX0uIKgnbMY9Qjg7i
	 zTSurR15JOuHyppDNldIfdozhN30bpaHhmKyU61t8LClzEICv5M8vWfxzwG7xVU5jY
	 cbKwvpBYrmdt2nH3JeA/s7InoZXkJ3VeqgldwJ9Zkl80yAeqQU9exslTRM0UFcyfFF
	 PlnrbCQsLhDHRE+FrKa7EO3q1bxLswbTWx8i0uzPljuD6RyaDowzMM6Q1VDgZqoHlY
	 yFBquXSjSvfpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A181CCA0EC8
	for <ddprobe@lists.linux.dev>; Thu, 29 Aug 2024 23:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172497395364.29578.4594164298917983724.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f851669a894da301fcd1126e090c0f4c391c82be6a519aa7248688de693b1a0
Date: Thu, 29 Aug 2024 23:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724973953
