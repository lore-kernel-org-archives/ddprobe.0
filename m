Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A20F846F
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760072994; cv=none; b=jORW4eb5hqugrz+j+FHOw93+9yAbEeOknyLOgSGi21WHbtu2KSqJ2nn/AL7aCVizHiH8RUh4k/Tj/qzK/x1Vvl/3LrIQki0HEHNtLa2iMLapaMrfSqWPaGUl/gkyYcBI90Igem4l9wunpTN2/f8yZJvdUPMvLMLXgG8v2A6TbsY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760072994; c=relaxed/simple;
	bh=Dn57GrJdAV8QuNhfUiOkornulmzOkAvosOhpbUDfEYU=;
	h=To:Subject:From:Message-Id:Date; b=HRoqytY9c0MMpA+wjXQpkU7Sdjm608DhWE7p25ABZS2qLACN9SOwEhhsIiZ6gpNMkywxT6n7Dra2o6PFZvrEPCDHdgX6YiGW6M7UOScU0op+JHmFEDXcAU+T+pvLOhvDhiSTKsxAO4/xpDUVx8uxznAf8edF0qDLfib/DnRuZOw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Iek9gIZT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Iek9gIZT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB732C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760072993;
	bh=Dn57GrJdAV8QuNhfUiOkornulmzOkAvosOhpbUDfEYU=;
	h=To:Subject:From:Date:From;
	b=Iek9gIZTRhdwC2z0Qd8pyykWf9kU410kvctLBNujvnJvCq+wwKJc1srPoZIj3UACv
	 8LghYxQQmW97UTv5xSM97JNdge0Txi5aT4cIo/4WbYhtGVK/g5ptCj6d8EDdjt7/c3
	 cmyEUkwagweUii9rlcMxk5fBskkNvkK56jxSyMkSzgjUrSA5p2qd8UFcB/OYOg9aOE
	 TNqdOAURgZnMNdcPK6jIq6+L8pH8uCbpNXUiE2ijlq4ClkEw4KMfOmxSnyutBXD2Kz
	 kppD0Iywh/5Bh8xtoJF0ePhLxe9NMNJx9kAoKUMJrU4mqJNa3fQRSMhW8vpCfLL7sr
	 s4mVyMCuHMXYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92377CAC5BB
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176007299357.26376.13992492480297819507.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f737aa548f1f6a9c70a0570cbcafc1a67745b14704d7c8e4658934aa5f82b84a
Date: Fri, 10 Oct 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760072993
