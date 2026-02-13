Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D4BD214204
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 01:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770945294; cv=none; b=dcTnE37fBgSszKFrFkHqyBBRD8/30kw3Al9iPC6P1OgVGAtZPHHfzQf78O638AeSsjT3LHSIMziqA3vgLRlCZmojklx843K3ch6/1FugUQA7qymf1Rd4xOVdS8xcDkzralscNuW/uz0RfOvj8Ei5+nOVlzQ8ghPLiNRTKAoIRoU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770945294; c=relaxed/simple;
	bh=t/kryHxtPG/OmdqySGNsccQCrNwgP0o02y+OF9GtSZs=;
	h=To:Subject:From:Message-Id:Date; b=jfedZ0lN6AvM828+FN6RCnsZAJdSXeYH3M0dW64ImaPoKMPyoPhtDPXMQX3xagnisE8kIx4YtW7vAEFnbDzmLOdnjf+riKqSiJKhV3dDbWnqz17hfqUNsOdcYDL+BGSXcGntKhZy/f+6NwzX9DJUb5NQzWLaxFIe1sQ5QqtQphc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JTgJSt2U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JTgJSt2U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADC3BC4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 01:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770945293;
	bh=t/kryHxtPG/OmdqySGNsccQCrNwgP0o02y+OF9GtSZs=;
	h=To:Subject:From:Date:From;
	b=JTgJSt2UXJtx7xajTOlsQmB8jjvxkRNtN2/lQSlEozrpHtGVuzMOC/tbAI/iFau6O
	 Mm/R9D8+SLj5we5hj1/gn/xyYSgl0CzmbjFZFm9G98dLp5t0xR8tR7lZZt/IL4/3/K
	 dnN/j1w5K05nqVnFV4+QgaDgL3cXfWhZ/7NlW53Zc+mhNTcpKcM4U2BA4xeIUAPm6u
	 qOm0b3wrvJ9hHYWCagEmgafNQBUFncNH50Qkn3pVen18RTDkZ+w8uhccNcQKX69zYS
	 I+nUbKVqxdl0apAnu9qHiB1+TDoMCUq1Yxm0drN9d7P54MfNGbnyMu5WsHI869nSf5
	 42a4rg93RKsUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96E81EEA871
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 01:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177094529360.21245.15457121373954324172.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ebcbbde1a698d209ee00d2ec64925982f845bd952820e9581f0b10bd0d838795
Date: Fri, 13 Feb 2026 01:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770945293
