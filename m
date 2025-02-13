Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 410C380034
	for <ddprobe@lists.linux.dev>; Thu, 13 Feb 2025 01:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739410734; cv=none; b=hxCJnhPMaRAwnpZXPHeoH8CGXD0OG624CR1yLF/COD5+IZG4mvd/6E6KYsPFWEZizk9BkS0HvZpcmEpTTFK1oqj1wxZPZgWOBPIocAVxL6jc12Gv/17qqWXgOWqYEYWaVGIFcnHrimqoDS9sMqx1dAjFEoDloWKmtONPwM2yHbA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739410734; c=relaxed/simple;
	bh=eY47DIMHPYFhoedGCj5sEuy7LRH8ZvWjrSKT8YHjOho=;
	h=To:Subject:From:Message-Id:Date; b=XTnnZ9brU++NKyzze+020vGh3YBGfHsg8d9ywnfnxzUDUx8eVXgCw88INcgE6d3rsbqWkJXI3JxG3TDfDi4MqR1gJRIKrSoUFXTSPtLHXxcFp3upIfnJJX7J36jU2zoJ0FBHYab4BRR6kFBSuhoddjdRtEdsKa/T3dBG2errsjA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NGrQsLue; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NGrQsLue"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3909C4CEDF
	for <ddprobe@lists.linux.dev>; Thu, 13 Feb 2025 01:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739410733;
	bh=eY47DIMHPYFhoedGCj5sEuy7LRH8ZvWjrSKT8YHjOho=;
	h=To:Subject:From:Date:From;
	b=NGrQsLueulbhSj6YcycvlxqvVAtk/nlr+Oz7bnLSx2wc91xfpRjW2Kq7cLy45SBDo
	 Y+g7Wq4OT54wcHlZXjDW7Ao3w2yqtLNGD4vjgZ3z8KzbBqrXLTzGNKHID5WSVcvrCI
	 +A5mxq9Ew9Dsktk+ESabdYT5QxDb6A5hkZSW31mOM5OAe2jDGvova78YtqDe0rMrn6
	 4prctF0bzbdHYBtknQMQihbF63x9vlu+g5rQMYtud1+VCN0Z6KOiI8ch9eiZLpA+fa
	 ZjRYMDbXBU45HLAbCgmlfvaPJvcSnXKUwaaMU7VfaDApTWMTagM9KzF0EO4hxOtgIK
	 BiTN77D0BuigA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0C5EC02198
	for <ddprobe@lists.linux.dev>; Thu, 13 Feb 2025 01:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173941073360.21297.1987815650206728286.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d94863d592efabc09967996b5a7badb725e4b86f2380798c8d4763b9c2ed9632
Date: Thu, 13 Feb 2025 01:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739410733
