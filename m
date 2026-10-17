Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5733B3A900B
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 16:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792254634; cv=none; b=taISkIi08B8HTL+7bMGjFlcQGCQhLoCBgc202dHj2HIl4grefH6amyEZdUxn0GGJwnNfK/axngwjDNqTKBbx1NKixUS4wZtUuJb4UNElc3yF0zIaK40uX8ZwtVkk79xKkjQHr+cnyt1Ct8QMSnjN35dOtgiurJ44BFvgxPmP57A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792254634; c=relaxed/simple;
	bh=8+AAqQaVbosa58m+d+gCuh8BnWSqU2Supvzk7yR5yEs=;
	h=To:Subject:From:Message-Id:Date; b=XkD/uPmtJRzglNRw5Fyx3vI+yNiya0AOUwVR2Okmy3QzWpRdnTu6oHM8oGSZO/eBsHXkSH2FH9HluqNo59Izc+DxJqu+idbQ87rF1E6AqDzi3+TT+N8bB6hjWUSvsDTH3PUMI/n2OHD958/pQiZ+bBVA/UlfVf7uJfq6dLfZU/A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I80Vh14L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I80Vh14L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D82F8C2BCFA
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 16:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792254633;
	bh=8+AAqQaVbosa58m+d+gCuh8BnWSqU2Supvzk7yR5yEs=;
	h=To:Subject:From:Date:From;
	b=I80Vh14L5GZK48pyHYJ7Mlbo8VSw4DLnO930w9rwHzZLE5e0678tlAYmWVpPREG5+
	 xDSS+ZBq3vwL9aJ7Jns+mVM5ZCvl1mHIx33LXOD3eHlWsDcbOy0cijr0xY2llU0NSI
	 AOCpuCDRh2IrQMsEzCVLXWO26chT6sH1GrqKtjlgr3THA2KYqlC4B2eNstd6oXm4l5
	 waBDv7SEMKG/2b5Wf+PZqTRD22G+aonfWm0/QiWYKn2WqK0WnkuI8Id7aCbC+C19ZC
	 PqWInmdY0uwD3ZueQXthzUCyCIafgtwZcb6LV/5YYFEwOFuLVFWWbRE+6Yb13c0SsF
	 BCZlXKJXhhEvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3310CCF2C1
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 16:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179225463372.19109.9843771528038433976.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23f13c8f6562399bc42aa7baeaa02d8b40e6de3df4836e9e308d5d935fe9d298
Date: Sat, 17 Oct 2026 16:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792254633
