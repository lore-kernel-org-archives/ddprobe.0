Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05E5A2566F7
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761833994; cv=none; b=FSHrDJj6bvmReVtiimAcnTgAaUh5nf/8VA+DqCqZhOfLdtP7fCMcQAAmVL5SXE+MfHcLY4xiQT0uKy9hZHShU26pgzpEz8XkPcoOtpRjNQBWdulObUqKswYxtBTonP/s4H0slUmbrq0WZTxotr4XYwnQlg8MfDNJS8OTXOSPHu4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761833994; c=relaxed/simple;
	bh=spuqCtqV4Z9Fqc8fxKCCY3IFzbQPSL9ui7d83/YTMDw=;
	h=To:Subject:From:Message-Id:Date; b=lx8YhEjF2yO9PMAmWo7f5A62tJbumjO14SkrBRLaocZPCRPFxVEeyAlHb3rEmxCzVjFm2Hd+7UZh+Css7b7lwxUlgjfD81iL7Nrtk5AcJaxhxRQkAIeRH2M4dT8ePyDJTkCe7aoFcyDOJPtNtDVVNDkDoLHpjXrnxPgknhmHzdk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RrxNLcLU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RrxNLcLU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BAA9C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761833993;
	bh=spuqCtqV4Z9Fqc8fxKCCY3IFzbQPSL9ui7d83/YTMDw=;
	h=To:Subject:From:Date:From;
	b=RrxNLcLUwxgLFmTjrhpmRcYen0xCtRPmEoUjVw9gp4rgN9LcwrUugLku8d3KColJ1
	 RfLlvVqN4APMJuARCiZH3WLQvsg1XlTFkXauW/MPuiG/EZiYJrvXUJKp9aFNdNHzrc
	 YQG6f0QKZADRjDW5yg+0Au8vgNyPl1oWhiiN2WH4IAbhL0ku0vXbZES0w+eETmr4OM
	 HdoLiareGSE/yTh5qtqUI9QjGpaatu6egjkSf6depfHkaUnT8xrXoKKa98Dqamj67V
	 rod1vwCWGM7lQURC6l+5blEnz/bZeg8K7O4qH9CoTCXcn33zjbfIyLMhnYFOPwb6fa
	 O0txaszFvn2rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9052ECCF9F0
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176183399358.11269.6953230882181944651.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91e245265772040e436a440dc21985d6092d86f90744381dc9148a58cad89790
Date: Thu, 30 Oct 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761833993
