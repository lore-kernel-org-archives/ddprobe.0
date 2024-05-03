Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F7601552FE
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 18:22:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714760543; cv=none; b=BMDXpMl7aJSMePG2/aeerbxrEe8sncEYzmMlhVEMtUNle0fIqsnK8BsiaJvU4104ro1fdmsrcXYnoaLfOljzZ8L2nnERw90EhyezYODrkw6S/mfN2LDv6qmOx6sH816CSsIYXL8H1MXnlm0xgIGZsd/zzU+2UQYhpcwOU/ntGl4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714760543; c=relaxed/simple;
	bh=QiTk94TrJ59FDlwOhQfTk3K+p4bU5KHGe8yCvTIqMeU=;
	h=To:Subject:From:Message-Id:Date; b=HL0TuRWEDU3WmtWyTkRj+tBPc0LGBXFlgHNmb07LZFOgoTDLSu3I1BnGUR38i3YKtuXdHzn7PsmFvizFiOlS4adUtXv+zgF04zi1MAot83YDdsM79q2dktiLxDHI5jpzOaw5PwoxlqmNKaeI+34dxUBPByHYgCwpJT5PgDyAwtc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OAFvmMT+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OAFvmMT+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D58F5C116B1
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 18:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714760542;
	bh=QiTk94TrJ59FDlwOhQfTk3K+p4bU5KHGe8yCvTIqMeU=;
	h=To:Subject:From:Date:From;
	b=OAFvmMT+yJhWbVI0TtjQXFwGVZ4WT99Wq8poV2buCm37YIzudXanqOq54+JGjNWHA
	 MdPPnTCIE/xmh+eSgzqDeUzNn5nFJ7uHWC3wXLFDGRUVE0nFUpSW80ZXmthg4q6Ylk
	 F1m0rpFQQ5ul3h0/AVhLtZWe1MDqwbt1xdaSz6O0IQnk9KHbW6y+rERErhOkq3uD94
	 OXXR4C/UA6HBOK1kF9izrQO6Hx3BqQ9nnfsRA8I3HFN4LlcchFDkMzYFTHbiSlQ+em
	 AidcT73qwYCDA3ND5lAkh3uOGFqqBqK7afFi2QU2yZUu61Txc4vbAFAhdK6oNfhVW+
	 h6dZnTTWTpdmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFEA2C4345F
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 18:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171476054277.12789.15855697499397121069.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44e07d711feff7ad2acec7dbbd3233f0a7708855d5eaf5f3e20e3baeeff1c354
Date: Fri, 03 May 2024 18:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714760542
