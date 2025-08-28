Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A2C73A1DB
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756340394; cv=none; b=mL9iR/3g96NXqLuFe7wyf7B2IKez9DaAJ1mWrex7ElhIgoGjZXn7O1H0rxSHS9Og01NMbkTmSNrdsZCCp0PqaCBQhFWBeYjbBCnEw8c2kQqKAYO+ePZ11JLMaid2MlSCEH58WKxVjqPJaJP5S38r4BrfdT5cgUvkGVrzKBt5EMs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756340394; c=relaxed/simple;
	bh=yncgns9Qi7L0wwVlD3oJYMFkwafmxV2TS9kIUggeKVw=;
	h=To:Subject:From:Message-Id:Date; b=q6FVBpZfM1AD4HqVsmJVNljyLJbNxhSPiPJ8pnwdp3QB2eT8wenPXioBuq0ZOR1inuPEI5lbQ0yuH+HwtkLgrhqJytKkEgtdx8w7S9QZPorrw4ffJbJE5VRDRXwWjwdBA/jbHjcyCLq//MD1t5X+gwr+OzPuZszp/vs03wrtRbQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mY943wxU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mY943wxU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C518C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756340393;
	bh=yncgns9Qi7L0wwVlD3oJYMFkwafmxV2TS9kIUggeKVw=;
	h=To:Subject:From:Date:From;
	b=mY943wxUzyWID4ieoZgSE6b9s7IMSzltqBGW7YDBa/V2apkT34TMtcmV91WSa5K7j
	 iGBW5AwaSMil2XEWfk4ph7e+h3zqWxWw6S5KFnfVutNKXISft+beIiN0pGai2bksRb
	 Adb0lZo0t8RYeGj/eQLDAY+GteGg5HhEqwx4DqrLgDWOEDCu/hG737LE5EGuQV+pNy
	 1bYzN98QwANRcWNjDa/gme+xpobxkFMou/0eWQSFuCDfpQqVYtsYeebsRGNm2Cc+Fp
	 VJs11QpLUlc9jLA4QIK1sVZFEhi/zxTMGXf7b4wfGEGvUKD8m4UTNmbJa/AgVTcTec
	 3XakxjQbDmf4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F3E6CA0EFF
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175634039357.31030.17686065821227638486.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82fe4bb0530927997bbe0322ffba00cfcfddb4c3cff8620eea09dc55fbc5ecfd
Date: Thu, 28 Aug 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756340393
