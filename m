Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4401628E8
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747625994; cv=none; b=KMC+MBaQfL6sKU91cWHIG4/ikut3gvE06hu34Eibn9zAAYEoD5wFB2i1wU4vmo2ZL3G7xgN1NIVm/ggI/AzxXLzhJkDhl5Hq8QZ7sZKeIPwUMo35dyBFVbXpoziEqurbuTnIZ9O8135VefMlIf5bnj18oJJdVwoeL6yz+DyTX1k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747625994; c=relaxed/simple;
	bh=0e7KP9ADSCc6p5fWf6BUx24+PdjVMUZo9m024Ku420A=;
	h=To:Subject:From:Message-Id:Date; b=tn6fc0srcEoJrSpDit+9J02P7nY/AhEAyzXXI7pdFeqo6GmuI3rHlX7/SVojt4Ja2xihc4lRwmcoESpp/PuNPAjJ0ta6V29t8I/QLzQWNpurRvLghp0hjg3Fks36wKqWFlg6iwMrDrlyihffAzTS487brLn5a1s4azdhmGbc9j0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lwDB4TTN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lwDB4TTN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6425C4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747625993;
	bh=0e7KP9ADSCc6p5fWf6BUx24+PdjVMUZo9m024Ku420A=;
	h=To:Subject:From:Date:From;
	b=lwDB4TTNk8toBugTn0N64qPyITQ52TBvNpZLqTlS2DuDxIg5T1gXQmra4t58/x41M
	 9qU9HtDR+E+dWBBG9rplKR7R/MRZVgTHzzpTb6FB3pbfiT2S63Iu8Umjc2mC7h1L/0
	 hAWqPbYCk/riBmmwQQn0wGxvzbYEWYi3043gKdEJ6fMPtIsbNQQqD7Act4lUrFqa3a
	 bvllM6dQhA5B3WcXKU8I//9hbgiaYW2gezJGjCsIxFsH2r8C2P3t9zA9dWAWuFvRpv
	 UAw5ZoIxAXflSJbraqAyMR4z1axz+NHlpxEVd1eLCQb5D29ZqlxCkKr9ODW5A/dsKf
	 l5t1oXNGsq6mA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 940A5C2D0CD
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174762599357.17095.10007348331440051599.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 208a3acc718f853cceb52fba9c38ba29b11a4cdde7da634acc1f6da191959cdc
Date: Mon, 19 May 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747625993
