Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3045917BBF
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753583394; cv=none; b=Q4CBtaK81CXWU94OY+MZpbutKZyv04UyXWwIQXVa55g1V6dZCEF+XlZ2bHsjwrQe4F1bOq9ISwy4RfhFnOoMcCBhZRfYtdeIa2pb/72Gw3PzUSvmnhyxojhfZrNONml+aYwWz0Dw4e9ijqq6OjW5oWnXg6XGkWOk1T6Knrc2D7E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753583394; c=relaxed/simple;
	bh=ZZayoZATEkMSrWejELtqyzzKyzcRR7x0a7fD/Jqj2+8=;
	h=To:Subject:From:Message-Id:Date; b=gRMoJr9mgdnQcyHd5DMDW3po8vz+R/z5osFaDkITBovg+t4E9gBKuP0dqMhKniSYCaOoF7hgzC2sVeqLBAHY3Pou1prNEN5VD/huLwsJAv+LTJh/AJRNAkT3w3kIMvw3ztaCEfNw45FUohSmcDM7Dy6myxfZfjJVrdauXcMVs00=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JdWd/Kts; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JdWd/Kts"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4D42C4CEED
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753583393;
	bh=ZZayoZATEkMSrWejELtqyzzKyzcRR7x0a7fD/Jqj2+8=;
	h=To:Subject:From:Date:From;
	b=JdWd/KtsaINNZ68Ywg/Gtn5YuWMj0PzD2KUAVMm9Y3a1wNc+5nhXAv1Dzxbl/k4XS
	 nKictFQJ3Pe+PZKzG+2Bj+1UJ7yXQqJh0nXQY2AP8xQeEgQTOAw8DUK/UY8WSEc1L+
	 kKh7Gx9Dqeqr3+jvU0mlMmj+xCzhooJ79dXJQSTQ9q1fDhfSnAPFNmxRGMkWMttDOX
	 /dQCGJfAz3aGzWbyfzeGl5EEav4m0hpt/U7lXxRYpovLw033ab3tiHIoqcvL+EPr20
	 zAkk4q6GCDapkW6DzsW1FYzkNhvpneTRen5nLzQQVAyJpJMJ4tyqfRFqOrvtGJ+58h
	 kO0rd8QaxFJ3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92135C83F17
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175358339357.20693.5053819184364976372.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a91a6f896220841b97f8412e769d4d7daf5207dd8719623c66146387ef5196f
Date: Sun, 27 Jul 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753583393
