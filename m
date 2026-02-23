Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4BCC2405E1
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 10:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771841693; cv=none; b=bwncc2UdkI0T2/ZMV+/Y4x3v7socxGoE5ncNMSnEuSOPZ5ibsw46AKdmcE2ea9OA91fVKKN5Wecxc1kuYwvoQzMCj5nd+fOJKRDQP8Tvrke6m5KpHvDZL+xs41j2DWyhpo66DiU4iAhUJg4rGj7tbPY7memelUIz0rlLjebjWUQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771841693; c=relaxed/simple;
	bh=ZEcBv0GFZ402K+PoC01ZnXG8+iJG/US0fJ660GiMha8=;
	h=To:Subject:From:Message-Id:Date; b=fCfUEE/QmVqB1kBIL7GOWU3OqNCPuWqEwpiOQYZSCEVaj6l4a0phmd+oZV2DwnKZvUfrFgIFujBWuQSYZi8alzY7TanSA5MOXGwiyY3ZOUNtO8CSmoPp/a+uZFH1yzkJLbTdDYmVkksRLgmOaCwefKlXT4MyAfIfEYJ+XfuCM8k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZW4UDCYe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZW4UDCYe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FD1EC116C6
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 10:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771841693;
	bh=ZEcBv0GFZ402K+PoC01ZnXG8+iJG/US0fJ660GiMha8=;
	h=To:Subject:From:Date:From;
	b=ZW4UDCYe43mP/oC4N2vOg1nOy0b1U5HVbp/2uxAn1uE1NTBLg3vtPud5Fd23mSS8J
	 bBOXUVJpoI7wwosvgMbwSCWe2Zlq6xkaV8B1bhp5y3upNdWds+lwat3fZuWfHwNSRw
	 4NWWylk/TPZXX7rVaQi1bSLjMLUUYVmlSJCf0aXtv6Aufh4LpXXDsifY1m3kt2WjiN
	 YKQs0kNP7TlsN+mqSfQIXNhYAdCPqtQVklfjfVQrsVyHAPtd+zWiOBZKzQ2HkLVyhB
	 pX8vr6JF2lEBVdNQO5H25aXBzvoW0wR0LCqjAcr1F3TT4nsGt52F3B7stX/u5YtlHz
	 fjpKCbeQhNxzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9148AE98E13
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 10:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177184169358.17249.1984301627794254366.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f27fc8c27cb536260f4b1bc9a26deb89ddbf80fec58e0084d21bf18dec5f6477
Date: Mon, 23 Feb 2026 10:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771841693
