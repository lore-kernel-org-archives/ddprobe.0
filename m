Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AEB019047F
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747474194; cv=none; b=tvD3DJcD5nA3a59lI7cuFs0rcuJrye+dJNCLDbdxdPTR+vmReK+9u5RLglAnbSwCqfPrlRaeWUHeiymN+YM23bDUOJn3Ffn/PBYsNVEFxEA2Xl4xxHP+4mReinqQHMS0vhTLBxdEuJyW/QKWc2Qqw9MtP5LT5I47NcAJS4Gj2sM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747474194; c=relaxed/simple;
	bh=N00hIzeJ8nBoweSy3uudB4IDfQCDC3iPFyu/OYGltBk=;
	h=To:Subject:From:Message-Id:Date; b=K89j75QUVJwgXzWN7B6MmX9r4Tv2YlmlKu91//tssajXGTs7Cj6QGS34OQUQtG3LCfNdvdLKDrFOOrFjBrNXMUGj3smBQEFecFXF/jRo9q+EHrKrbZd343efHczGoiY159anB9WapvXjuc2QRreaC30kZE3LthvQ+VG6uKC867s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u++Ob7Oo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u++Ob7Oo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9000C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747474193;
	bh=N00hIzeJ8nBoweSy3uudB4IDfQCDC3iPFyu/OYGltBk=;
	h=To:Subject:From:Date:From;
	b=u++Ob7Oo61IRE+NhaWcqM08jjQeoQYIyvMTrpu8avL6uKT4KbpkjoNb6aCJbor1MS
	 qDYUXGEbenBVZFZYe3J0XH9BXE0qZx2If/68Ys9j/SLVCknyADuFmYCHT4qBiwLTGq
	 sg5o4vS6vmU7m7lq8Ae90njlBOSB+oJfJvYotEFQbCvmlGSLA4biJr569L49J4O7vK
	 UqabXVGEHoFYwsOHVuQhcIorExEVd4ycLrq4+8g/cPoKn8u79WdnRIK+XN+RkrTrPh
	 yOeln8/z7u7DxDT/JQP5r7FU5bIdkro2+KxD8XMDzBS2wVsF05fnuGDWGhqC6nDM6x
	 q2w3xuBx/xFJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96B7FC2D0CD
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174747419358.21908.18165134212240212729.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35e565ad15c7493ff65fbf13ef4b8c3986290eeb712048233138f25dece8ae2a
Date: Sat, 17 May 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747474193
