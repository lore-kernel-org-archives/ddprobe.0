Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F321E34D4DE
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 14:12:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779459155; cv=none; b=kuCIm5EgspvhxtHWct1d4Nav2Lg7knyp5tvYrBo+PU+4ysnbnePwt3TIzjnmLyMZroqoLr4pKvp4SENYq2kbNRMJlDDY7AwR3CJtA1lbsVJjDMoJ2o+nl5lEJc3MMBvfEry//ZGmbbOvQLExQR9iVjFfyJ3iEC2pOfd+Go6f64s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779459155; c=relaxed/simple;
	bh=0Zj+TMxVS+Ivc9KISgdhIa1mqy5Bq2bSiCXl11c3ERA=;
	h=To:Subject:From:Message-Id:Date; b=g/3hhjhpmcJ04mLETTrIkVhxVl02qcDaCnaJAt67c+TjunNW+3NIlVu1DXE66mZrQOXYp0WRhBYoJA73dfjyUCjJCC0NvDk9iKpNfvWpxeFsyn2u0DvI5nFQDRIS8N4o/8kmADzfTdJWlhEstIuTMopY7I9OATlBhycAqMxdPd8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q/nimKiK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q/nimKiK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C48ECC2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 14:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779459153;
	bh=0Zj+TMxVS+Ivc9KISgdhIa1mqy5Bq2bSiCXl11c3ERA=;
	h=To:Subject:From:Date:From;
	b=q/nimKiKfQ1CnkrUIThFBcXD5ildkXLDfkP86Gv9qxcIT8bbNW0F0c1pyFUbRjoU6
	 PHeOHF1mSxdnIVLyB9V0eKH60W0Qe+v5ZiyPbBtQjhAdi31mwSxfxfk6nKANekAmmi
	 g1HZKbQJa/g5KwAwk21+2WZqtL7NOB4qIbAWk9bYCh0n8vNWE0rAB5uuPqWNizrlFK
	 4rwhoNe9zhLUFgSz69xJbd9bzvpqzeiwjpm0+ap2i0/NAUMOtBvZ3syJlVQamxJQTF
	 y4r9hWxEoxlp1RgGwtDS8HMfyg3O8Cfq6+D6ydm0gh5j1V21RXAX7g6u1UhynbMZ2A
	 VulYffUKado/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A99AECD5BB4
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 14:12:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177945915368.15100.517188675954467692.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c6f2de2200864cc7571063110ab048c10320a2db902fea9750d9a759e06f33f
Date: Fri, 22 May 2026 14:12:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779459153
