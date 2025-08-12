Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5611C1A7AE3
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754959194; cv=none; b=b1gz5JnoJbRMSmXFmcgj5NmQnArzKZHXZy3yjndJpfCvXqnfnAAgxHJVeVM77w6bNx+iZGtS7wqMgIvhP2eWUsbYBKeLUTtPPGEbotnynpevMyE/7Gt723sT/zJ68bWPdv0LqXstLNTk7FzMEf6rDoXjkQXo+p9NSusGgYS6bnE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754959194; c=relaxed/simple;
	bh=/n5G9N+qwGo/G73+lO/o2jHvL72qWSKXDkG/38bIj5I=;
	h=To:Subject:From:Message-Id:Date; b=gtrAKylTJ9ZgYdv1LXnfgC0+FT86LLwQR++33pUx3aIvLU+7Vswd3c+g3bYtyqASi/6l314zxggW3Ct1i0LsKeuaghzbsWMnPx+29k6MFpmhmHgnGufvSWIPRxjWnUejEDJqc6orPs1RSMXcFWg3AKCK8vo92RCCObA+uaTjkGI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bDDDvp+y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bDDDvp+y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A40F2C4CEED
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754959193;
	bh=/n5G9N+qwGo/G73+lO/o2jHvL72qWSKXDkG/38bIj5I=;
	h=To:Subject:From:Date:From;
	b=bDDDvp+y39TkOtIODmfm+tcaHFGcdE+CptKMdF5PBSr0uk71BIPSk5musNtoEM5ou
	 0q5cAi9CiDB19kWp4IEDOQaHhGryW3y2qs3KcmRn+FLMdVKJwviunEQ6ZGa34tsk4v
	 JFZkaZjCkco9Pyb4ptl3yOno4mGXsPN7qynEp/j8GCoNtsD8io7bVDijSrVF7f2yVL
	 4s4gf1LWYvA60C/0goQPSx6L01RukJkxkOD33dGUFHP0uuNfoHMQvUtoAdDHFt7X+B
	 HZ8il/frpnRA3VxCm3BAK2LoOAZ1OfpOLtpVx4pWS43p4ce9G75z8UJY4ZWU/Xgxkw
	 8godAsAKrH0oQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 922E2CA0ED1
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175495919357.13537.6177241220246653841.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd04b5a6ecd765c57119b55f91c2ae96539b59eebb3f2865f026be0b7e288c2e
Date: Tue, 12 Aug 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754959193
