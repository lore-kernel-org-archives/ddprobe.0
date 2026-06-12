Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A45C33123D
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 21:36:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781300194; cv=none; b=Nv0+KA7+Y8lLv42MNHtmdHC7VW2dTCxbe/ZLj/f1lSMmsP0CIyQD3kHdvO/CqNlMhDA3/F7vb+V9b+sWpOE+o9e+IVtA2UhGog51GKYZFvf6PdOQtZ97d7TqQCBhmIkkzxVyvc/jS6999YU/pyfkCc5ws675b4WX8iCOYez4fdQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781300194; c=relaxed/simple;
	bh=l+hUbkcbO1ZKhEzfCqp6X2UiwWaO5T87H8uIord3XCY=;
	h=To:Subject:From:Message-Id:Date; b=Fz0NKlymzeJXuVW+BjvPMlHOp4D9rDZNbzlo9n2IL+j/b8Y4aFdPWhcaTCWy/HyRBM0QSkzxkSpR0HFqwuM+RIFfp8k9z2ljBVlf6Km+OnjuROZ2e6/RCzyfYUARSfCuoSsbBrPs6/2is6SRAmx4UtTAYxk/wj5DfG96g0CQftc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MU8CYZ2p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MU8CYZ2p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2BC8C2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 21:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781300193;
	bh=l+hUbkcbO1ZKhEzfCqp6X2UiwWaO5T87H8uIord3XCY=;
	h=To:Subject:From:Date:From;
	b=MU8CYZ2pDOuOzMaTuQOu6XBHWnXUtJ69kjFdEyE6Kwz2XuhiG/2YGPCI8IIrv+HRk
	 /XAUvuDYSOC1tSPqgg2YaF3NIYr0CdowbFe4ucLFIk2XBL4qDALAGLT1HP6L+O9VWS
	 cV44BHp1N13ChaN+lDYb1pAOS4ATfG86j4woRh/apDjjyMK0OYC6vGXQJsVCZlMq+6
	 pcdS+PKaYvoKBWT1eTLv/uTDH3LY0ZqIFtV2Cosl95M4e+1gLBqeJ0+ejzpFC3KO2h
	 lOv7cjQDdqueSR96CzUzirkU0eGElM8Nk5oFP7zcbcAC9+D44kRbVq93hyKl3YJhru
	 8SgpQ8p8r1QPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACA65CD98CF
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 21:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178130019367.2050.6609889795382094820.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2bbabee87851b9d60ca9f34a42c98eb699ab5e8875903f04ddc99d256eabd6a8
Date: Fri, 12 Jun 2026 21:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781300193
