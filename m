Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F1FB1EF38B
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743581394; cv=none; b=nrvYPT7SPmfIrhcZHZVKkthTr0dQphhtA5iVcROugKGhvC/sHHu/MeACUPcI5xeatoNuIiqXlbB7kKHdwSw3fzB+jkQBm6vNPE1eKNrl+wnBk1iRrcTzBL3G/8d8L8z6YjgRQzC0NjBPmLf9eYePDX7nEc+SxpaPAqdgHcQtl2A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743581394; c=relaxed/simple;
	bh=LCDk6NfZAaQXvtEtxotKxv5nTa5YP/QyXmHqjb9maik=;
	h=To:Subject:From:Message-Id:Date; b=E/DqygFb0pCT5ZDmRfV6qPhWsOuJCZG/UWBnNSwW3WUVJQh8H3FmFiGg2Dk8AqLs0RkjmHKl80gpjp+Ay7NBGRCfF0aKxbTtqn/TsWYaGfNQbdNLLbZSz6/8lTdeRTukq7nT7w1+n7Wl2lkc+sBVouSO/9eEnt9bd34h65RpmHc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kGx08fSN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kGx08fSN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAB24C4CEE5
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743581393;
	bh=LCDk6NfZAaQXvtEtxotKxv5nTa5YP/QyXmHqjb9maik=;
	h=To:Subject:From:Date:From;
	b=kGx08fSN6gDplXFyDI3GP3Hp76BQy+Io6V5V9s6Rb2viVAYWCGtQcgs/5NYyGT/3a
	 eteXeYStAX5P+wE2IzazJJUZgwniffTu1lkeDynfwJQcCDHEk3OmznbM81KDBNyYUq
	 Vod7FE4ZUmMGSOTvdPyVEadTxKhqES7qWKGe6F+KPnClTj0oTyKS5Q7JqPSun7cA4s
	 +aW11k3npMpZUzgldKqAgJW80pnDEUN95MtcpjNFIYCQkaI2y/pRwv96xuoRA+vGeO
	 LlXU+p6quYFCpt6sj+QUHvFHXGn9ARs+AHEAt+2DQl0O7uHEt/VmwjjX947ins8nRC
	 8jXZ04B3RDuEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BC92C28B20
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174358139362.12520.4862457104393845835.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e799eee257100eea36313d576afc1cf0d1e9e35ea2be9c2dd5ee4d06c7693a2
Date: Wed, 02 Apr 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743581393
