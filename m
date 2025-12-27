Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30BA945C0B
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 06:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766817834; cv=none; b=WDzaUbwRztLmi7aCqlzbQ3kIeSXg1zkMuLDq3799Ipy9qEgq4VgwZlLfufBRjYaKwfHep7qmskOkAtjkECiSdo616e4yXA1Fgh/l3qOa9x43RV/Uocg3RgWqEZ3L0nFagRHuFvBvXLOUm7lFw9fd1HeCLNopo5IgyhwEWwY4t+8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766817834; c=relaxed/simple;
	bh=AMPNLNuzOJL8yMaC0PIl9G2JOEfdA9rT8EvlrSXeMNM=;
	h=To:Subject:From:Message-Id:Date; b=nfpp96S7zUVbYBA5vsEWgYk7pvM3m2nodUGxwLI9y+TXfEluRNxS4WQypBgCuJtfzKxKnkThnIaPcOuz184kSpMoqvpQ3NGnRC3ZX9K9rbLHrg0qtTEijPVujLkqwC22Wj80gIyZ+4/Us/I/ir/h0xMBWjaDCuWOqgSA8cWW61A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iht1///j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iht1///j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAE99C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 06:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766817833;
	bh=AMPNLNuzOJL8yMaC0PIl9G2JOEfdA9rT8EvlrSXeMNM=;
	h=To:Subject:From:Date:From;
	b=iht1///jm5JlyDkEXMM84y9im3yYqsfaJdcbq3KmtAU9LBol1mtOcOEFhdLwJvVfh
	 ZJPmSe0ulzluFefLo7wneEwdHtdPy0J/xCrU4lVkOpmCnyMb1dw9l+Zge1+HcNcTHE
	 VMJvKymhHBjrvKw3oTCC7LLbyi1ZMXggyckfVQmVHu6WzfgrE717cHy2Yc2AyuOM8Y
	 iGJxtoUH0yV046KRV4XXyi/tt23N3Yq8Xk3bGNoFnNkFLuNnaNSupIlt3rzLScD8Rr
	 k7ocEcjr4+IKLyziDySphZeds7ayp1phHsZE0nJ2K1Sd4SJcGyZA5B4Br1P/I2opAP
	 xSL1sDCHn0Arw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98919E8FDCA
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 06:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176681783358.22618.8181001646983545775.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f67cb4ecd8bddf744999fbc17a573aa26f822370b1623b9711fdd2a4d2b8a8f
Date: Sat, 27 Dec 2025 06:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766817833
