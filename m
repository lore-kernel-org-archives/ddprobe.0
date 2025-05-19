Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BA6235957
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747645794; cv=none; b=Kl1X60ZYa7yfHeLbjhi5lrLj+m+OFw20KBMwpGZK8lOcmetlKDtm2PPjItV/zsJl/zam0JHcUW1fyH2XNWU/44vDTVnVSqeKk1DgcPfzFwnQBQt3mQyVl16jsSAjMokypLkLgClQfvWfu/RCF6p079tdsN0chdhmI+KkBmyw1QA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747645794; c=relaxed/simple;
	bh=GU+7UBOjSaHRf8FlRel2++956tq7cohU8DyvWlY/Hww=;
	h=To:Subject:From:Message-Id:Date; b=Hxoo6IDkWrwPbNcww3Wozmmq5WjMXjLJd43JBoYRL1bb0WwJZ50tVj0QXOrzIeW6qA0QY12wb0vNwzTEUIQ3BuNv7gCLFDRKdLkXviBzu1jez+Fo2GaEdYmesjNzO5N+1GXFYQuypIasZ+YW8acbJB4UUm+pU7SXEc0xf6LBMLU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e7uCT+dt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e7uCT+dt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A50AFC4CEED
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747645793;
	bh=GU+7UBOjSaHRf8FlRel2++956tq7cohU8DyvWlY/Hww=;
	h=To:Subject:From:Date:From;
	b=e7uCT+dtU5d3C96Snj8YOrTDRJKQ3xrHowcHCkkjmZ05XwtZNl3soh463wtp8YrmY
	 xcMdjx22QdKRYUTYrgSUqzWIOcGj1iPvldppn9HLkqdLSzzBCWY0a3nfYWEAi2BjSD
	 zmyNy+KnXoJkeX/78K6CsWPMHtApN+5jA2GpHtg7Uei+y/FEtLdaBceDkyxXdWULAo
	 7lcg+MMcdT7X1guGap/yM5Yd8G5mjfImmsEZo6dXBKZle3QKOarr+gZTCrdOQpYHrc
	 IT0NWsABtoIfAHKP65RrrTWAKDAGmfEaFkccdHTFNm9MoG8f7l9x7J5r/Qz1LNB8eQ
	 8YtUW+aF0pRtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91401C2D0CD
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174764579357.7747.14478640498014097956.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3210d60ec0b174a6eb05227ee629498a5923f9c37850a40976c3bc35a0b393d9
Date: Mon, 19 May 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747645793
