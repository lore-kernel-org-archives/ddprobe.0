Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1124A1C5F08
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 19:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736017554; cv=none; b=V7XKMa8ccsXUdSPQf11QISwalB4bFTb699eJg0s3R+JDREbSMCRrlHpwlRKkZQG8D3Qk4FFgJCL60mXLuBWRcqlvV9RiUjIjyP/0ZX3SkG2IMX3vQrRd6xefc7reLhjQ5blMv4hYQ8BpOFacT/UBo739PkM0p33UvxzoPymVcr4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736017554; c=relaxed/simple;
	bh=DV0a46KVWpHmg5g/KXCgbjR/RpGEc8iuF5KcvaK7qBc=;
	h=To:Subject:From:Message-Id:Date; b=Xq6sXMDTTb4+mki2qxIMx8eAUbY7CWJLF+d7MHZ05aeKXTW1l4BqPKjn8AANyDLqzqFEwcEyyocUTjhoDC0oHg+8WAnmOkOS5o8/Jz/e+POr946MXv7I4ZACWJHci0eklxT5+Llj409W+C7R+7/4S0AM9yU03ZdpzhC5xUcjVDg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DVNJ6eE+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DVNJ6eE+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6ADCC4CED1
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 19:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736017553;
	bh=DV0a46KVWpHmg5g/KXCgbjR/RpGEc8iuF5KcvaK7qBc=;
	h=To:Subject:From:Date:From;
	b=DVNJ6eE+pJjgSGmNO8/k954M1Z+a8hkGDtMxIwdhVTrQdsmkZsw1zN+ocB7oT5xBh
	 LukGW30C3WsekaoqdKVksV4jQ9GXVf4xtDy2yMrTaIdhmXXYkRxqJeU8ePGSHpo/2P
	 QAq+jMei2euwLP7rcpPI8i8w3snngwwjeCoLhKNcePcEwAZFDrMgzfFvHWmfYKqrDR
	 lNmbV7SRYf7bkH9V++oeJuAup5smHsuIOCoIOfyR+skapSBLuinjG1HIWKjGNIFcni
	 ceabM9z94RIqU4DVdOyIHDnQgFWlRBHVnvh63nRZNgBX95w5kClEqlKN+d49PD0FS9
	 pM9zu0zkpm0ag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92E49E77188
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 19:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173601755358.28323.7307204814974163745.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 447bf917fea14f6c223941616261ad51d18a81d3f890d301e1f3f123138c2e2e
Date: Sat, 04 Jan 2025 19:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736017553
