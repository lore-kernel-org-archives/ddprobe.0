Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48B9E3B3BE7
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 17:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788714634; cv=none; b=VM6aVSGK1P2UDjeoljtb2Sr9jgc2IdzLKz9KP188AAPj457m0CaUX7IC3BVPaAXOoU+LkoFgeTuKIDHQOYL1wGPALFX/Q3NGpa6h1iPPp7Qux8ifA7QfWcvmtS63KA4dfor7soMyNma8h0n2Cm8yylAuODqQNrhGi19En4rK0kY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788714634; c=relaxed/simple;
	bh=Ojl5lqHMMktyc4R+3yRodMGrW4Z4MdeeeNBAZ4sAp7E=;
	h=To:Subject:From:Message-Id:Date; b=luMXXn6khyK1nd4OVi8Wnwr8So6AcULgshYXdgzRrsT6/SNBWL+dwUMSLMHVq1yHXzStc7PzFYp/e6PWGg8n1DYI01Vy00lWoIDGkRGC8uZfqPxiIoLlIE9+PgeZl3lUo/adAXWPHA1X9z0BqF7Nj49p3MayM5cHHjWH8TmXKgY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y1Cgc+J1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y1Cgc+J1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CED79C2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 17:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788714633;
	bh=Ojl5lqHMMktyc4R+3yRodMGrW4Z4MdeeeNBAZ4sAp7E=;
	h=To:Subject:From:Date:From;
	b=Y1Cgc+J14YpCezKlW8EL6z7VHVxHawoY0sMi2++SDd2CNHj82WK/oW1ShsBeSPnaE
	 OknOuILiHOmVctBJ/+WZ1w26TzF1iLI08cDlcwGureSLpcpN70HX97fRJ3H368aaKk
	 qL8LVye1Y1dzURrMh8N/JgDGqaEOFcBSHqXwCaRvJTLBoNgnlRsjUeLD6ajoTyeDnh
	 9OxpkPHlZrpq7g227Iv+p6edUoYzTlTjDmfGuKlVoujnVlLNJSe2pZmZIcjfFLBHWi
	 9s4ZNK6dRTTFfVlAj8H5Genr6MRYkxnh5RzTQ7m1ApNSqW3sr6+HPnWCIvEwvHlMTT
	 Z7cbua8IjuU9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC727C79F85
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 17:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178871463369.12783.10974117993302271680.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9372fd07d3eef27c62ad0663b43871e057d45c0284b4f5d091a8ee4b8253665
Date: Sun, 06 Sep 2026 17:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788714633
