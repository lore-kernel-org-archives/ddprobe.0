Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2894B1AA7BF
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762408194; cv=none; b=J38qC5he0mPIjlZB+BBkrIkMAvLL54cyufeuefwiLcF9Dq1ymr5WYEG6g/52znLbK/cyyl7XlZ2GGr244PCF48LSOwUGl6CA/vkB4rlLNNtSVpkEZLkOKEpd9j5eE8+wCVKU3zNTCyDMlClTuC2OvBsXUaveRFd1WFanexGhFAY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762408194; c=relaxed/simple;
	bh=5nkmn5alyLmV2b/2SESfUBbuy6xpwxwwEsiKElBbQ88=;
	h=To:Subject:From:Message-Id:Date; b=oL1fksUXNi2HGgH12A4K+ekc2rO03jUJSU+HWScDVj+jrVTA8wc07DEsHhh2N7u7OUY61him1Ma9H4N3moD5Ql95JyQetEDAYI0OEMYcsq9R+vVFlEFAthXql4HLSOCeaVGtALISCIVgDT2V/bFtRaRtSPvjhI/Isu2/DONgxJo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fBGPbvrh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fBGPbvrh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B631C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762408193;
	bh=5nkmn5alyLmV2b/2SESfUBbuy6xpwxwwEsiKElBbQ88=;
	h=To:Subject:From:Date:From;
	b=fBGPbvrhllsou25iHj+De12up89cd9ED56VuApC6RLINK6LlG3h1PA0sQ0VIlpMV/
	 1RdiYjwhiJq5fYAx+4n/Df0dTjrwq4+axoHpEy5Vc6DLyXygQLlui1MzrDfLc3j0mh
	 Gizx0WX/rNhOLCsbUYV8wU2TF5XGotrBR5BDe4WBfA18IIPXLC24QjiI+PiybnfXXD
	 JD+rQ5itU37EPsHJk40JneLTn7R60HpsurM9SKUV13U67rUfsKD/9cmuE2gqhpse3B
	 Sw4+0rD+lP+OQBcAWjpIaxY+Mdk+h6lVjgqn/roFCGq24GVI5CDlNzEqVTKAQgebEI
	 sVKqPnXYRuwTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 906E2CCFA03
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176240819358.12175.2126607188186727838.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8058ce5e6e680c41a253c3f621f3a622e463623ab5403b0c3f917f587bd94186
Date: Thu, 06 Nov 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762408193
