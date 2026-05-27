Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 322C13E2768
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 08:52:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779871954; cv=none; b=WZ9Z0xwJ1ttiPSGAUSWI+NAENFz8rdhLLyFRc5300kDEkG7Bw/TkD1oX25F/LQcRChiCKjGXJzLwuSUxfdNh0Mut35rTvYweAdURKuDX4XIxEHEeL9BbIeN97ZfPFbdLk7Tdcur1UyQAlG/OtfJblfGzcDsc1QeQ8r/zAyoAtbQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779871954; c=relaxed/simple;
	bh=U/c2jzyKm4i5eWy1fxEda+RjzePMq1WtELHoaWa/DNg=;
	h=To:Subject:From:Message-Id:Date; b=pIspccpbicXDJeWgG2kLCf/i7n7nvqziqvcapBkgecdqmmIEcbTblxJUxk2chWeiJKtwbzgWTeI6tDLulAw+LvNRLdOh+nPNZypGe0y8Szrx2w9ECIdCQvAXNwH22Nw/IeHjT99j9zwLjWblkVu+e/ZTI3xEwDGLFHPM/7Go/Ms=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aHd+N2AI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aHd+N2AI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE553C2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 08:52:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779871953;
	bh=U/c2jzyKm4i5eWy1fxEda+RjzePMq1WtELHoaWa/DNg=;
	h=To:Subject:From:Date:From;
	b=aHd+N2AISwvGYWaq7WyTp92QpxilBDd43Ij/S332D0xyM+4BOVPDksH7s2BeIOCbv
	 nYfppgkqVXovBbIxREcYZ5Bm7tWlKVNyS3E//qvKxvbPXfQN/B4+D5daccxhRi1vCv
	 0DYPMVM+sUGiMt3zeaoFiYYLg/Z/muL90ZVEGFqVwszkr30XKuWo1XWcN7XKKJFLzK
	 AfDhkZfzLwdh1oHUaY9wZ2t1CkFkCEEZPL7+xAZw/u83ArSc3+3YNwdOomlevpmBd1
	 CYrfldjfWntirm8vcX7fprrwTmSHso5DXRBBb3RogMoXX95blVE0/5m6EFbKj6iIDT
	 7cefnsyq+utkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A75F2CD5BDE
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 08:52:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177987195367.27025.3708570285460749450.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f77aa475fb88536bac6d018541a717ed9560415fb952c52c61cbcef063579feb
Date: Wed, 27 May 2026 08:52:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779871953
