Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53755946F
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 07:50:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713599423; cv=none; b=M200sOVXmEmvSLFXmcTX0dbjbUL0vn+KD92qcVPoTr+v6aCAf+PSmEXcrd6B6yuUT6coBR6HHKgZ2vjVyvJN/pyOrCwYQrKfIvVrG6p6g0Cd/sQRPgmQAdlVUI7kBPFvZSKkXMmkcSInn4UMtCB8A7ww/x7tUv7xQoBgsiLy4DA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713599423; c=relaxed/simple;
	bh=5sYOgB5TQVp/nlhxZoPn8mSwSrcVNAGeeJQ3TMa7Rmc=;
	h=To:Subject:From:Message-Id:Date; b=W9NgOpAz+zUD63Cuz1Ae2xcYFMErcVZoJmgB46/zSxUNLf3NjswO24osV02q29tyZavj+6NlsEEtOO7sAOenUT119lXG9Urh8Ga8FJH0sehWD3e3mhQbDz5TLDCLEAmPug3w7ytIPwypSg2tdA4S3zWgmpwJOiFWQRJLnrYa7yQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k0MqIbHW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k0MqIbHW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E367CC072AA
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 07:50:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713599422;
	bh=5sYOgB5TQVp/nlhxZoPn8mSwSrcVNAGeeJQ3TMa7Rmc=;
	h=To:Subject:From:Date:From;
	b=k0MqIbHWrOUCG8KC5S2Br4iadlVRc99XfwYx+my8zeA4j4IuqQ54vuvQmvaRTWKAp
	 2tpTlosVj3f5Grp/g5NfObNZLq0stlAhRLeKnrrakKY9nJnOqFP8e0NSpysvDwd3tb
	 Qp3oD4CXlMcANYT5SMHf2fvJWK7Fc/6SVW65k2lyaxomoRR3SUb7gLXdwH3krJzO6w
	 3y8JOV4/so+vfvklzwZaCTTTMCddOG8+uWJPJtmYTQvf3K9Blc5tpvTjWBN49oGH2Q
	 QTnQrOjlH6/pqK6aUjSa8Sn+GnEmRuiZDxdL8rksolsQ33O8A3SQLnMc1SmnkGfY13
	 CeK2sVc26Nw1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9EE8C4345F
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 07:50:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171359942280.18134.2455342085048050261.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9a9041c1f4ec0d7bfca9838e677c7c6536e2d19c0b76716db3cf3d427be3dae
Date: Sat, 20 Apr 2024 07:50:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713599422
