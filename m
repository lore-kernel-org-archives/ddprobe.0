Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 154B1E573
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 02:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767235434; cv=none; b=HZ/MFgZx6CPx4Idh0EUT1c0ZeFaRhytX6OPRGMKnPmhUtOAPFbMVL0Vi/oaxlv+7uugk22meucfu2GwJKxOrObHwZSQfBadCzXe60IMSMMbefKJnZXLL5J/3gcvdGMcc6truRvyOZvPD6QgqbUAKhs5oySVVm/Uj0+kRTrzuhxM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767235434; c=relaxed/simple;
	bh=tvM1XoSkTK0Vv5yrlBL/mBYJvkGqvhjm42pigP1r64c=;
	h=To:Subject:From:Message-Id:Date; b=b/LIArEvcIiwfPC/22X5fitMRxcgWMM2AFra+Gk15hshwcdHm6OT0Oe33snKMUS4FREK4uahFx2FVu0mrXJK2CnRqX30GlzKB9BkNvGYgMBdAiHD5ZihVFMQESZ/8nX3WA8ZmV5c/yPaxwh84kLE32FAKD9Z7fmjPv2Po9l4lNM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ptLEAYCH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ptLEAYCH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F721C113D0
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 02:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767235433;
	bh=tvM1XoSkTK0Vv5yrlBL/mBYJvkGqvhjm42pigP1r64c=;
	h=To:Subject:From:Date:From;
	b=ptLEAYCHBU+jJw9BRdDJJWQ3WLfwnGiIXvsIbklQcEVdayDwNU41OT+tPEfHC9hg1
	 hon8sKaZNYSzYcsCeFOuYqqrY8ndpG1savA3YHQes0VWmlpT0Z26s4GLrLjVmVN6fw
	 A6iRY36tDXoDoOjPrZaDw+hjHE61I61IzsPnGepcjsl0FzRrptcmAHTzhsxSje0dIA
	 iWUl7utRbliBKqdmJS7/XGWeT2rr4EqKhzD0m1PQvczx6nS1+FZuMqgk76Gu6g/kZc
	 4TwHs2KCCNcOJs0uEEsFjxzCFZSd1n890SaIBWz5eXK6dlRz1DcoAJSx7HgfY30y7q
	 L9XWn+1va2RzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F3E4EEB577
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 02:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176723543357.24415.14168006373741643909.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28579ee6747690aa744c7633750db82e525fd1dc81d35921b1e2c5e248e9c0d3
Date: Thu, 01 Jan 2026 02:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767235433
