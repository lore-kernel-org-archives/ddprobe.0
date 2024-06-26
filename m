Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3767618F2C8
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 17:03:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719421403; cv=none; b=RUA8W1c+b8/32rGC8VjOnSWTS//c0gvaQcv03TBf2tRxJR54WTxbFoM6zwN+CXUZ0W7wFNwPvuEhgwpjnTNEWk4/FnSAiLiRFBb9n2kMIOl1w88ZZPhI3wStLDBz9wavivJBaUlkpBh2xZVvE5C4mGEwzfu0rgxJPwx4Wnxm1k8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719421403; c=relaxed/simple;
	bh=3a5W/ZrnmlEAu4Aei/nwUnSK4XfS5GWebr/hof7k5oA=;
	h=To:Subject:From:Message-Id:Date; b=ZcMHrLZtdcvpn5HrxsNT33FtJrcyXfa4JSsfBDGdDsmeXtKRRF1drMGNP8ctQ88weDg8aaUMdPKZBGpQZxCnTjJniKClYoW4XgYtovoAgAPl9OgVXdEiSvN0WORRf4P4f0yJkHJBUZgfy3idn12nvGI+YFm5hXVkXTlcpNczKhs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q9MkdKir; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q9MkdKir"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9014C116B1
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 17:03:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719421402;
	bh=3a5W/ZrnmlEAu4Aei/nwUnSK4XfS5GWebr/hof7k5oA=;
	h=To:Subject:From:Date:From;
	b=Q9MkdKirPUVhU9VC1BlZfOZh9VQscJ0DFig1+p88w/Do2f46FMhmSREesSN98dw7j
	 4USSdaISkXwVkyNGqB3SuVqBMT0io/KobAnJ8Ra+Qh1VT3oPdtOE+hpnHFzapb5DrF
	 Tp83GKp0xDFJAunUmPvoZjPsdS0u0fCIQurdQpWvTo7YQJdT1Yn3tVa0MpwrfENCzV
	 v4a46kgflyUGR6Uwwdy8Ewigt4PYOr9p5rVSn2lpaNnYGzTFO1XqmxpQ48zdxyDXZz
	 Uda+xEajtf+WiS4Y90jxHRO6bE8uPfYygK8ndo8eiij7umS2Cj2HiCUigVMS6CsinK
	 LJ0BWxh3bBauA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7EF9C27C4F
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 17:03:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171942140281.24982.15048067809780186634.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60c9ec85d76e1c9f07e482f36557ad7dc911b8fc12c834ece8d6a5fc525542da
Date: Wed, 26 Jun 2024 17:03:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719421402
