Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67A853AA504
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 11:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790853634; cv=none; b=XR3dJ3+0PXH8nKZnZMsE1YblTrcqCaecnQVCjmH1roBmSybbmcku1/nOmJDmnggqMGVwqEGqvYXAIpmcGiBbF7jH44laExImBBnzo9F4ucxjIU6VEtvqmmv05plSfN71UUTaaNKPFKIiD0CAywYjxqyI5I+tPoQp94Wm2KxrfpA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790853634; c=relaxed/simple;
	bh=d5SXclcsEKzItsigs98X3MSNgKh3objBWok6g0yDNMw=;
	h=To:Subject:From:Message-Id:Date; b=sZAgQQ3TJlJbtWsTp0Q1bWuYp32kFJpmXoACwQpOorZ8Nj/uZfGQxOO+JTMf03NIvL4yEPb4cKbmckcMPiGVEY1alLgqhPZWbDCk+ncxUx0m4rTwfgwOVMha/NvP1rDUmDXLas+oo7EbCUG/TXLhCG9DG4t1yJruKrvNvEwY9IU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rnAHCwW7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rnAHCwW7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1871C2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 11:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790853633;
	bh=d5SXclcsEKzItsigs98X3MSNgKh3objBWok6g0yDNMw=;
	h=To:Subject:From:Date:From;
	b=rnAHCwW7UvJXwElvrl3h92JcAeCUXVK1H+QEKzbZmcF/CBiIDuI/gFqJO0AJFS8yA
	 gJiDOtGxtwckwEaWnsM4167ZY/tHfTlo1ReuqpjCoIV8Ld51wSC6oChmC1cM0Orm//
	 XnbrFej4ZsOXHVgyD1i2iV9BX5fD2vKtUn3LBenURiro82yf2Qfv+xxiogKTe0S0vx
	 1DIjqAsRF97YQ0GnjHwyL3ucGz2+9mLWlnvwduJsXYysFOJVYOuBRYbGtjZU6Myb2T
	 UG+BkCkz/Mdd4O/GvemIXSj/Kz015t4CFALsOr+krElXXvV3hOcL+ETrARCOSPP7GM
	 Pscyzr9OqEGdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B80E2CA5FB3
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 11:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179085363374.28375.16311520678277821880.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ecfd030426ffd7f934a13e1476d42ec0628def2eb4444720cc072f6c8789f847
Date: Thu, 01 Oct 2026 11:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790853633
