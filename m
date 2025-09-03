Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26DEF27056A
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756894794; cv=none; b=c7QWhAzIq0AZuOQpvq3LoQJbnEcD5MpwlcRsX03g1XtyhkYq0CsOi3uD1LIh4xQfjYZ+/OmFksfKU7hsUIL71mAZSM6ii6IFKRYj8zCAJP0dliLYnynsZa+sBidDTDr8FyhrRY1X65GxHmlLEYC6EZssdLD/QBUFQMeImnVz1js=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756894794; c=relaxed/simple;
	bh=rcbs2bUu/zb81atbNbycazP5CHO8/mq1vGkTjEZIPmE=;
	h=To:Subject:From:Message-Id:Date; b=UojMF6PzrkJa9ZwlNnUrlRBXpsEhOTKiKPooGeVIHYmSXMenslLns+My2kc8OMyMIOoCYZUXKP2ebvcoA+1TkV8QJce2imW38e220JExMDlVpdV9JD4AbVVmbLuNE+OFxFdbn2FJfR7e/VF8vhctQibEoCgxXZu8X3XRE5xrxYA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TYPOVu4L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TYPOVu4L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A48A2C4CEF1
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756894793;
	bh=rcbs2bUu/zb81atbNbycazP5CHO8/mq1vGkTjEZIPmE=;
	h=To:Subject:From:Date:From;
	b=TYPOVu4LdvWTRzV6uWejelhKXsYSKXhWgwQNgzqSbDVAmQETq+ShnuVtNDuOpGxL3
	 PVZ4AoSWiCvfZGjMXZpzQFGnFU4Yjh7FAQ9kNJIq7u9CihW1AHx/btgSBt0H8P0ebd
	 CrOAmlVjFATEnaiEqu4+Ajjb1+jsJ8w37iaTHex0/thg6Z2cPPLwgF5DhKJ8CHwT3z
	 xgk9vSXQJ1AbDjVESvD8n4v37uLyWtPqo+nZ/gzw7e1OJrqRHmKGzXyMGOX8uW/dvr
	 trX0oMzNiRxzFHatQ1MB3pSRR+80hOwIrHxexi2WF8KmPXE06WiJfm1vvQB19eXkeT
	 ndRd0dde0Logg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 907CFCA0FF2
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175689479358.10607.18047374723074124048.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d47bbaa36a8dad8ef1ce0fb2a5dd78d34d7082e146778e199244d9944a6897b6
Date: Wed, 03 Sep 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756894793
