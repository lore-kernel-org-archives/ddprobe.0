Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF3292376FD
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 03:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774669494; cv=none; b=HKUg/HXvqdnf7F4zo2m0BQfSuXOWu22T/ek54GytMWBk+ubEpp3UGQ4RE8xVXRr9czMqLfqTNqZKSyHHgwaoq5rFm4XATsvIKENPeVBN1wqkNsLVrCmxo7xIK6vI1KiYcc4Ym7FOpQG/ULxpKKfhep05GaVhxWkqLDUBx6DW/L4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774669494; c=relaxed/simple;
	bh=Q/lKRN9dBPLjzH7sm2uVNM7ImruAn1LsKrQiaKBxvuA=;
	h=To:Subject:From:Message-Id:Date; b=OCBoh238IG4y9HQahuLM0gYhqbwWQHGTqqfdsmG8IQiUXcDty6cLWVmAojBqohiirDnaRTERoGlA9EinCvB6PyTCDZYuOlI5kjC8o93K0bxB7GCO7CCVKJvZmgvPdi1K7f4N38f2sm0Ypr4aBwTH7u/QWy5zDMg7a6NruAoYjtQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pl8tybCF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pl8tybCF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3C73C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 03:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774669493;
	bh=Q/lKRN9dBPLjzH7sm2uVNM7ImruAn1LsKrQiaKBxvuA=;
	h=To:Subject:From:Date:From;
	b=pl8tybCF0v6uBSdNaLJ29kfzG1GlQby5eI8dEWXGyK0wglEffTLeYPIrEAAXJTQhz
	 HCkf/uRtLK+u/kk8U45Y3y8kfqkg+nBV/GnajL84l1HTnDLtAKJdoO7O0sQiG93v4/
	 jqCEVS0jkqIua39e3cMriYqD9giMfvZGJtzuYHo51tRzaWNjdkVLHrISICgZQlcdkI
	 e5YbpVKCajhPt6nBdjqIQQUG/HnVbwEka52eElFd+5hRQCVCIx86kJzXvYcz3FDY9k
	 GOTxxN7DpT125U3Zonsh+u2hpSKaRP+iz0CnUHBzDk8Ku+mZAPLwnr3626V0HD6q9j
	 YyY1m4gbNes0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F1610F3DCE
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 03:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177466949358.30857.10735897680283701750.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f20e3a7c060e88ac1bd6dcf857a41cacc390e2c4f97aa0d4706a8af5dbe0802a
Date: Sat, 28 Mar 2026 03:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774669493
