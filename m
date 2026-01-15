Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0689D3C0094
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 17:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768499634; cv=none; b=Pr4CO6Gbxzl8jQzJKz8i0qlk7zhKH8yxOr/YUxnb8A/drf2CIG0OjrwztYy2/qEzEtgE2gzhlhRPUnqeYAp+YG7Vc7qTiunMNvwvEeVS0u2kxHOkqJ4H8cAb9IUzoXDNRA4H/Ha7+7yjhXdREhRqQvQsdlUnebCjZujOLAhKiTA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768499634; c=relaxed/simple;
	bh=GA3BrzRR+nvu3zfwJe2HHZLZZ0dnNm0wO+9ffGLit84=;
	h=To:Subject:From:Message-Id:Date; b=JaVqHOH8ufFG1VVIIrqoL0GfDvl/7WNLYzuoy46zTHPn565vWCJZ3FPAEZttD7NM7KfJwFmQdN/dqHkwIc7JKPR9Bx4i80qMCcZ580jehERfk9/VPnCictavZ5vMUOX9d5p3bfs/+2f3Xy+KJDVQMBJfY8jNIoiVVK1BrePdcl8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ha0Zg37g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ha0Zg37g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 98521C116D0
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 17:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768499633;
	bh=GA3BrzRR+nvu3zfwJe2HHZLZZ0dnNm0wO+9ffGLit84=;
	h=To:Subject:From:Date:From;
	b=Ha0Zg37gcfKa1lY9qcgMh/f24l1lH1oOUNYBkpF4XpBEIGOmkmVGAD1e4nibqcqf/
	 E2IxZ0ha9oau+1GMHFDNPiNS7CLVgrmb/GpkUjpO6HH3DInEvHwGXBh7TxlI9Yfaso
	 2XzJpbYJjJp7qRJeMNGCPpKjTZx+wbiP+/3jYZ1oj3SbdcvH3gdTvdvoBdFKpNsrh1
	 Uqtal/CDBYYTIf1J29XV8eq2wxXE7gEAjNisNLI3taZ5ALErM8FXOKPobU1xuYi727
	 0n6hC+YfRY6VRa9oS/TkE/1UzrtbZhNeOzuac/nv5bXZmVKsjDJkZtXxDN3P/3b10x
	 5qmFwJRLRUOmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F7D5D46608
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 17:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176849963357.26045.12018729732261864966.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb4f95406e369481aed89c6f4681dee13e0e44589e1de1437813e6f8f7fce3f8
Date: Thu, 15 Jan 2026 17:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768499633
