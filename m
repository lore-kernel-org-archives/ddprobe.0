Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28C251A58D
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 06:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766213034; cv=none; b=oSLKsRk/Ul8PknMWrnEf+F2tDiIpqw5fg+Z8iW/IoY8c+Jtvhrpkv29hpn8+sX44EhrmM1xAn0FUrIIUOWlilqVM6bOPYnkOBzU6pLrszNZ5ckjJsWEDc41vKusiDQT5etykv1LLuNOPrEtkjUiJHAV2OnfIYn39gUFucoItuRw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766213034; c=relaxed/simple;
	bh=s4uiKsHgq5Hqb7bnUgjOso+WfOh7z1P+wns/rm2fgw8=;
	h=To:Subject:From:Message-Id:Date; b=a7PK6IaUW6OBkcsQkn09MHMfwc7E9yJl4C1F0NJGsDOmsQ6zEEGiICeCNvq2rgArQxIGFQO6NFexZ44DQjTmqzBaXJkkUbebwgnPubYaBfQRqEAbNsjrBarFgPSyxtdtiPg0D7o33ebmKeaEe4rypqyUi4GzkG+dpQGAN4ZpAFI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zir/maPG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zir/maPG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A33FCC4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 06:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766213033;
	bh=s4uiKsHgq5Hqb7bnUgjOso+WfOh7z1P+wns/rm2fgw8=;
	h=To:Subject:From:Date:From;
	b=Zir/maPGY/nm3Alafyqlk+2UXiMO4uhq45qC1NeVdKvVi+f99AowyHwU0bF3L0FOb
	 34U52559bHnQtVJKnMy4sQKrIbj3UTk7xsjMgXdcH09G356xBH2wz332dVLuooiEv6
	 JLqWO4L5b9XTTnnwsZ63pMGxMmLJZbEqEZp6KOrWV5u3j/x+EKz69HTsZBIOYTb14q
	 h7floT2W76nMRKe8JYC61E+LLEGr42K+8VVXVhhhVsATtzTDAk0srjPoEEQGW3kGeD
	 Vgf5Sd2uRajf8er3ABrVr22LL6J3ilcpW0DzPUz0k+7Dpe21IgUThBsshtf0jhHV7o
	 COeO5pvcT39lg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9335AE6689E
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 06:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176621303358.17532.867131465140147306.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8de19cb4d400a42d81102c575d5938e304f477bdd66eba61c62207dc000bdcc8
Date: Sat, 20 Dec 2025 06:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766213033
