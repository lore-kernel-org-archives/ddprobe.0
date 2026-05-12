Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D3FC21FF21
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 17:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778607634; cv=none; b=CbapMOzAdFzkK6sxnoz2JsTRL4l83+vNTe4FH7Ii0WcWA8EUj8MqREWZf66K83UOmLI+LGEjJ5onZJC9U7RHn5IJ98DbtyAZ76bSh2s/LnLs0qifsJxYwc1JE7X0yC40+z/PqrMh2AMuOu6VF3+wZA9BNcs8DB4d+Rp+LgMs7Us=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778607634; c=relaxed/simple;
	bh=KS8k9uVDFanIDCBd9h434pUKeCwqNYYy/+ZKHNED0sQ=;
	h=To:Subject:From:Message-Id:Date; b=DU6NEX3LVyT98zrB0UN0owuD4YSl8J0s+tsc5A4gxdmcv4w/PdxJylyTNz0X5as5A5xqQ2T083Cfe6M+xH/BhxqScu7kvZQpuUymlR2JLUnYGdbCOyrcTLf6MaxnG0H3bDgxgg8btyIKxdLm7HBiYkl5rvmwHRHSwu6wbX8PNEk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PDRyApMN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PDRyApMN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B98F5C2BCC7
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 17:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778607633;
	bh=KS8k9uVDFanIDCBd9h434pUKeCwqNYYy/+ZKHNED0sQ=;
	h=To:Subject:From:Date:From;
	b=PDRyApMNM6racbsRT8UBrqp7JmNlPCqCbZ0LrcNR7zoT/JVVMLRoJDH7kRfKVBZvJ
	 ulMeFxhorTqGR71ZISc6pA8wFbbjGbgMcagwBlTImdleVWPDqHIq7zg0+br9SmVTwP
	 us397cJnwPMnrK9G0JEqHTgl5dWoqxRcm5/3hcLFHwtqnt3Aw/lSzgQC2EFH5JtnsZ
	 hdfghtGvjpJ/zn9SpAjlqpyxzaGBTnxoNyPkgBxuGiyVg232BYzpGmUd3PItG6lMH+
	 CEEicFz+ITMZCghrLbuV4ykrnqTOpbptyNZK21dxkT32HSdBattwlyc6Yo+VPZUkGv
	 jp0mqxydrcbWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABD36CD4F35
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 17:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177860763369.12093.12805397379601508182.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f4729fd0ba728d83c0a07134a31b58946ccfe226617598258f6f458edd8eaa2
Date: Tue, 12 May 2026 17:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778607633
