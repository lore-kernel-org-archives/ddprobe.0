Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4428519E7F9
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745510995; cv=none; b=iinWfU0CvQIGOEDjtm9zedk5KEPcl9mJcqKhaVriIRO71MsbBbMUDa/BWah8KO++DHihu/7kq5I84QXhZEf6wAw6168wIi1w2POOpPxnHOQv8uiTj+VmBX52lf8db8jl9xdMsUxhAnK4RiQhwusomafxRW9CdqvQApzwnX30FpA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745510995; c=relaxed/simple;
	bh=tLSAxD3lHx/ed8LjUuE45sTjWDY4t1S0OUcPcgcreOo=;
	h=To:Subject:From:Message-Id:Date; b=g49yo3BBbdDw6Kylhgn7Xf7N33Bb/szsUNCteBGRG++BDzWmuAU3jXEdLsz4S9Ul3CHckK3cQAY3KamtaExkXCOyPDOP6EoaYe62gAJCOz+tsH3QJN/Zoy2lzXreYpCNUI3BgIJFRciJJ8pqTliNkhQUVvNQh/okglOh+p76Ip8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NMdH2W5T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NMdH2W5T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F008C4CEE8
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745510993;
	bh=tLSAxD3lHx/ed8LjUuE45sTjWDY4t1S0OUcPcgcreOo=;
	h=To:Subject:From:Date:From;
	b=NMdH2W5TKn+wI7qgAjsXxvKYVL2LKITEmpTL+85oxVeWjJxh/Pv0Ltu5+Y2IYfAOJ
	 vk5501mwrjo1qPoptJZ4k8oTtumhhkZy/z+62S7m+GZO54VQWJTDpDAva0RrDPPeod
	 nw1R11d2oQmxHa7Cc2yeV6LsBSFJwhlKIQriRm4M35tnRZyZp5gJ+Odaw95KSAYZsW
	 rx9C+fV0FT/N27yLQoAPfUP29gUTAbcGJSpD/E6VdFoCQ8nsUOtWYAv53+kRvkAuB2
	 pwsB9shR7HeH1IC2r0UQdL+x0iG4suqv371bAtJ/xSZVDPQrFj2Nwc621dma4aNjjX
	 HitKBvqEAxFYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA11C369AB
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174551099357.25437.12664095114141308889.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4fa045119f1d13b38cb6ceab030ef9d2d49baff0c3e17e5fa1b2fe260a3c7396
Date: Thu, 24 Apr 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745510993
