Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14AAF14AD02
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 09:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735983354; cv=none; b=L5ydfw79uFk0PRYPP3cQkzGBvhKFxhINdv6XyOZEWmXoHlzrjuRCSWdbMJ50DqUfwh9MNT5ZnY1k36x7rDvSQM2W8NUQl6C+UG32nXOp2BkVqd+wJ01RtFPhVO+5IjQSP3KlSJ2n4VmwrgcXouSjt324tiR8koWlBOLzTj7u+yc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735983354; c=relaxed/simple;
	bh=D/5KfP6NMwVhdaYsjwIuI49+1t4OI75yK1sc8m3Rsgg=;
	h=To:Subject:From:Message-Id:Date; b=n2uT3g71UrJuovZX5Gh5DldPNe0Eott/Tz3SB3KJ/9HlUnZQbjNsFVHuVF6G8e6btXf7IPh8Ikqd95TI9GCBth9bcFgBf2d+wfCrCfKhrnykftHIOLb+Ez0DiYOClFNxR5cbFAO95cp1IFCxAVDSs0RlozVGz+MA02iqN3KddvI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kxQ7/kRh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kxQ7/kRh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3A97C4CED1
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 09:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735983353;
	bh=D/5KfP6NMwVhdaYsjwIuI49+1t4OI75yK1sc8m3Rsgg=;
	h=To:Subject:From:Date:From;
	b=kxQ7/kRhkTwL2h9lbm0Yyy4UyZtztMH+Hnq6Kmr2UHRG4rkS64Y3NBdG7/CRdQIjp
	 OM0xvwuI3YKszBRvWF9yEW4w2S+c7ED5YPcGpeKg3I2sFaR8DNwNZ4xFM9aF8W1iYO
	 EAe4vZtE3dUHL4MmHLwi+bp7WuTktnA9S7bnlFN7R9iufC0/Lt5msqQHzniEC7Y1Es
	 jtzTFXjO7twFIQL4otO7HF86naEM74MSO6QgZ8PEqJLBRvgCBEcKWprPRuu8wKsIeY
	 bX9ozjTHEPouo49mOvzOsyrv2M77UlS6aZTYc5HoPOkXsD+8RcP+r3HEENEHFeL32G
	 mwlsKpRTfDzZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E989E77188
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 09:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173598335357.30373.8742015292015077694.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6cf9e85c9d28b2e0b119d3e2e03f139fff7877ada7d3569b23d2713e049dd1d0
Date: Sat, 04 Jan 2025 09:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735983353
