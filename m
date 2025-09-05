Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 906641E5B7C
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757116194; cv=none; b=lEr4/AmHQuOlJ0Qvzsgn8DWRhfQYLZ6A1K/CTUX5I8CNSQlHG366vmRv/lw0X0pK0j3GD5i+SftjFEFF6KFkUW4AUEovajP+wZztaKC5vSXjcAltQA6jbm+IG+Q9dnHZWx34vZhpPmOAq10hjHb+aTOCVj3X73m0PDEmlt/tODU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757116194; c=relaxed/simple;
	bh=SEeQ3nnxPN8Z6vZnAkMMMoelwqCALf4rhKlThkDT5Jc=;
	h=To:Subject:From:Message-Id:Date; b=YrUj56op2sqCa/7Rb2PT3bUGF8N1b/lJU4axyDGTHQPH7AolPFwQQwZPGH/C9VXj/0RSZ+zuGY1yPmYv2HrZmSZkR3RKpfgL7IGY1C/i5hTP4WD6D9/Kp8y3KlLUs4H//I6TazyvoxLrNxPeW1uhvPJI+Kw07g41AnY+mrFzSb4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p3fks7SP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p3fks7SP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2B61C4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757116193;
	bh=SEeQ3nnxPN8Z6vZnAkMMMoelwqCALf4rhKlThkDT5Jc=;
	h=To:Subject:From:Date:From;
	b=p3fks7SPE/33ylgkCfbvw5o+vS8lu8ukRRu3p3kKjpIRGcLOUQyov4ozOGbFyuuqr
	 0KEAeiBDX3KuRVpny8Ecv5NZ/BX227LQd9pgXPQAX8nQf+pma49suDZ/GKQI0FdfHp
	 diDICc+wzIoLbZUW4T7WDPs+LmgUAhVudoEQz57zqFx5wJFIm0N7mS5JcgDWeifUHZ
	 R/qQeGyXCaU5Gtp2x+Qx31vZFaeomm2W0BTKNrEnybsk2z6JN/k6BQBuG5QkJa/lFo
	 qvhoD+hBF0Ho5pPwhiA6TxGMh9j8JoRJNFKzoV6ywWo/bThwaQr+1fJpOcyOIR85+Q
	 pBBDLZxNwaN4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94579CA0FED
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175711619358.17637.17020044984054373271.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a15e7aa9c32b32e34a551ea4489353be72470b5237838ac1265f49e6826ecd2
Date: Fri, 05 Sep 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757116193
