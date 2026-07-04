Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36A123815D9
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 04:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783138115; cv=none; b=sWpjpiEfNk2atwAdqpft6xt+9r0MNnR/t2MYI8pAOnhEQlWr1MIrkktuvsWDQ8WrmZLsDCH3XmwR+RZ6MKmkprBT252bbG1tzGMYYNuxPhuctkSEZpFZLZC5b98pQfGv4Yxl01l0Om/DG+B9whaRcl23ba6RPSIjW1ylIBNMS5M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783138115; c=relaxed/simple;
	bh=+QYpH46tLskIcBMgayp5wMPIrPQPnL0OdyMxTa59ye8=;
	h=To:Subject:From:Message-Id:Date; b=hVohI7MxVRJA4kxoRgGZ6nSPjCic03YCuhXObcIQrWx8SfJbUAq7fbYOGEfAtedktRqi8kmUhGfwg+kpZ5wITErYgRleUNeDhxJIMGZ9/MIX1B0yO9O6e9ntFuGvie/7TRyn0R6iAELWEvJ7UarNdzr55pRfYPXn0RqHcQ3Z4uM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dOVZacrL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dOVZacrL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C69B0C2BCC9
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 04:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783138113;
	bh=+QYpH46tLskIcBMgayp5wMPIrPQPnL0OdyMxTa59ye8=;
	h=To:Subject:From:Date:From;
	b=dOVZacrLAGb2JgNyfFHaqcTkrcYuqhUW+/eCe7qhHsOG2QyNCDYTLSEDeCtqTNGm3
	 Y+Lq7rdJ/e6Sjehy5borq+uGnXCrry0Ey81ZS/XxbkIMkXclRYK5MJfkwVJYShPshr
	 5fy/mlisUg+jYk4B/FQJ9R6PKi/sJ3jkX6Dq8ravi5zTS5DP0Njv1ywDotksWxoztd
	 gaX3C0t4XrH8T6kpNRB89NA2xDlIYwEGA/AEz6NajIauz3px6POMl8L6W0mphm2AVw
	 wRyrD3AvHzTevddPjipb68IOnPFtTu2EgmfDBxfFNxUXOViYWw5PlTruEVC4+J+czX
	 kFtOQcw/UKbDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8A20C43458
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 04:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178313811368.13626.9336010675534723807.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db4ae4f88dc2085bfe7ef148c3f7dc2a28ef36e5d26e0d5290c23b350f3f6f63
Date: Sat, 04 Jul 2026 04:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783138113
