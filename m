Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F6AB32C94A
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 18:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787683234; cv=none; b=g5bCxcPqSQM2YuWcmVaYMkUQgeFlTxKOgxrvrDWyOaJJZaKOjKoS5q65OhCd/a4Bmzs/Z4+Noanc5kUBgctxcW/vhhOnWXd5nhzEpx4/qbX7XTQS2vL1qByVGhHW88uLUSyyfi8/G2JRPKvh+VpZiOH4EvnxZFCD6bV1ja5QWpE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787683234; c=relaxed/simple;
	bh=iNwx1XjsQUVuOlRyGap+vMY5o38IDeTCBfL2AAhdUgM=;
	h=To:Subject:From:Message-Id:Date; b=C4909DRoLvG0nm7M/vcgoEA6jBegg2a9IxGtDG5L+hSjUUVeGcih/rhtTtu2P16sHRJX9DDDCEZ0EllsRYZ1sH1FZvj16JTsakodR55NF1Jnde7MyHGTQw+aFX5HcEstataNUkFFgkeqhnT3UziI4tlAOp9RV4h5If8ecwDYZGc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AKGpbYsF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AKGpbYsF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4987C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 18:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787683233;
	bh=iNwx1XjsQUVuOlRyGap+vMY5o38IDeTCBfL2AAhdUgM=;
	h=To:Subject:From:Date:From;
	b=AKGpbYsFpGkkVcLB3SyLrhOU/Z3AuTsTjhbz9/kcr0n+6TLQoW3tp8O0mrKI3lzo3
	 mn+XQZGcp8Q4Tg8j21qsFMsVyeP7fwRQsshdsDoCFzLN10cGimLhi0ANda68DjCGIY
	 LJtwFl+P/ZJ5Ar2Al5RCTcuAVh+UlWS/li7/Z3B0E3mOlhvIyXLr4vzyp69C3cN/25
	 d6OfRsHjQ4cH0hCb9OmMSlP/Zwnz5fe3wFmNiwd9B3BVtK6PCadrg9wPcX8VWg9qZN
	 pFlNcQmt86qtzqiG5ZAvrSOUb7CBqI7KQdD+9qOsQXwnuxsUkBMPVtJFJSykGSFeI4
	 k3D6dGLzyHCKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B029DC61DB9
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 18:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178768323371.23320.11549228278777470998.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6b7359762c2b1bdad6b7d6514024a124044b021b5cb23f82259079abf2efcf6
Date: Tue, 25 Aug 2026 18:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787683233
