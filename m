Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DF04182DB
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 05:29:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713072563; cv=none; b=Ru/SS3dzhPhq0dLZkpjli4Nrlb6voo57G89uFe7iwysKHQ1vY64QhmpvLokIWH1UjgEuG0iqTqBGCs3kzOdcwCNi6u8d0dd7lmc378U4Ll1/koStJt1rP/UW+8Yv+qsAOIMDZv+p8jw5dKnUDj3ZVAtT2NhL+P6yyMC/wt7zYFs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713072563; c=relaxed/simple;
	bh=plAkHCm/uQUBnewY3WewIHRdheX6TBdAtu0x0CYs1ms=;
	h=To:Subject:From:Message-Id:Date; b=FWV6Kujo/mt71ZF69Wdk0qJOTWwPS6h3D1/NMeU+UHXa8nO08GU+pShnpOBhaQ4r3MbwbrrG/r0kuQqGvUmT139fTIeD3d+EXdsPcsNHj/q+qBgIo8R9kXeDkXqY0lNeb7hRCUvWeFAXffWf/WTRZvTEEwesIiSYUoNf8rmEmCI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qzW4Q5aj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qzW4Q5aj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D89D9C072AA
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 05:29:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713072562;
	bh=plAkHCm/uQUBnewY3WewIHRdheX6TBdAtu0x0CYs1ms=;
	h=To:Subject:From:Date:From;
	b=qzW4Q5ajmTSizLhz4qbHIlOF6xi6loMByavG7WRESDIp1LBMzaBmqGPp2jzUs9pVk
	 98oTmtzCWHXeZYbKU/DEkkSsi2ZHY1lY8p4DthTA6dUZ5LjapfThG6mcnxmF/BdYZm
	 TqNHFnA15qDLqsjoRoWgGtwaLb5akpXU0Q4zYG60txOYKthzNkRm8Whlg8mZikf1Mw
	 hhUW/iw7XKsGhrYsUi6AWTBZB037xjR/qPizHNznloLqWPYheJ1PIgO+XaE+57Havz
	 lhZgjoiB4APFW5klmO4nIwM/uR/EV234zfNY0vd4p/NsTbtbB9PYacTek5agCLBozQ
	 ylCEmgqz+LMUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3843C4345F
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 05:29:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171307256276.29372.13446702534276972483.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44da386188ef78dd13fecb95c5a28443f07a0f65a2cf198ed14f1a1980403a13
Date: Sun, 14 Apr 2024 05:29:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713072562
