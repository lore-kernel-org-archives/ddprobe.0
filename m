Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 301892030A
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 00:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789000234; cv=none; b=XPhKysp9LeSPZMpTv7TCiC9dXx5lwCp/D3p7sSJxBXEwqgfPGMXegoaAiHoLYS7zU8DBhM73tSl0l/ux8y0a5NhPpJhq+LSaNoRBFC+gYubdx6KgBnV/VPBxMAYWJdKLlsY9da7HQjrG3b7e5wl0VyNdB+s0862YhkV25Jd0mDI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789000234; c=relaxed/simple;
	bh=81SM1Hz/sbN2enVIko+DqalQC+M/pcUr7aCVFnjXt9M=;
	h=To:Subject:From:Message-Id:Date; b=KbKgW6mYDZ5xK8ZSbQraQeIYqEbmt9hwFvNtemzAR17UDK/Jo/XJlLkYnGqJNGjYTVe91CTSyzlxFS7AKAA+TKJ4ljK3Tav6ura9diczdY+56ck2zR0tS21mxAISEZcFzcEQciFbywHKGMrL35WKSUxsemN9VHh4C/HkWiTQtDY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T8VfNhON; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T8VfNhON"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4128C2BCF4
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 00:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789000233;
	bh=81SM1Hz/sbN2enVIko+DqalQC+M/pcUr7aCVFnjXt9M=;
	h=To:Subject:From:Date:From;
	b=T8VfNhONC7l9UhqjNTqhA1/emRtpZ2qk7jdXmMUpyfBXRLgM/HNuKc5/ooJd+LOYU
	 LHVdIBTQWQ3nPvWI+/4rrHfHNoDkcXr56DhBxxO+W9N0cNtTLfzJIoZ6KC+LrMW+hc
	 FFRis8JBD/5Yf+5QpPEQHpvahEM1yFK4bDTw0Vd0t28t9ngMSWd31QDxa0fIrRRTcd
	 q8bdOetMlvMNVIykRsQK+dxK39LqVmHsHQed3+a47Qu5PEVdiBh8KmSWVG31UgVbPN
	 1w5sxiYtw/Q4fGEY7P3enScoDA/CGMrg5KATXAuCCOUecw5+4wHIzJbqtUeymjouOE
	 Z7uRlJhUVj9oA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF769C79FB7
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 00:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178900023370.9342.8500380748563284186.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0aeb6bedf70117ed9a733a5ad6dadd341aefec2bc5c3c2d99c873fea448e0e73
Date: Thu, 10 Sep 2026 00:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789000233
