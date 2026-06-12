Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 357B33AA4F7
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 20:26:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781295994; cv=none; b=hXwVzspe1rVDlMZonayBF2VNrgrMbRmVwysjT3eVbilZ164hytgb30shotE7ugspltQXq/ENsU6IPPtywZw2Fq+faObFfRkUhxYxHxhcORhMUxAHcefvL2NlFvb6RhCXDLo3GV4xKFyYt6BkrpeZLD8yqsXpAKukvLk/ZyKdLfg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781295994; c=relaxed/simple;
	bh=qHlSxGeRARdo5wBuk/Vxm1StgDiHxq++foxBDtdkT34=;
	h=To:Subject:From:Message-Id:Date; b=bbCNJiJa8lHiuYPjlzuwss/Af+mvcdAR1y4iTkceRLWMXngbbAD4Q9f7XHmITzJb6bMSP3r+3cilKHb/s9qzfecrLZnu9iXlwm/gFdvPaFM4JX6hhM5gWricdfwcMHVywg0UTvotYVJNx0Lwia0ufzkqnLgWEJ+vBCLAtXajXGI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bauUt6Iy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bauUt6Iy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB9D9C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 20:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781295993;
	bh=qHlSxGeRARdo5wBuk/Vxm1StgDiHxq++foxBDtdkT34=;
	h=To:Subject:From:Date:From;
	b=bauUt6IymXTaO3bfT6YTIYv5te1jPODgunQnSF0rlACnotIYzq2mBF3IfYo2YvMtq
	 1xunzjBo1V8Gz2IglZhxsmskxG/Jdx6sLN3fZBExzu2Phz/qSIqWVkkH35I3YxHmIX
	 1wItzs8NR3NVzzBc1sdBP/DJoLi+drUh6UCc8lLW+lFAPRfJqlag3codhRtoCGBLYJ
	 upgU+XpBRdu9dj5XE3gWNBtATVt779dK17PmzWLVJCTq3ZeUNbT/voOi+6hG8FITlX
	 RSCEXlo3xc3BhTPcmEY/W3ZbQsgsybMvZzE4rVIIQryjfIp2fhAfc3JLG0uZSD5HgX
	 A+yuFxUaH6MHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B27D1CD98D9
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 20:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178129599372.23240.11574141022441427540.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f645bd3c55b574822dea19a13e14378ce85379fbf0f8ba93ff1783155cba59c0
Date: Fri, 12 Jun 2026 20:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781295993
