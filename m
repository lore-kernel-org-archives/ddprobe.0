Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31B1F1AA7A3
	for <ddprobe@lists.linux.dev>; Tue, 10 Dec 2024 16:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733849754; cv=none; b=urqaCo2Syena/N+pPvyRn8YKP2ms3dApNKTEwd6nkDPgQpI/h4jjS1VvozbkdYfGjc46VRpyR+xTFrmNxn0Vn9cAisACYilJMPultcjXANe8Gud2kLCOBmN5Y4POdW/twipHvqmphuK59g0O/VAnismiGF4SQXLXMX6Gr6RL/oE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733849754; c=relaxed/simple;
	bh=9AwxKJWw8+ry7ZtuR8ZluHbKeyKa0u/dOkrNdbbdcS4=;
	h=To:Subject:From:Message-Id:Date; b=PmQO5/LoymmzReX0pBA5AzWakFYwTLWtF62KD9fgMZ8Pcq6c5sO+IqOJkrOEs+C+eiXt05ydR8b+qkQVWgIZ2yGkT0PAeOetHznquKxzA725qvrlibIkiybmQN9Kn6i3U02NeLgO5UmdeVmGVmARWS+gJLkIRJUuB9sZq4R9xik=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qBZixQU4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qBZixQU4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC986C4CED6
	for <ddprobe@lists.linux.dev>; Tue, 10 Dec 2024 16:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733849753;
	bh=9AwxKJWw8+ry7ZtuR8ZluHbKeyKa0u/dOkrNdbbdcS4=;
	h=To:Subject:From:Date:From;
	b=qBZixQU4McMyNNLdvWuj0PPSEM9aHDjrOAtolH3Y5+ebrnC2XE9JtVVyHSdpCocu/
	 OytsFeDv5+RkgI1MkywtuE8qXiuni/H2ECDPE6AQyRii5lTAQDI2dp2x2ipsBlNqFk
	 Lz1WY0HU9pr0QWPucvOpOW/1TGWSzPhVbVtPwC+3otobVrdt5HNy71DCujVuF6v8BJ
	 RRMY+C+VvhTpQQY7inlw25zgNYTzsUSTNSKiTrX/R53zKWysObXB4cl4QMBoFgmj5L
	 XAk0JpP/QGeTQGgjmAQCR3TnnRMXkuel53TvXyXJgLb1AIce7o8M2afNXqsciBLmHW
	 tY1EzyhS4jwqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A62E1E7717F
	for <ddprobe@lists.linux.dev>; Tue, 10 Dec 2024 16:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173384975366.7418.10936216633729980096.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51afea83a72ff114080fa66705e125e750c3a1487426d1418de70bed8eb2ef67
Date: Tue, 10 Dec 2024 16:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733849753
