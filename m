Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CA1338D6BD
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 23:55:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775519734; cv=none; b=fRDFH9pF+P3GDoFxZrA8MZU/rEzRWKukALKU5EDe2avaiZrkEk+d46b3JJ4HKqv0wC5lbDGYMHKl7xxeW0R6EWp4DjfVP4HEokQLpKF3DyOEdCpSn+PHu11Y+9eJqZYYqSpQgESXyQAEUx93rwEh2NkXFgUs7/R1Wo5r+8z4pjk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775519734; c=relaxed/simple;
	bh=6yMjD40nfPIW5NvgI4lsz9wdXiqc8G9NOGYCZnbygi4=;
	h=To:Subject:From:Message-Id:Date; b=tOXPKtDfC+T1T1rQpdIS10lGCJW0KxpOSQsqQIdpCIrNVEhyWuF3+jphUHTnqdwzhxNtXH0NhTE/s2ac+qhqVHMZ5dC4X2TUoIfy65wSkxnOmVclacRcDhjcVNtt65KPJdoWq3JM6BSCEGnsd+i14Dbbs3sBeotBdopn23auM0g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V1vI07bL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V1vI07bL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6FA7C4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 23:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775519733;
	bh=6yMjD40nfPIW5NvgI4lsz9wdXiqc8G9NOGYCZnbygi4=;
	h=To:Subject:From:Date:From;
	b=V1vI07bLBsr7hagnvQn2vYh2Uow+VfQ7JhON0MHnzQ/SCo080FgMIiMMgFYoQPkpT
	 C3ZsVACNBMyaYc1ldylCViFDpPOzWAuxJ72PBFqAtPlCUHi7vxcXXXgZLu5kOrt7u8
	 M1jldxrf7kxdmArWJoSy3jLPKkE+t5xGGR2be3J2G0iRT/dvQKqY8/MmAEwGmOzTm8
	 4BrX6f6+iww2+1ltBL2tqiNe6YmHpC7Io7Y8KPJFgpzjjMYcuu7RXfV+/xvUVo1h4f
	 Ath+AEcdHqyS9J9A025G07Ipb5xnL4gIJRJ8YaHyTB9EuVVl1PA8+5yuZPf9UMqaW5
	 o85/d43FPeB8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF41DFB5178
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 23:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177551973370.19024.3921196405401020184.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46a74fc2b92282137dcd0a29bcb72ca6d3a0b09dbadfeefbf768298f5e14fcf9
Date: Mon, 06 Apr 2026 23:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775519733
