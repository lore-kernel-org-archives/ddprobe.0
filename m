Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F3213E4C98
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 06:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782801514; cv=none; b=g4MYCGTreteUhikzxMXby5oEYFJT4Vo3uuTx+64w1y+VHjRzAgCr2mebCOnu7MMnf7ZB0wX3s9HCz88k3nvzDxUxnfVycQ9GMtLYWiPWi6FG3zr1pQSx7Q1nCe/CF+y+bKhkHvzzYX3S5Z4+0Y4CbXkSuS8V8Sh+Hj5iJW8BTlk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782801514; c=relaxed/simple;
	bh=oLw8MeEXIYiwuRTtWDoPAMR+1/mWoQ/K2zJagGHmm14=;
	h=To:Subject:From:Message-Id:Date; b=W5dqe6KUURuDmTOs0pzf7dX0a+1o32csu+VcMykvO2mim1Sf7zFY52ZdLTroRI0LGAa+EPc+jMrKcdHj9Yb58Y7ZDpe1dIakjGTNjKD5bnds84Gul9pP5Taxm40+p9m2BV8Pvsh0J6g+mSDFPplaLOs6jHUGcphSa8i/jyXRm3s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YN+hW7BP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YN+hW7BP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C304EC2BCF4
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 06:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782801513;
	bh=oLw8MeEXIYiwuRTtWDoPAMR+1/mWoQ/K2zJagGHmm14=;
	h=To:Subject:From:Date:From;
	b=YN+hW7BPJJ9/jOa7BaqDMYAuIPFUN4C2TyVcnPxLY22O+uJRk4wXRIr8//ojtjim+
	 r9Zf56kL4kFxfgTsd18yRa50XafdKdUOEKBa4/J/+LZYrV8TKtzQdj2tsKIkvrW/m0
	 LwGHSzDTnkrC3KecqbX8iXghO6UV1sh2OsA8TgqVWDCfxDlP30QprQt6rProBXNLa2
	 KMIanOgjZA2/fz7HdH0n/GbOsm2WV8afInkdzKwzVZqtUsvIXCvFRwPA8sectx26t7
	 IuQKPtduTk77H/YqU0UunRc8R9RkBkikQN/llNiUAHuQvd/Ze0erQQ/KKjkv97uVfs
	 kBqAmAJ0pL0gg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A971FC43602
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 06:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178280151368.22394.13566282312982686874.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f92422ede14299435a33d27928e7d24be7d13f133eb3a0fd1a8eb5df2b92f06e
Date: Tue, 30 Jun 2026 06:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782801513
