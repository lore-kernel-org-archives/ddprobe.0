Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AC2530BF69
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 21:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770671634; cv=none; b=WqcyqBPbfm11Wh1bVxzeUDFJc8z71LJtnq5sqPQWIbzmEmZcRNIZo2ZH1Lvh1o7BHaMIGUya8ulptKuutCazl2nzskScHUcmXWERi1zNc+UGd3Ko70SC88Oo5tOzTUX0U17fmdE8BjRSwDhq4Vyq0nJ2QGgtR1LWaZ4wtCrtTHs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770671634; c=relaxed/simple;
	bh=PpMOn75RL2fRr4QtadU5Qm8r5lkHvDCty0DfZeTOzLo=;
	h=To:Subject:From:Message-Id:Date; b=i/LnNpobrb2LSI3KUP8LOjaoi4FwfOF5jXfoD2Jzem0wT2wgQH+cbJsdHjuCjxKt0PVi/RCvVGsFQDJxS5x/kv92vR/WttKf3iwSIpX4E0hIeLHRhkCFFcwgTh9zWUMI8o4al3hVThi1VYeYlDleWZ7089C1QE6nOt7yitEiwEU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KP0eupSv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KP0eupSv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7EDBC19424
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 21:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770671633;
	bh=PpMOn75RL2fRr4QtadU5Qm8r5lkHvDCty0DfZeTOzLo=;
	h=To:Subject:From:Date:From;
	b=KP0eupSvJ9+1z+3qsmsAWINw0jjdz3THxQvkDVG0JicTKFTZo0f9LqLJ0eVN28wo6
	 h6kKplmfwGLUs6cNqLHrFd5IuuWFwd6l8E2CkQHdPhVHk7Mc/zesBo0KLt7HPCUgyN
	 47DrsVQCTGTJWkYe9l97C0Uyb6UPhY6d204yk/7s7NCEOefdv9uv/8SCEzHeKFI9Xu
	 s64FbvqU8HAQSgpasbVVtHsAsO5JPt5HQqj2NwvHfkbbDZtdYIhM8Bx6p/rjfULn9X
	 2/rtmjIXjwvPMFf7pKHuu4LZpk8FTy9ujvRJfHIUqDBUUgxB4Dzwox2Ghu2JS2Eb/3
	 Pv3G/aK4JcwtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D25CE94603
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 21:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177067163361.6294.11815734410335539522.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9937f55cf2a41a4cb01c1b13ab3095c047e89891a8ed05af7ceab705865fe9e
Date: Mon, 09 Feb 2026 21:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770671633
