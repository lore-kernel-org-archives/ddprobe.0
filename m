Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BA0D14006
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 04:29:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720844963; cv=none; b=rxooguC831bNzA/Oi2ZDwFR/mBaBj9ej6CdJgx1QPCcWtd6pJ8T39WziveWOeoxrIKXUtd0TekvRFje1WiRnF3+19S6VZgfdKc6FOcR5TDCla7Iys/WB4Uo3ZVmUCEo7TlTGQiPIREElQqEiEhnLkyIubknpdkgr8PB6g19Wfug=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720844963; c=relaxed/simple;
	bh=d2ZwN6AESXZYjK87F2axwZcpFDdwtz+e8FeMo7qj1Fo=;
	h=To:Subject:From:Message-Id:Date; b=USGpVpEhLRrkajdXqSJ3Tbb9tSU4rkogDqZenlInrMYA5gM36s1e3mfrQVwZ3+XB4FS6MtSBEWJMhlgwVuzojBC8x5injwvDKUJtFAHpSSGDaWvB7DRcE9kltPRD0T1mAlVaoI4YEjoZDYihCPnZwIUuarvGAan6VDqdly95K+U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r4I0bWUn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r4I0bWUn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EE866C32781
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 04:29:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720844963;
	bh=d2ZwN6AESXZYjK87F2axwZcpFDdwtz+e8FeMo7qj1Fo=;
	h=To:Subject:From:Date:From;
	b=r4I0bWUnk+YlmzS2c8NMaBYsVybvjSh0JH4zLV6xwlqr2Lu0VsdYPTp+NKDVEBamL
	 4qwYz2+G4fb2adYyaa80W7iBidK1tlHqAQU4x818Ly9I2gM4DMBpPWQMgftQYBdDJs
	 82hAvKYtqOn4m30OS06y0qcwxrjsOJxLl4xDTwQqoCUQs9TNQYM9+wCis++OzpRNiq
	 2Ttvd36FwtN2A+xgT9mOc2vF8BbhbCj1RfW5GNrIt2CArXMBI56K8tC28j5ndax2GO
	 cSJ/TORXcDb8wq70L5OZ4VrgM6nnS/15RqrE0pIiCvtulAvPjjh3kXmmgo9x0BZZKA
	 jg7D81CHSF4UA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF078C3DA42
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 04:29:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172084496280.27223.10043678595193038079.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3732342d89cffa689c6e6a449db89dde6c9547115fdec3fbb84407bed45261b
Date: Sat, 13 Jul 2024 04:29:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720844962
