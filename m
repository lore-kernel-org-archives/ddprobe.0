Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0EBA3B8D70
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 16:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768495434; cv=none; b=qpQjOIhHQmVMNifG2+FcJ2IUWEOejuZWSm4zf27w4f9Y63vbAI02HVmoXVOoOVoDP8WRvJbIbcFfm7Bee/ie0yg57/aw+Z/4iqCVF4LpMgnXimECR+gAXA7Qy+L2b8TK1o645EEbu3RsEOw5tGRH0rQY1tLwvrSVb/wwM/tCUCU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768495434; c=relaxed/simple;
	bh=Kf6QTGqD3mhmYdUdFbhU4c4Jqtpy6i3p6/Ft8iVNumc=;
	h=To:Subject:From:Message-Id:Date; b=kWhj6XjOQKrTeFf5du6uD7dzRtAoJh8A+ZqajqkAH4kNY+sTd5XJJgaKJRjYiKtVcN3zUJrB40SX08qvmQEK/oVMRSD0mbqPLcMGnZmoWMVqY+3o8OLWF8HRG8iwWaVOeToS76v53Rk7VMY3lNh09si9wk38vf46CajJd9J16bA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ItGX8yPf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ItGX8yPf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1B04C116D0
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 16:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768495433;
	bh=Kf6QTGqD3mhmYdUdFbhU4c4Jqtpy6i3p6/Ft8iVNumc=;
	h=To:Subject:From:Date:From;
	b=ItGX8yPfWHF9LB9Q7aUNR5i/btQBTWE0grtjyxFbaNL3r7Wg6gt95EkFU0gPBsOE1
	 +RVtSf1s5RzB6rPPYkUOLqE6qRgGXhxsjPvh4sjrCPh8US8eiAdfHcgBnsDd5MIp/Q
	 yEix/y5tQXXmxdktB0/MKqSVgMoYa7Vq3zTkIdG0WDy7TSyF2I6ka6JqMUKkhtSLI+
	 P6Tm7c2qBZ2pS2W/MQFwdKJVKcTpVmKBdtZ4a8iESf4aBQafoJcOTIIBYlCXzeTw8Q
	 7UXaHXwAfGOTNXudI9vcuDI91xiWKxuUSTcbx2bvlCt6uCVpa3Zq0s06HzVTDu2Qmg
	 e3RMVEskyKhFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92F9FD44C73
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 16:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176849543359.24973.17049312068353779014.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e796e9ed4b389d180ddd38710bda8a2450b0748fbfd05ed952fe64fcce194df
Date: Thu, 15 Jan 2026 16:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768495433
