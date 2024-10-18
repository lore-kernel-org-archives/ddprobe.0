Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2805720E318
	for <ddprobe@lists.linux.dev>; Fri, 18 Oct 2024 04:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729227354; cv=none; b=If7GpKhBMDuGHoxv2yjZb9JK98Y9cuW44YCCZD73j9phhTutpkXskyp0d3IRi5OzInBDybIGA8Y+w2Y5Nju6sfyli35tpU6Mx5eKFOzVI6zE1Z9pH5egGAfte5T17knc0bDYSxTye9nStkpKwGN9Q6P3AYw215l52QhB4t7doW8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729227354; c=relaxed/simple;
	bh=X5qV/+1C9qwMPEibBgvuIrI0J0YREl2KpoOMKCmgL7A=;
	h=To:Subject:From:Message-Id:Date; b=FemxC0j3xjgM3rzFLzisO6ES3spFhcSsB9rZ6z1R2RPExcYOM9hRdDtnjuHJQDMGh54Ce2JV1tFwmV6mg3py6DuC2DeVYtaO02tdg9veoDHHBnyK8gZv8GMbgSBYfpWdtDJaSunGNX1y/odNUY7Bo2Ik1O7hUf46sRH9o992+Mw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PkgSbURg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PkgSbURg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD6ABC4CEC3
	for <ddprobe@lists.linux.dev>; Fri, 18 Oct 2024 04:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729227353;
	bh=X5qV/+1C9qwMPEibBgvuIrI0J0YREl2KpoOMKCmgL7A=;
	h=To:Subject:From:Date:From;
	b=PkgSbURgtrFFySLws5xlpxwb4Ss3rAD7iVZmHH2WM9aB297fqQPEpyLYfFBdp3YUx
	 1kbdroieCzd/RdX49TsMCMQ7ZuZ1WIl62NFM1Muow2pjiDsn41fWlt0znEqwhpKBNk
	 syiMD9CPT8pDmnKY8i2PpcC2sng6Cvv8OoIXFy+yJQ8ZKSRg5Z1QM8pcSYUzuhIFVB
	 3aWQGUtTpL1ibUwifbiPqSptKb1ofK60uSb1VfKKwddye6H9xSezhSwsuasgjbiKz8
	 101ZiY4KcQAre7oPss0XpDmNmXLBoKNfRrMmhEcPSUzOv0/xMVV+jpn6txc9y3ujd2
	 DdTurfhh9Wg1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C18AD3C549
	for <ddprobe@lists.linux.dev>; Fri, 18 Oct 2024 04:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172922735360.26723.7436581125174821701.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb905a4a10df0757fbcb3b94d1e3f2548212a7b89802bc5fb71df2a631e5e3ff
Date: Fri, 18 Oct 2024 04:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729227353
