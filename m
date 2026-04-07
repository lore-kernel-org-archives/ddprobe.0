Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B38F382364
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 06:25:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775543134; cv=none; b=CIkTfWGt/GP0KAUuddvPcP41D0KRr+9IZFofOTNGfldFcUMUyn3v9skO0sdu3WCs0CfZ9+4xG4JQLYLTE9ZVMwrC7V8T6wf8EK/o4JqMQhh3fkffl1ZEkL62p5gQRgS1wdGZUxRmHQ+Od6FWIpuOZ1zgnRZ2xdp+qMUM6OYAHN8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775543134; c=relaxed/simple;
	bh=y77/r0RIR2vM73mndJmhGkuOiPkAymXu3Xms9SRD4pw=;
	h=To:Subject:From:Message-Id:Date; b=GgR7scN4TzHUZz+z8nGnYxp5XXe6Kb1atR9WKFc5d6VAbyPygfDUokedIZeDn6wmUrDUgBSm1V4Uv5bUQpzQ4pcJVr+5gUf8dMfuWc7mzg12+JxPxOFS8HYo1oV6aLNAR+PZGWPcL59EazZqkRhn3AKvMC8KhdaPWYmpBTc5HWs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L9jeTCSR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L9jeTCSR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC49BC116C6
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 06:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775543133;
	bh=y77/r0RIR2vM73mndJmhGkuOiPkAymXu3Xms9SRD4pw=;
	h=To:Subject:From:Date:From;
	b=L9jeTCSR1exrpki1GQ/GgbL1LzYw4BhLEcbbUGF5o8Crw4xBI2Jaez4NLG0XSvsvf
	 2XRVMt8plKWFVJpRSi4PUVwaHH7e8jeYHmMbHVbHQ0UyYRIv+v5hHLG655KXNVNfyO
	 PrJ92w1kk3wjrZHAmzQKYacuo/y0f+Hgz+dXBe3q0tt1Zuq005AdnX35TA13vUVrip
	 DqMvQvYMAZKMqTsipIKq99g7TldmXnKWZPAh4u/K0mago0mCiHTrPeM5z8+imuFWAR
	 vURCbX1vp5LXeSYZl0pfKWwbgPIo5VO/gzvYNuc9yCq/+TMwIzjL4GTJ7igRomkCgg
	 B15lmetGHw5lA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA255FB519B
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 06:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177554313368.6504.14642366952692019338.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 067ab5d82b3878ef1e9b939095e0ad15d2ce57067b92d99b21bec231836c0a95
Date: Tue, 07 Apr 2026 06:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775543133
