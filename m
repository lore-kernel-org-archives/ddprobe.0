Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B1D02BD59C
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 23:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788305434; cv=none; b=OlxEqExQa4PraokImAfT+GQK73gvw3y06U0wNcSxjPqkN37/jP/6/0adTthJ9CSeZzQ88MUu9BDME4Fpr4x88TMGTUN4nrat4fkYk7hRUiNGsd488lYEPNtc0LoG6dIFqE8xhXMSaV1W2JmIk+Ppu4l5vGivoB+25yeo7T1m+Jw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788305434; c=relaxed/simple;
	bh=uVcrzv9qN7lnbcdZ0dPorM5dMlKFDzFD/f9sneELF8s=;
	h=To:Subject:From:Message-Id:Date; b=Bv5UBa1qjrgYyrRZkYa1WvZ97muGp7zT+A0jAqfSA8IHKURfyp6q4K6DoS/jVUzv8/rgIjsGGBPLolOn4YVqPQXUb2p4vNxp49fEvjN9QA0HXPrqmLBBLtm5uF9P6lmqOoXI+Qm5HhVpv825vx3OKFaqgTOpu5q9MX4TsoXJRjM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s7j1dxRR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s7j1dxRR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D51A2C2BCF4
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 23:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788305433;
	bh=uVcrzv9qN7lnbcdZ0dPorM5dMlKFDzFD/f9sneELF8s=;
	h=To:Subject:From:Date:From;
	b=s7j1dxRRiwfK6K/0uWdycChHhjL6WqAFUdCcpBLO9bMkRlszQC3o3w24bXsmZ4akP
	 9hXCKjRvf4hFzzEmSKL0g59YW9jG4cLt4iT8L7dHDAPYA5N0h+V0r1xgvUFrM7b547
	 w+2ps0r38vjIJ/KK3Y6JRrIDbAlx/IbGmGR64t1+YelUuTxQGos422HE/3f0tLIJ5i
	 Cc+5vpK2Uj4Huq4PeaTUz9WN+SRuOE9O0rHyeipmpkCWx+tzzDkxx3u+x/3KLIyYxY
	 cvsuEPBWNqw5Cg691UTbCslzZUrcLBjQSKGXCH5BpEKQf1uGv6HvMWTwl7mtUR4FGR
	 jXXkdUDHKhgXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1856C61DD3
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 23:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178830543368.16639.15582402617355597255.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b086a606cc3ec97696decde730594b30eaa0d897d20191b55938d6fa729c1cec
Date: Tue, 01 Sep 2026 23:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788305433
