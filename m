Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E47634A3A5
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 15:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789484434; cv=none; b=DrrBDL4kZfQiWGtBX6GZc+NcQUTL1eW3ZXPmJY1cOWZMOyH08MPsrFDBciQvDxcUAyx13JLSEaOG6JvMqseDGRJNoLm2AJoGbICZl/3kUeV98r2Yddk1YevavoLrtJbU8DMcLTZhFU4HmyI6GCF0i2v2lE4pPOhxmiR/lKbm9e8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789484434; c=relaxed/simple;
	bh=L2EDNp4lpKnPTbRnV/M2/322cGU1BNzGYR+iOGQF7No=;
	h=To:Subject:From:Message-Id:Date; b=VgfzzjeNb9yfvXDV+8SzbNTl4Bz8gaASkIUHs3OPLAFKabFdWpdVgT1UQlJ+HgSgXGz5zbsRIv3jbAXW0vF2nGc0XACO6pRf+eaHLJsr3R8MAoeCHI6hWMz+rbQvSpLwaP8pfEBVnTY8XGF1Q19hGfNVR2q3fbdzVGKrsoxlMBw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BNCcmihw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BNCcmihw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C71C3C2BCB9
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 15:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789484433;
	bh=L2EDNp4lpKnPTbRnV/M2/322cGU1BNzGYR+iOGQF7No=;
	h=To:Subject:From:Date:From;
	b=BNCcmihw2qUTm8R5nO7OJh9s4L0jsEDlFzup+AU3JBVlokwKP9H2o98O67wOI4WCx
	 kqq2OdGgV1m4CczUF7JdhMLcJ7f1YTh4Cn79MYdm1WRc8wDGvd1tdfn+iSrWn5srsU
	 0ftY52ohuHbTssLtCndsBPsiNFc8MGfhfcFkVGxoH1CedmlhwCqLU7Sk9t09GmCn3x
	 kDQEE/EID31qfD7WntG8DS/ddzugg6iHPeMRM2EaJ3HD6TrKOpO69+NP6XvplzzPJf
	 s0D0j+z7DOLyoMrAZm1UtL0A/MoBVAHTdh428PON75z9suLreiNN6TFiQU4D7WEWyb
	 IioUcr2vORvFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF0FEC88E7F
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 15:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178948443370.27295.755505431943779485.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7bf24dee31ba41813cfd4995c2b89fa4e0ba0846ed7d2818165ffe890d95f9c8
Date: Tue, 15 Sep 2026 15:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789484433
