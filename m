Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AF50FC15
	for <ddprobe@lists.linux.dev>; Sat, 23 Mar 2024 10:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711190897; cv=none; b=dqJ/FY8GKgxAxR6jsHf8QCm7bVFwF652PVgq+JZb/MKyoPmk5wLkZvWe8mPXa3+PD3WwnseR9qwnErkIHG8V7qpSAmA4bmjkvTkb3aUFFRAfOA0C5aweeB+wrhIs+yeGorsjiKcpEqC/aaxCW2aUqzxa/jRJ9cQsyIQVBQsiM2M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711190897; c=relaxed/simple;
	bh=gcDYCr66DluZZti35oyWJ+DvfPNItsSXP2tHox1tKOQ=;
	h=To:Subject:From:Message-Id:Date; b=IKmtBv7p2wrn3biNl7U+uJUk8vJ9ADeo3emjScKgwyXFgSj7Yow1l3ajCgu5QhiWLb8rSRZwu3U8LP9GpsqgKtx3NmZ+gFSO/mA1MvbMFncUnWLI4x/8dPf49uWiok78VBCvAkhG/UJNj9pURlHbhCdClMTOnf/NBkursThSjQM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=irx7gTfz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="irx7gTfz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 84AD7C433F1
	for <ddprobe@lists.linux.dev>; Sat, 23 Mar 2024 10:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711190896;
	bh=gcDYCr66DluZZti35oyWJ+DvfPNItsSXP2tHox1tKOQ=;
	h=To:Subject:From:Date:From;
	b=irx7gTfzZ5RfVkTGWe/IJLiN+VlGC2h4cKSk3NXFDJ3D95QYDRQwT7hSiN/jPyhk6
	 VIctoPyJxKUesEaXYyDez1eyFtfb42t1QbUtg8nvYBVhZ/3YKCkjWfu6NTDJnc2o8F
	 dw+TTSYHLA/2W3HNlvaPIl1LfrU1YHBw2N0Iazi8YwoECFSHNcLhrPGT5/R2VWLwEi
	 rDTwo3HG6d294Pp6j5IQyUC3yhN2e78yPBhYRybJ2wTi8Ash2PZVYIDYb0n27x0J9D
	 tW6mXyCVrHJs1dG7FC/fY4aKgj3p7aPT9TwvdJS0HDZY6H80zjPi2z4KvbuALTHiB9
	 BboohN1ye8Q3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6D7FBC54E58
	for <ddprobe@lists.linux.dev>; Sat, 23 Mar 2024 10:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171119089640.11462.10557551758953693652.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5366df79958f177128d8750daba8610d127e89c34be976d54cd686062178e7eb
Date: Sat, 23 Mar 2024 10:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711190896
