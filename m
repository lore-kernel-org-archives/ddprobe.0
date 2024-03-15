Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E54FB54901
	for <ddprobe@lists.linux.dev>; Fri, 15 Mar 2024 21:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710538097; cv=none; b=uTaMGr9xIx0ePukHhjwn9EkXX9NaqvZVLccVTvr0oBinD3eoszwnDEPNeHZi1ptlhSTSdQxDxvnIY1VvPSmrg/CF5VkIpkhCkIBae/CWydG8w2bFKQ4mnzMWn/V7NwqaO+LJe3UWeuQwudF+wZp0TG00QcvfIFpURth+6oBWaFo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710538097; c=relaxed/simple;
	bh=5ALl6+wypI+wMhps0zpKrqICGU0e0OUYCK1F3Tu7xCM=;
	h=To:Subject:From:Message-Id:Date; b=gBof7TkKBOpDPSGEXV5DCrhbwmaI/biwo6O2276cdORlyFc/FVsQAM5uUGo6d+f8u0XVtay6AIBUFubWGZW+Kf4aUlXj0Lfubk1jOHBbR/be7YR7zoym9YxHi/a4IrydZ4wFp69y6ojvkt7hc1xpLeCW7b74ou5nSPiaHdB8Vso=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qpvNQI5V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qpvNQI5V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6ED30C433F1
	for <ddprobe@lists.linux.dev>; Fri, 15 Mar 2024 21:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710538096;
	bh=5ALl6+wypI+wMhps0zpKrqICGU0e0OUYCK1F3Tu7xCM=;
	h=To:Subject:From:Date:From;
	b=qpvNQI5Vivwt3vuNAiNSShLiJjqvDe9COZ8P26J2iV/ylV0EUIKMr9f1hgkWSptoa
	 h3Qhd9ZgJ4Hlo5vgZqS+whpI8/8IWeUu0nXISUrwreNXwDdOlyuXJCJxt+MNhd+bd0
	 hptMWj8noXJeTbMWxw/yv6ALq1P7xxwDIBE2iVKWEF4+c4CxRUdYgAi6Jea/L3tZEe
	 zdJ5xhgnCjl2zWCLyroyHjZgXsr6LU2ae5edWRs5uVaSzEpsA9eR8WDnN64p09JR38
	 8agSaleFIRvSc+VsDHMp41tOzH4cmk9vFALMvjaj8SXoay+/sJKOoJq+UmyxBjl+fN
	 UlwIDw+V9wcDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E545C54E67
	for <ddprobe@lists.linux.dev>; Fri, 15 Mar 2024 21:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171053809637.23754.6344064886323367414.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3626538b0748f6ddb0a8258b2185da7b832b1faee6cd2ca448e0d36a68213fe0
Date: Fri, 15 Mar 2024 21:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710538096
