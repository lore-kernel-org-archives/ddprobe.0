Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11B6875813
	for <ddprobe@lists.linux.dev>; Sun, 31 Mar 2024 15:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711898897; cv=none; b=RR5XELmPtoTJsrbfbAvkFZcb2ofGmBreo6LBJUnqBZDqsRCIaafnvaZlM9KkSmK9x1h4KBIYsZOnrldf0CDNFQAeXukN4wIMDhDMMW0VF8X4YtVUQp/IL3cE/AkCJB7S8x8GLM0XPC2jjgsND63ZcfPDFftiHdssuG5jw+C7sQ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711898897; c=relaxed/simple;
	bh=C2DG5rIsbcR1hwMuBd/DPLHX7aiw4484ivCsU7mdBes=;
	h=To:Subject:From:Message-Id:Date; b=p5fEIuESdSoQ/yA+ztExLbzjVu+EXJsWthtoaR2YGjVNH9yOl7InQd3s+MnRJcyt/cpipmeRAidRFIke5rkCERSSvy1nMyk6m6c6Um2kT4p0ZL0BQfjlRJshcZt1iBYCLdF3VMYUdRcxPsRTtpU27ES+/WkEJVMc7g3NkdiaSao=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QVtmK5IQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QVtmK5IQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 913DFC433C7
	for <ddprobe@lists.linux.dev>; Sun, 31 Mar 2024 15:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711898896;
	bh=C2DG5rIsbcR1hwMuBd/DPLHX7aiw4484ivCsU7mdBes=;
	h=To:Subject:From:Date:From;
	b=QVtmK5IQoEJ8LXNV6XXB5kxLwVsjuFTg4Za5yZH0zNSsIrUdrFnH0Epj5HQWxocij
	 WJUXa99tCJTOAPu/7lJcJYiJklgs4WhQn/lvQvHgO/0YH/RO5FcT16bB67vvb342E8
	 S9h3eMnflovsGjg4DD6vSm/xuNBanVNVrzaPkVaAPO6kFJI1RoK02/4OQ7teH0+xU+
	 yKdMpDxiRxtYrsYZxKUWgORPS2EDVAAUbnIvs50YK1cenG8TCS5vECfcu0gmXQMocT
	 6bXwWiasE2eJtObH3Z+diy9lxCxyk/HP+P5MXbMwySvAwgefppla4eXiEV2FYy7Qwv
	 Za7zCKl0TTEgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 73772CD1284
	for <ddprobe@lists.linux.dev>; Sun, 31 Mar 2024 15:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171189889642.3425.10573254415960834551.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e799182c7071d4bed49bffac5ede96f857e2bc30d5c9b38ed145c19e2cdf775
Date: Sun, 31 Mar 2024 15:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711898896
