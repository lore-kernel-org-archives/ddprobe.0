Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 222A71A23A4
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 14:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778509834; cv=none; b=EprfAG5mv4XcRMTIC1o/CXEu9wFcJb+WTxA9HnGhflt2njVPlzWG522AJef7oaZVesbBktvcNAo0B232vl/R9383l6Q3/k/2VomNzw5yjRn2T24A47QkK+GZsKAYn2SYVipOQbWh1D4px9yXSzMkC+OjSd7eUO/+iWEJ2zI8f2k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778509834; c=relaxed/simple;
	bh=9HTdooTntuO/61KLpDpWzhAfnCedHKhAuEN3sQU190g=;
	h=To:Subject:From:Message-Id:Date; b=D8Z/lYn/HomX4ngTI6LRT65CB4XLwPy2SycnTdQrh8uxYe0kBTGV11SMsERFfKtjDLBfGWQV9Pz50TUsXQD9oSSY07Lv6uenmhxTStQspzOiEGpOayoyvmKDIkPix6wH7Y/pIsbmQSVM0Iz/a+8Smi5jJLSnO882C/dgsz6QqHs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SmApgqNz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SmApgqNz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC493C2BCB0
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 14:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778509833;
	bh=9HTdooTntuO/61KLpDpWzhAfnCedHKhAuEN3sQU190g=;
	h=To:Subject:From:Date:From;
	b=SmApgqNz4a3sgTQ3mZJMxIiBMbnqu8ZZRvfbFO3C2ZKSVZoFThIzoqNk/W8C+mQpZ
	 sDiB/1UPLX4mLAzliL09HtSBdglzZu7sJkRpxwVZKkH/f+0gTKz1V8/xrcR5EI4bqv
	 HO2WOks6zlFzlN32XQR7chDJTe80bVSTXR6bqE6yCCdOMg1R8oBxfr6VZ7LtHcah9r
	 rDppG9f5VituuRScfaFdlDxnmlsP/4Q57RFCRjLLf7R/f++SLDP9iH1LbrPFI4Kt84
	 MyzzxXw/3dqsbxbl4nLAx3VUPT31WXQM3VVQKWZ2g5v8L/Buevnz0lwCdizpckTZCZ
	 hwpTcVcjSCoIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADC2BCD37BE
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 14:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177850983368.1393.17938081336342246822.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ac8cd62071d3a6752fbff9748698a031b60dd0a1fae4c155a8a64281bec76d5
Date: Mon, 11 May 2026 14:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778509833
