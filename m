Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 351021E571A
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743544194; cv=none; b=VyXK5AW8gjkLqgXw3dHs+cAR1iO/MuZP9R/qT503Ug9QbCS9cmANZbBbBVL5JEV88D0C4NBDJJpk8BZLoHN+5zS+8bwrFuQ96qpChE1mSN++zLNTVGVB/lLJ8J9/K72w+Amf9iG10HCBMC7avMVPQP+2dV4HDVpSc0NAUNJKAmc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743544194; c=relaxed/simple;
	bh=MSllmM/u6J4nnC14ptAOQtNJAvtNC2hOSWelpWrgjxo=;
	h=To:Subject:From:Message-Id:Date; b=txq/KIzoOR9j545KIUwpNEzrQiS4fBYtbS5QoSTKNH8VIl/7w3cWZt9Rr/re3f/bdkI+Ek/KTUXlHrflR/ljOii+bH5olcG9rZHJB03xsMyq2gkTEHSoFE1B8KjbK/a6jIPqg1U4J9WF2OauRw1pkx1FNyXcjn5DmvsRAaaJMBg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g5vOIOn4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g5vOIOn4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB20EC4CEE4
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743544193;
	bh=MSllmM/u6J4nnC14ptAOQtNJAvtNC2hOSWelpWrgjxo=;
	h=To:Subject:From:Date:From;
	b=g5vOIOn4sznDOgvFAJnbAm5J0qFgOaOTsIziWQTYCf1ohZBTraldm+L3yLIaMiIUb
	 WyJfz2vMlNPR2cJY0maaoe8dY/x3et1URtuA7BQln5OAwB/ai3UGnDGaAkIpMdtN2h
	 Cb0amY6epnP+ECT8Xqg01mLelI2qZwfl79+THr5kLy9zQoCaEJEOupcwmjQnbNXQHk
	 hVmlaijJ3j5vjifzlpXcqZJAl8BFtpvyoUvChniEGZgyh3SmJm1YMLoXsEOubDobpQ
	 j8+IQHk2zlFU4juWFDUxiEZPISKhymg2Yagr6XrCtlgdoDFOR3dTizSdCv+uvYhOqE
	 Vl43F/a+ZbEVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97624C36010
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174354419359.6378.2254977138432057431.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 547379acba298ebabe8cf436d56b2485293bf02910442b267893191a3368328b
Date: Tue, 01 Apr 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743544193
