Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21C363FB31
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760068194; cv=none; b=GbpFBktIjIwfedh3mYgyXyR4KMQd07NvCSnR5LaNHeSnQNMrXH8oGeq6R0gcI8SQeeBDvyaMqTzQsROS8AFat585nXIkQ4dHLk3OLF4MkhSXwT/8ohj89vGOtGzIy15yHlaV59f6y0b4lNmE70tuRHstREJGLaoB72x5ymE+dd0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760068194; c=relaxed/simple;
	bh=oHjfRL13IwUuyO7KpYrIa7tP0thISiREbCzNzbwf9h8=;
	h=To:Subject:From:Message-Id:Date; b=GgyonqsIWDtCPfMg7ePYqdDVH1al9WSo+MwmbWxSxruHAE0CMJ/da9jZVSH+4Qmuh2n/Q7wHVxYtQVmzx+BOzACKlf3Eo6FJVYKJB3+er+pT+I4ZX22N+jnOhNgX5CuKrWqCnprZlIZfxlaRGrNnhLAt3hqAU9kvmPNnv1PbqfM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lq6XIEVz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lq6XIEVz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D339C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760068193;
	bh=oHjfRL13IwUuyO7KpYrIa7tP0thISiREbCzNzbwf9h8=;
	h=To:Subject:From:Date:From;
	b=lq6XIEVzb+xV4ZvJnvCs7BSP2hta7FqazQDkmKnVbbqUX+qo1mBU1wbLt10DV1j2c
	 cMjflKsNEdVnN1c18PlsRn3lqcsV1JdEaxT24GTzvAXIQxykOtJIRV0msBwA43qRpJ
	 raC7LmYqQbEPc3n5+VnxxAMFXPpTxlJ5JLVaEYgm8016fHlPbL2eBj9Zrtm0EW7aQl
	 J3wDYiQ77RK3ZgyJM74kew45FChXMabo7+Kt6CGpM2d8iGKR2FmVrmhGvGuXAaBsTW
	 4cvXZdpEJ6rGT6OfTW57o9Q3rTvDydS02wmsbsjQwQUpx9/8xb1V/vx9/aqfejv5h0
	 qCeoacS2ss1OA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FDA4CAC5BB
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176006819358.28331.17126329742046756681.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6208af72f1aa22268fc4001936d1b323261854e7a985033309b4dcbbac33de40
Date: Fri, 10 Oct 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760068193
