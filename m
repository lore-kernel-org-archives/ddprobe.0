Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F02F03AA517
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 13:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778852434; cv=none; b=s/K50addNi9TOl9LWS0yJTqCmq5EeqECvue0MHQrqSaN/15Wk9TIysMdy6OVa16dy7IuelNfH2LMO7m9ri8F/Wge3EdbqHf9inXdr35PGnG1UOL8cG8deq5LZflFzsmgyLtHZ+qKv/ksbBZnIVIotMECiUHjAMorEMtaSQyZ3mI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778852434; c=relaxed/simple;
	bh=qlfCk4xAJFiXz3V/X5EUlRxGwjob704gaIuLa6PdsN0=;
	h=To:Subject:From:Message-Id:Date; b=WeOews88MKcL3mqqHPntMGCi728DdwTrr7x03cwposHCugGoum6/wLK1aOC+9FbAJQt/HrWL/B5MjwYOiA+9n1cJc59rwZeVnh/C4NUThYIyG6TT0hVa+11XsycBOkK5gS/Z+p+55+dlka4kLPPslOmuaBR3nSEEyk52a4vJ2JI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uyyklPqP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uyyklPqP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8482C2BCB7
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 13:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778852433;
	bh=qlfCk4xAJFiXz3V/X5EUlRxGwjob704gaIuLa6PdsN0=;
	h=To:Subject:From:Date:From;
	b=uyyklPqPTn6XkZm7z+JjholohBZvjodmSHceexSkIyh7Z3PMTZpFWj01HklHNmeck
	 xVPIDzKbkHrCSLLIXaZQRuLhNQLoVPnOHoRkVsWgpDOy+Ymr6zjQjMp6zsK6ZPjkuX
	 VkpKu8Whv2eTYlsYd6Zh9eWv1OHfcw3UKqa/NC4/K98Lo7D3Ax3lRs40n0NKRUZ6kS
	 CUcSwgvk+y+byYP5ekp5ykpAlzTMBOczjgdUVwWdNYTMKN+bz4+DfiAVhABCWDYEKV
	 2/cSPEds5jnNIhw9Po7VARVCU8+kVGnc+QHiRKOua719mw21tzIUd/YvdnL8SekWNc
	 J5gqy/aRY3yTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAEADCD343F
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 13:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177885243369.15806.4709207873464283377.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 979669482c4243964c4ec988ad2600b75dc9910938c3ea29a03d605e035ac165
Date: Fri, 15 May 2026 13:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778852433
