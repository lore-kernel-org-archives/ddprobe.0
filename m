Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08C5530EF80
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 18:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777661854; cv=none; b=TxxwkD+DLwnFWaZR5Yvcs8sEG2GFcp1x1JpJ1yGkxSPDQCZ82qWgqzpM4CReWTIf6OkjZqw5tEqyQuKBYz8pjzpjAIYNjouKrZbCe7O9Thp7t7BOEtuh+IZMlhBK7g9S5kAj+gt5INJKTp/V76/jJ1e7B9cTwYnvNCDvvnOSx7M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777661854; c=relaxed/simple;
	bh=hMXTo5SrqVnUvqX/wsOIYG5aSQD27mLzvpoVZMyvq5k=;
	h=To:Subject:From:Message-Id:Date; b=XrQwE8N8NmpS7JiHK/tRigM4paAolt3nGUmkvWF0jz8iwIiZAWVVIOsIhWdwGLKdvy6Kn7SQLhgzz3/27kVDPjsLX8tbbktdwudn2YMpVK/QUYKHWDmEYbpBe+AmAvacB/8I3vqKM43fk99zyTCpZruL7xscGW5kpkY+lPe5wa8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lqfbqsn4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lqfbqsn4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFA70C2BCB4
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 18:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777661853;
	bh=hMXTo5SrqVnUvqX/wsOIYG5aSQD27mLzvpoVZMyvq5k=;
	h=To:Subject:From:Date:From;
	b=lqfbqsn4UB85sLLlaEDYAexVvseq9mLRznELiwWKQ/JhlXsqb8aIC3rgs74IC/Isc
	 eRPDN7FZHa21kv+57oqWI0TysAbR8LPdKT/icICmKAmX/II6fZ4menOBe5HsR4UoL4
	 x95RWxClzb8iUgESS3W4CbmsJQKdRqQQYJB1xvxK/dI2XNcQVuswSedDAnxVHMq6Mz
	 k21WWv1FlG60KGUrGtf6TzMqCbGWLQtQM7iLrxySt/ubyxugJf5aUcry1aAcFtXbnj
	 /XgcCFyq+wNvQKSGghixxT9AkZ1dNHwdBgdjpfjEOB1gUPMJljNelJU7V3R1LNoIKO
	 8XUVeLir5em3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B02ACCCFA13
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 18:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177766185368.30665.8469898143807840377.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7858532b57995bf40491cd876ac18f35db8ad7923d5bf97ede1e073e4ddd2c0d
Date: Fri, 01 May 2026 18:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777661853
