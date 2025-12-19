Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 025C436828A
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 16:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766160234; cv=none; b=fX6Wb/Bwk47XaIGSIvvN1pdb7Z2pqo1LurwEkO9hwaQrYBUpLLUWw2KeynUq9r6d3G6xZjLgMQd6AzTHY7f5YyJ9z1tRV1sdNqC/8QeI+ffr3DVE0VQIe/Xxv7eH/pTmTGABxfZ1PnJIaDbmDl369kagrCg8VdP9lbOCUpgtHnM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766160234; c=relaxed/simple;
	bh=fCqcfPHBR777aV4xpIKEjLVaROIIIbq6ngafthfCaBk=;
	h=To:Subject:From:Message-Id:Date; b=RPlo+3AXff3Wwh+Nfu+QPuS1tnRSamX14IYT3ku3Ppcb43hPG2mJ8VLwD0GIfuni+Uh1lMNtTdH+xCcYP9zXqB1l3ifiyT4DbQMSz2xkpuRTjJDLUo9H5mqbCMneEOULb7yrXg17V8pNOqtLd96r8/EtTLPCBCkIMa9oxO/pRDA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NkeQN/Nx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NkeQN/Nx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BFEDC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 16:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766160233;
	bh=fCqcfPHBR777aV4xpIKEjLVaROIIIbq6ngafthfCaBk=;
	h=To:Subject:From:Date:From;
	b=NkeQN/NxrK3Xt20Nf2wSbvpb62oZgj7+5Gne+uqxl9LZPUfdRtArSjf3URnGNMsDr
	 y/VXwKk8UwgV7xzVQQmOYYZgqWSZwcX4zflae2xFcEwzw4KfNnU2cfdCPN2ico7sNy
	 ZxfUGIvyRL11Nt93ihzqUGUBsRGGZNb1XqtbTE9jW+c95DyNxTxL5N2reUnr+wUo1l
	 zqCRm0VH7k1hG0frvZatbHtJNe3eHWnDxfIK+Nu+RFaY0dM7J5UldvkPv/qO5QfkpI
	 790aC0EvlRVWJHUCVvdR+zWzTpvf3V2RdeLCQMYjWgaX4MjyUCz4QkQOeOFRkgLtFj
	 zI3EDnhyl9OYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 933F0D78797
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 16:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176616023359.21706.10001379181714261492.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f548cb87d2c9ff3d2c985ae9b065c26ceefb71fbd959d716108fbf02a9d6132a
Date: Fri, 19 Dec 2025 16:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766160233
