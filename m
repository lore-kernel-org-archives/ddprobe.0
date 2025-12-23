Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C31615624B
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 03:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766459034; cv=none; b=Sk+aYu3GIKyhjePRySgyTpff/SLTYq+jmJtYRbt6Ja4WgXl1MBm4fgwbpI0Q1bKPTriPiuDkexvd+EfK0l9orkgNrvirp1CMjmEmOPPT9IQqmY16voyTWMGXY13pkXVzqNzHvMnUAyimoXVWyMzxpC2o1LEEGUqE1aMuVLCuvBA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766459034; c=relaxed/simple;
	bh=U1v6VIHoEWtDYsWLGggr8GLI4n9jjQY50HKi8LnFLgo=;
	h=To:Subject:From:Message-Id:Date; b=GAURKhWKTCDqKP5mkMakEwCxFCorBWrQcgdvhPLu32HoBWtRLKJxG9aebqFqsXgpZ7Acy+1c3HFuYw0f0fw1OY6ffpS2ZHV3HChMpcqTGJ/8Y7ChMZ8gqaJ3mHB6vQ1sDkB6/nGp8Ctom/PEvI/WVmWEiDsA2PJIlaOIy9d6Isk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cAs2er57; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cAs2er57"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A22E5C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 03:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766459033;
	bh=U1v6VIHoEWtDYsWLGggr8GLI4n9jjQY50HKi8LnFLgo=;
	h=To:Subject:From:Date:From;
	b=cAs2er57zUcpRXS//l5UYfi4gr5gaDxuDDdV0zEh4b1JBre6Bm865lmkq5B+3hqR1
	 CY7HKH8p+yMMrOVK+rjfpE4kCEJLIjpEeWVOmz6I/kiFyM2PP9bqRdp/bm6htVSbo6
	 oR2Z2mzKLFx9nBfnHxfBlhWByIzBBCuu6Yel+K7MCJ+akJldUUuaZmhPFQobIozt+g
	 cgeBVtjnOmtZ0/4a2+0X9cKdnbkrCkt+kP6wth3gogjqxOmzmXhvtKMDUVbw/B96qr
	 qAz9DNmyJHCIawaS4IR5LPScOY1/aZoCWTLu333Z2n7lAEOJMSSHUtUrKB3C+ZheI7
	 ff0eAmKOTUAeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95243E6B26F
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 03:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176645903357.29571.7179338581853854441.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0778d02bc029672079b0593b7e9523361c8eee225f69a7bb866fabcd89b42a0b
Date: Tue, 23 Dec 2025 03:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766459033
