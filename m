Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A04E29AB05
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 19:24:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780687474; cv=none; b=Q1ATN3fspkKzqbkzXNU80pnXU0E1mUtbpyosHYgBGXqIJPWyCzy6bWife5WAHBvNEhP+1eVH2OpagNXKht+3TZLGw1rMb6T1taxFYt20U2MPKRfTTXPzazuF1DkycQzAvRMvi8/gwTAXMBCNqKmmi/nx/3jvSqG7ib8GVsBj/Lc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780687474; c=relaxed/simple;
	bh=HMvj1rKnb/LiXUf1o5cXT1dPsrEdrkS3C1Ct0gTbPfo=;
	h=To:Subject:From:Message-Id:Date; b=A3Y8/S7bXjoCnwW7fVZnSl4Czu8OHUeqZlSbcr7TRcuOGLqkiwnualPNIv10OLy2T0Go+4dzPoxeiyvxmVC/36VJHGeIDBqZCmp3k03AgDfXw39+8gh+spF89Zhvqsw1NhqMQNNfZr+vaoZwmsAVfI4DA6Qzp4r+tTZfXLFdljg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HquW3FS8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HquW3FS8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9E02C2BCC4
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 19:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780687473;
	bh=HMvj1rKnb/LiXUf1o5cXT1dPsrEdrkS3C1Ct0gTbPfo=;
	h=To:Subject:From:Date:From;
	b=HquW3FS8YLoiPI+sfyEKnOkupqVN8lKfUzpnun/X6W93mtsI+oyRk0O4kOvPTHzxn
	 U92B8X0ufINiDYwxFvnebSTeeNjQJwMmQnrLUXCIO6QUGhPgo7F6udmeiYNH3BkyLG
	 kB7tl3En/3Z6zQsGK9tnG32EdbIjzimTvAAmp0sy3vJsYuJeO5WxvY3KBGq/IVqNik
	 s6sWA5Gy6mM09P3nOZQY79m3NO0NjLhhPMiC/NLK3N7IYxOVngMr5MnpoMa728trmb
	 Z+K+h/aHO5IUD84p0iWKupSat5Ybwbn8gqhte7Rt7FeHor7KnDlGz1VxUyRDt0gQX9
	 ia9Za7dt58Smg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE8A0CD6E7C
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 19:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178068747370.25819.9902204330170782800.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59ef2678929c146d93fab96f522b59498db2338177d3d271a4362012597e35c1
Date: Fri, 05 Jun 2026 19:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780687473
