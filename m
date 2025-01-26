Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42145153836
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 14:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737900355; cv=none; b=deA1IkZ1SVR7ogfe0HNY0H1ktXQGGPwy9sq6YszZL0KnbuAtJVFrwQ0WX+VfIld7ZcfQiKqSe/fEppHCU1yDGbIZe8CumazRfvKQBZoXFvMCzJyAAUmVcoGQsloCSLi21susVTFcOwvWqWzsJkdpUaAN6+5UzMKSrVYPG4G+arY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737900355; c=relaxed/simple;
	bh=QrLoUBaXWA+RpJrvwjLxNKy6L5/vIAJYNH4CtePBB3I=;
	h=To:Subject:From:Message-Id:Date; b=niOx7B0lB00cX5H2MoAiEM8/OHsFHiu3qm7F0JVuW1P6NNo9xx8rAsJzhC7YWXrZge0qMag4jPYg7gutNb26zVK/7qO/U4zFBMAriNQ3GMeCpYVTKLq+v55O+SOw7y4b6OIOfYGYBvLXAx4LoyTC2cNC3/ykBZQUPhDqKiP3WE4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YJZ0lscO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YJZ0lscO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5FB5C4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 14:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737900353;
	bh=QrLoUBaXWA+RpJrvwjLxNKy6L5/vIAJYNH4CtePBB3I=;
	h=To:Subject:From:Date:From;
	b=YJZ0lscORi4HX6DhTCvmdj5I4rcWs8u3G1S1UDtpKrGzYlhGpAdlq2Cxeup1mMjGN
	 0qfItaffpiAdf/GFzuadoJuOO9f8cGXEERWkIpQ0RPGh0Zx+cqxJqWo7RtpO8ZsL42
	 5RThRRInS4qzQsrIZ33F/Jccb7pDIYbf7hvHnhzwRC7p4uZM32Juf3kdUBbhVlfe3D
	 kx3lKbSfv2VQv0zBjbBaEs/CjmWhlhY9yJ7f7Kzv75krEXaZecWOPVMdC4k0hjMOeG
	 u6WA40DnddSb0g9FcXIIRmT5vn6C4EnpAZkHWbevLVWkIionufmGIDQPmXpEq5Uacx
	 Tr8wYwTQLAZOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94EF7C02181
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 14:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173790035358.7922.4557398237032148721.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 333ac3eda58cf5428416516354bf22c557c5cbf71db66ec1a3ed1d163cb7986a
Date: Sun, 26 Jan 2025 14:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737900353
