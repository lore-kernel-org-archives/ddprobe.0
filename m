Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FF1E31F996
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 07:46:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781855194; cv=none; b=I3SMmx8r9iQ5+KaRE9J/8OroeBwBEKkeejye1Jjaw6JZTz0oSo8iSKZivW9QC0P409pXc2R5sZCVkfEl/USOPAZ7dXAABf6cBdFiGqzO3uCUqrcekJiJ50ZuznG2OSFq99D6we8j6DozG3Ayt2gUXMRmhhKfxS64+hBh1UNKHv4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781855194; c=relaxed/simple;
	bh=OUTK5eFIwroqdAW5Dudh2N0SHqmX6WN8TQ1/zqPW0Ng=;
	h=To:Subject:From:Message-Id:Date; b=TWkeDe9T/xKQRtMIXuba0NI0a1eHqMB6CeW2lQ3nW8TNa2fr19wDMXCJLRWf6JMwBvMfcLohG+3RyP4fkm/ajNcbhz8Lx4fZnzTcDoZpC1Wx01IOb1+P3r7/MdPhLwSWUiZUd5PtFDHECCh1fS8KmLHKq8c0IgaBkqBMnmMvmNY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XRPebl37; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XRPebl37"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE51AC2BCB7
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 07:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781855193;
	bh=OUTK5eFIwroqdAW5Dudh2N0SHqmX6WN8TQ1/zqPW0Ng=;
	h=To:Subject:From:Date:From;
	b=XRPebl37+x5KYeIglMPeCxGMig1ziwummoCoCbb1iNCKYN3rMxrD7hG6AD7YWpR4z
	 JjzRH7hseFl9BKirySkv6J05RxJdWaVe/KuGJVLlUzqxNLo6p+O4Wk6cWwjMRE64Fq
	 4ul/f2/R+wvmsoZ7LiWvbz9VR9zY90XxRhlbBRwI8JCaFSGr/MrjOPfFgScpLscZCI
	 Kjdo0h7fKPZus7Q79PDz0oheqWcCJ0iwxnH8YeGDwxaqR/trtlYCFw03v3YQRoAqN3
	 WmlQN/E0zRbNL8fJVsTSd08ECB/IBsxqutbLltxunnZzPZxu5JyoQtv6lwDsXYtHCb
	 OZScwVf6jl+nA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B070DCD4F26
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 07:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178185519370.25420.4780176202405907511.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05a8f296aa416192c1255f04c1b401e66d579c598dde15cf66215299538f9cf5
Date: Fri, 19 Jun 2026 07:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781855193
