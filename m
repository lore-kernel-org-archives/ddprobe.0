Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DA17155C9B
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 21:58:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718143103; cv=none; b=aFqkJPvuxXUz6us9o3I1LlGC3e6q1L6+LWyy3lY1CHKSO4iFzavtHSdWghKXckZ/eG2hwm5/y5U8Xp5p3D2/uR89k0MyPXKyjW3WYFyYx4QbabaOByRUbCeNnQG9rUD//+FX5KeL8yxDhswb4dKqEhCxEWxzx5Bwfl6g0Hqw3Rw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718143103; c=relaxed/simple;
	bh=0FX2zKi8XLyoqUlMJ/gvitUjVA3Y3rRApVjKygUIHzs=;
	h=To:Subject:From:Message-Id:Date; b=nV5qOCEQJnCeEMJAB22uLibP59dg0BYxMYwDqOGznDT2/B7y9ZEsFGji2DStFlqM1lVOemTACZSPli4q+1Dj5ic2VbYOmgshoP6EfXKxqc6UeCgQ/FnYvXtIk92nDhekNYSQVX+G4xYTQuNIeLujQfGjEGQrCA7rPLRMvmf/Uz4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lVmv3mBL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lVmv3mBL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D694EC2BD10
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 21:58:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718143102;
	bh=0FX2zKi8XLyoqUlMJ/gvitUjVA3Y3rRApVjKygUIHzs=;
	h=To:Subject:From:Date:From;
	b=lVmv3mBLkYrMgB2Kf1TzGpcThCuEEWYbYx6FLMVk8MkLn4dlAdx4BgHliV3FixLcv
	 bhInsuBc1fDFtMMgHFr+8wz1WkZRVcVZ5HIiCh2IDL2LFQjK2wBWkjydI14udyksiD
	 X3+87f+6TfHmJL8yhOwj1Y6cmBtokzs+9MzTo3V20aTVZtHV0e538I1LNY9TdwKw/E
	 r1xUpVh+n66lYa46FmgTHUgRjgNv+XxgGuqF8uDOsuuR6CuciDsJuAwSWlCFgYKr+y
	 zX14xS4K3mel/FmBvwDvMOil/45+YGahcAnQJlJU0bfYyZ1AbZ3bEkxul87/G5JHrw
	 tLfeFiSriGhPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C63E8C27C65
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 21:58:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171814310280.24899.9986664651145319940.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9bcdadee984a10c5d07a64ff9902f350af35273326bd0047304fbba06609f432
Date: Tue, 11 Jun 2024 21:58:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718143102
