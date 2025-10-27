Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 381422C11FA
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761596394; cv=none; b=loxTvHcKxKgFNkg+JzfExPMUyDZr1orzOkD9qRb6p5HUrZLcgjkQVeRn2R+rHKeqqLfq9GMJKks4Wy/PKL8wokSfXHfIREnpVrZxOOe30ouBS5eoRVumxoalCPrGa0BBEYlcFzpHJLUbZCkUAO3Ew5ImkSGUbk3ViJDMOJmibsI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761596394; c=relaxed/simple;
	bh=jIrWz32us24ioCWPgNtyGiaw3cmC8pLyZRH8PI5kn+M=;
	h=To:Subject:From:Message-Id:Date; b=qDggtN7YfAJrGEJBf6KCJIuNzw9182XWTIS/KAKohUAawif9gg1mqU8hyRBB355+NQDcbO52nag984A8TM871JdA76ZsPagznGn9TLUAsN3GhpLnN0fRFGgS2yoQEMSYkUb5PGAi3Vaytm2hO8ynPhUBBc8f16pnrB56aSLz50c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=akJIcJpx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="akJIcJpx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A70F2C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761596393;
	bh=jIrWz32us24ioCWPgNtyGiaw3cmC8pLyZRH8PI5kn+M=;
	h=To:Subject:From:Date:From;
	b=akJIcJpxV/gjIc4T2BVfveHwcS2O5MYyA+6G+MO+zDWhMbifMm2lL5S72rG8gKGkl
	 w3wbyv7mubhLtmvcMhmgVdy3/EL7OAM5/UeF6ghmSAAhDPVIKGauNY5GRMM+u/57iQ
	 CdMmMUQk7LG2WNFSeZb9AQaMwtw+1hRQZCZz/vjeLDXPdD+Bs3Hf+kOK8oz4pF95of
	 Puls+Ag+JsBzn7s2JBe5koQi84fzGfdEe3MP5EwqDlhsj4ZZwwHf+aSnKHvtHFefW/
	 V9X/6Hwra5v0AImvczF2e1xe+RdVKQVzIS4kaRR1HeQjzss+mfjQQpM4lzRcyJerf4
	 8VbKMlahIxkQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D56CCF9E5
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176159639357.20657.18039030085879531628.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5dd4973f104de09a87fdb327d1556b6c3a1e084459fdb21b18bc231e2144b2a0
Date: Mon, 27 Oct 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761596393
