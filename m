Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D2C11CAB3
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 21:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738098954; cv=none; b=Zey0T8dtu5D5u8+QXdCVPRYCm7k1NkOrq4Yp3Hkh/wP8Yz2byHk/dnOFJfVR0UBukql5kUDHOoxGyB26RipBP/W2HMQR3/EYhhYi050zCzQNNXR6hCvGJJeNDRDb49ohrbCE8C/dgOEu8Q4LbVGviZLFRRt+sVkgxlKj+U6F/UQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738098954; c=relaxed/simple;
	bh=cOrr3k2o9EzKBUq0oh6Yds52FxOxjwuhsrzCP9u2HYM=;
	h=To:Subject:From:Message-Id:Date; b=COsjINd1Kk9EAM9ACAxEkPL5jcNPT1kg9PsjZYtH1yC/RWeWwrk4wuqjgAMN7Td7HVwUeSAX4xnvvNi7vDmfp2NLTPR05Sr/x4+XtpsXRgVUXk3x/strxdeswxRUqkbD1+UAlq/J+G8jSjzMa8rA9rYwS1XIXj618wW2hTWsyyI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zvam+rm/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zvam+rm/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADFAEC4CED3
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 21:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738098953;
	bh=cOrr3k2o9EzKBUq0oh6Yds52FxOxjwuhsrzCP9u2HYM=;
	h=To:Subject:From:Date:From;
	b=Zvam+rm/QLBAXKgoDfmSUoJfrUcLw4t7HlJvRR7uWKNRtE9xhbWdizU7VaDNMOqzK
	 pDKBc5P6pg7M1sFSPB/T0gheH7D2cEPkiEhwOsXWHbnk7sywQJMrIViN+zaXaX/xoX
	 pmGBgE0L3ZPwQN/QkgmG+V2G1gQ2syH3N9NqQMYnPQfZ9+ysnW6Bc75dDWj2tgX+ZZ
	 UoI/m//TDYZYl4ma2UarGX2LASMECBB/hoHuJVSGz1vDoqALwdxwcJ2Stsk2MF23dQ
	 PLvMdnsxS60ps2q5rdw8XBkiVMM2yvUUuXFxZ6oWjSpU1Q3cpIRF/oNtRRgXFBu4uI
	 1lfzepF1vdDJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91FFAC0218A
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 21:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173809895358.3303.15764413646947257664.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac31e4868a92bdd3c8b58260b03336c8cfd57d1997d44b0ebbd1a826e86de10f
Date: Tue, 28 Jan 2025 21:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738098953
