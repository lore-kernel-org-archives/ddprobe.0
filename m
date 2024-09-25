Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CF4C14B950
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 07:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727249754; cv=none; b=FDwakO66rYBnJaMFIWPOx9tKvEesy/7WWEOq3encQc0p6I/74IZTV1egj+4pLaWEkh+SK08/HK13Z1iSmq3Ra9CAuya4bJI06JxZ1/+oGXw4QIFjdDi82Lu01Dfva7O+yK42cRjEO19mGzWtmtpUH0XWTHh5PzqHk41TBDOqGYU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727249754; c=relaxed/simple;
	bh=mZia3+8sil8oqiHENTrHrSA4BigpB65BCYTQ4EwE4uk=;
	h=To:Subject:From:Message-Id:Date; b=Df9++Ef2PNq/7L1XDdwdea3nP/jjVQovD7nKQsO6lxNZmbQk02N7NgALxzCQdjcn3AbQjM/yJwZQ8xJEbMr3T+5fuEE79LPrl9dVy0N74whrrAi+c0r0s9a0JzS3WhICKLHIm80Y0FTDq8jMSGrPJJtFhPgSDsPa0KADMVN7OeE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uvxiF6Nt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uvxiF6Nt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A80F7C4CEC6
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 07:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727249753;
	bh=mZia3+8sil8oqiHENTrHrSA4BigpB65BCYTQ4EwE4uk=;
	h=To:Subject:From:Date:From;
	b=uvxiF6NtjkevvGEBQ9pQ9eOtSagJKDHwVpqjoahHHLFoT93Ud0cc5pQTwfVeXE3gy
	 zpJj7pnSo7BvY6hcs0kDxQEp365jd7nr85/RW4cUHEpbM2aIMx856Xoq0dVH+qYYuf
	 6V4W7/1ni/F1Ws1ygAs+BW2XCQbccpIZF3EdtO6w0cKrKbllKeNbcApY0x5Dwze+lT
	 UbkpIqIBTrOJkd20HbJ6thieO1VFqoomO2mdqbAPd+zAMbcqd5+2p3ofAerV+Oyfzu
	 L5Z66BTqbGItO1RJ9ZpPFplGGGIXXqaBMeHbLiOypyP13qtsispaTrFqSiVfF5xze2
	 O78Rd97LsAGMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9630BC369A4
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 07:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172724975360.31248.11397188989234614177.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3a8768ff3f2e61fa529330aa83c2e4014eb84c1055f1bf7f45faf513f9da4db
Date: Wed, 25 Sep 2024 07:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727249753
