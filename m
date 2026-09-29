Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4379E3911C7
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 19:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790709634; cv=none; b=QHuitPa+dJdob1ypQlDqJ1LGTcIriTwlo12lcqwmtNQfrufvhlG/UzEQnnfc/iiPcAOsG7A18t7SPVG0fdxJt+a+IeoD8zldPPzxlbS3KlsHLF+cpRgNK4Ms6hgu0umY+cPcCdJZuPeX86Ql8haED6sMwzSgKaPxHgIgs/zpNQM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790709634; c=relaxed/simple;
	bh=jhcYbKj8nSlc1MK5D5YiHuZLGbTzfY5n4cBYTudaDsI=;
	h=To:Subject:From:Message-Id:Date; b=cK6bzosXkD6+avPGhWt1dpV+rBoF0CKcwWAPc3cxfbQqa+oVfdYfESGJH0w8pkIyCOfgmZYoRntSLrVUY0l00vE5GhHjzCzHlLEIAR/mnADa1O3Y//k8jZGi9iP4HIaeRCSgvI41VPRY1TtdD3uuINbFJjaWZc1ekYhb7usOLDw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P8yBzhEO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P8yBzhEO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD4B2C4AF0B
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 19:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790709633;
	bh=jhcYbKj8nSlc1MK5D5YiHuZLGbTzfY5n4cBYTudaDsI=;
	h=To:Subject:From:Date:From;
	b=P8yBzhEOuNV1cC7OO8AuKKZY3a6NgZmfgDVQRSmVbBErQug7q2VEnkjWCbe0+QlFb
	 +04a2s+OIw8brdMGKcbO5gaz5O/GWW/KCYxv9VIFWbzqS7ezpU6o9lScJOOJkNqaKQ
	 B/EGvuHAX85WSDRPPNjr4gB7X/LlPqxO1qFi51paqhlD6NjgoC6e4hfMkr2xRqy++w
	 e+6qDioPfWIHcPnJMjvaAkAyebBe1NZdaYLkdSLn4qxOirQPBVfCGva4X3jUfrLMO4
	 RQCTals2IY+27hL5UVyYKZVvIsqxUA6/3cM5eHCcaBpxunhQpCsSs+s2szZqMC5gmE
	 aS1+lFOV0k24A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9BB3CA5FA5
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 19:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179070963368.19029.12115864372269512244.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce931128fc0dfa1ec529b7b02f5e625f99977988d0e8554746b57a7344011921
Date: Tue, 29 Sep 2026 19:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790709633
