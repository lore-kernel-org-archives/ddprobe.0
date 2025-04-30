Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D7D9178CC8
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746030594; cv=none; b=a/7kuvKxyQVEqiM5o34xeb7YmKQtxxSmJeZMwapObk618hEPijiINoPko7ZPudHM9AkDHMUkJmRed0ZGYmUUV/rF/rBLMTjW1PwYQvMunf/lcf21Vq1AGXlFhtR0pgK282GfMPjnKH5ljw3up+1JaP3RD18j8m8bJ9bbMJeOyNA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746030594; c=relaxed/simple;
	bh=V9fNslvbdyw5Na2BnpYYrRd1sSsYNvSWlXtbu1Hh9M8=;
	h=To:Subject:From:Message-Id:Date; b=mfo/RK1p89bkc0BLjQs9Gkbsj0IObGdGo+43ulPFEQ4O5RIxUJY7u0ajmoYjPMscDvm+EiOitqovDu/M1lt58A8Gm4xKnVw673QMoe+i4O8ptM93+Wm5T3uCgWJVkhkWz+pPc79DnWYE2P9I5/auuqL46DH5HAyXsQGpYzSJJ/w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=entZ4t0C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="entZ4t0C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0069C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746030593;
	bh=V9fNslvbdyw5Na2BnpYYrRd1sSsYNvSWlXtbu1Hh9M8=;
	h=To:Subject:From:Date:From;
	b=entZ4t0C0L6vjN6mjyxhLjLMcQZHKi6w60Gba2uV5EfaLcVSsGqsGiPYWT3kRDeCg
	 jji16L51iWLZeyqwqkneghyqcUA397p1siiG907cg6sa+V3hbvNKyZL5GpBoe5ALIi
	 4adTStC/JnBIziqzUnw9bDZq5NUf0rr6WITkwHIssNZfPwYZqfEvpdEbFVPrrHdS02
	 4lWDMJjVsfLHhfkhwJChWrx3kvbVR80jO+bhsEhVjvrNfEUOIESSS2jWvnxUQ2Ym9P
	 MDZavNxz88rtxESXXm7om5LAIwHvM/Q1n6qHY3p4rbM/1RcBlff+YyI/dbXHBXGU9g
	 uGUy1hkYN5c6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F989C369D9
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174603059358.19976.7279688413367654180.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eeab395ac2dcc7077e4457f71c63133a9e62d0ce6061110bde792577d98e61ce
Date: Wed, 30 Apr 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746030593
