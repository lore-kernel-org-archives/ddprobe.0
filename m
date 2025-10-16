Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26609334690
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760658594; cv=none; b=INoFGSxab6TdIo5C2t0PD+5ZtfPxFVYyYaU+B1mX0SrGOjYgAT+ymzDEmi3j5bypZrOSwU5rDAAY4eaE4k5xxKhRK+BH80ghOhdrlBy5ajddp6d6XmO1bnR4/1fKEKyGjfi2LFEWuLAhojCwlvbNyVFS2yVsrfV3NE/DfZu+Wqs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760658594; c=relaxed/simple;
	bh=1Ox7kHmQ5FrwLH3ieRDOo8SZsZZSvF8LBpx0RZYlV6k=;
	h=To:Subject:From:Message-Id:Date; b=s0TJcfJMYAk+MG/GMz542TdMjqgzbE4aEaJah4qycyBTCEH+IeiBawNaGiMf4yke+ZZldo76OaFEcoRcrd1rN7CYH1FhSYWnai9snXa32GvPMjGIWopf5QxCcgFTKpUPdYRDLX3PiHQ3DaECPzsuLTPSCinswg5EEJHgy7GVHOc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l1FIhK80; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l1FIhK80"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0296C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760658593;
	bh=1Ox7kHmQ5FrwLH3ieRDOo8SZsZZSvF8LBpx0RZYlV6k=;
	h=To:Subject:From:Date:From;
	b=l1FIhK80ZjEc5jeB/gGhBhWROXjqHnUBk6vtpVAqFBeAdy1ysM1R69tkhvtvg6afe
	 qRuAx4fTIGwx22LyGwV9uas+Vud8/BjkheM2JLiSuUUyGuKxfkUWuEhhTt393w4obH
	 X+vtOEKlLZTOC+4qEcAaWHh86q5SuhGzZzdultlMypu1pagUbIObBiNk/+JthxhAZm
	 vhpZMDnQ6i7Wbvn306a9JCetRD2eWT7LHV8hyQSp52kU+amUMBxUYIghzbdcQpjJlK
	 o4rVs81HS9N1NckcpuEpV8/f6PMXXEnsWI5dIwh+qizcPoI5XUEEiP9G9Ll7I8xx8e
	 McfcJN0qN3KUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 908BFCCD183
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176065859358.19844.5641420362496430398.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55cb5dd0fcddb73482668f63417edade82ee0859ccb8f3eeeafdceb8ec899615
Date: Thu, 16 Oct 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760658593
