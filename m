Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FF7E482CD
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 21:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719783263; cv=none; b=LDDu/7Y/813B5C4XQjtVHPRftqkZUYwQj0v33r50xQLCRZX2MYU8m2wYR+/zgnZvBiyglM1klNHPpJhzDN0nVzG9Tf36/P3pRnR1bae9KzECbjXwuRDULW/toAP+EXYSuN9vCMAlu9HIrYgJzZa4qfbGkENNFw4vzHreg5PfEc0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719783263; c=relaxed/simple;
	bh=R41UmicFFnyQZRczF0mQ+XDfd+nkfolEzRSEUIiiffc=;
	h=To:Subject:From:Message-Id:Date; b=KryOjE+mW1c7D7/bsMs6+hodwVFBLmHmYYG4Qc3RSQ/2XmyyqTGLam7B9vZiiS+QqAj9YQsrG6tvboPJN3WTC4WCpDgfr/FlNRIJKVfhtR5Snc/jXNQjJg3x39g49HJzN3DmrWLEaRMj3op+Sx9vG1Vw1LDVMBduK2uenPAu0Mw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E4/s5wy3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E4/s5wy3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF944C2BD10
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 21:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719783262;
	bh=R41UmicFFnyQZRczF0mQ+XDfd+nkfolEzRSEUIiiffc=;
	h=To:Subject:From:Date:From;
	b=E4/s5wy3eslBF7I4HXTgYIqSHLONxFCG8nAPaNSQJk87rqZEVtLd9SEToTK6GO7U/
	 y26fv+EHr34vpLIdhn7clug8BdtBNz45NjkPo6ydgd2xUgV1RVnWuJfmYFJbIFxcoI
	 VzH4o/I83zhYbNK6HsKOtAAOB4iNxz7n5fFhtvc9cOJ6rf2SwxpBWdfMFgPNvUeIDE
	 ow+bOelt+R/U7pZrW/+y95yc7gKov8T6s9acVwH/dwIu67kCH2Ut+1kP5f3E30tD7C
	 /BQu0vcG2IWbF7f+9F/bsgtsrNN9MaAUsrSGH+I04o7k5hVMgTj7C7m4KSXCUNJeL9
	 Tun4x2v2upj2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5E74C27C4F
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 21:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171978326277.18842.14597406783023403873.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f400545f0382d0053d33a174dd8bc2add75c001bfda863e33145e80b11c00d5
Date: Sun, 30 Jun 2024 21:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719783262
