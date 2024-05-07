Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B9F0160862
	for <ddprobe@lists.linux.dev>; Tue,  7 May 2024 15:12:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715094743; cv=none; b=mYgSTbs/fUS9fBD5hd1iweNNuAtVXdChaJulC0MAw4iTbIf9lbHKoTt+CL8FwmQ3Rvrih0pD5sQ5imhpRXaMAM0cMgqPdg9P/zKKqGLPWOy+LJZIoKd17NSs1MaXL0IQB5jg3lCZd3BKx964Rgb9ULqiQJ08ENvVZxgtPYS+Reg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715094743; c=relaxed/simple;
	bh=SLTv74Rj3ueVYA4BrV+DVLXnAwTmET1PRViF9Mk0qlw=;
	h=To:Subject:From:Message-Id:Date; b=jGbFDPNg1PDph287ieTgq5nDBgo931872NsqWTjfuIjsM+Hll/Gffl4XCItBTkZGxD/GtvbNO0Cm0a0amL8+OehDCkZnCi4NvBPJLFa4ssOrSNj+WfoKn7chHv1Hobsn0a0P1MeGdVApbcAjSN3vCvXGo/D+xI4+mBEs/HDXcFU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uopuedni; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uopuedni"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0E97C2BBFC
	for <ddprobe@lists.linux.dev>; Tue,  7 May 2024 15:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715094742;
	bh=SLTv74Rj3ueVYA4BrV+DVLXnAwTmET1PRViF9Mk0qlw=;
	h=To:Subject:From:Date:From;
	b=uopuedniydz8Y0vn2Sq7WE2eDb4GrkVJE1xudqDAD3c28Ci+pJliNu4KILbO+3VdS
	 klZhpwu1AvNN2bXXKYtaRVjXlWouyoILZyQfwOFePsiPZbDd8doXEnhajM0InOtiOX
	 9Zy69abzaDB4nxUZoemHPstH0PMV2ivrzTyJybVOqOuMD+AU8vMykgBPPy2lbWTNQ3
	 G75GLbKu7lvKPyo8hCoxPr+9lXKfNEwYpX0DnsYa1/IH1dH8aKHIpoCFCekGY3c65x
	 6wQ0oBE0+lb2VGDhhMEUtpLimeefQo9aB0lXKRe3tIMw+H/0YKimG424OYs2wu9l62
	 TuyBNrX2X/Pgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C00A7C10F1A
	for <ddprobe@lists.linux.dev>; Tue,  7 May 2024 15:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171509474276.30897.383369378129014683.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3c197ceb55cf3db2f38186e14843ff1e25ab505c35363a7727e7e23d43a1424
Date: Tue, 07 May 2024 15:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715094742
