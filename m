Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 521C33595C
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756258194; cv=none; b=qZIyt5iB/1KhoBLuOjPb521sCiAyyL7HmPZPG+TneFfQNHFzlsa9/ID2vlSarW5p+5zPqzA/A1/f9XIwYg0xFfsyG6UlDpbwo6s8XpfXLUG4ydVzA7XfIIiC86NFdz+6nF2FlFLBBFc/0irZehBA8m9Woh/8ct5imCUaq2c384w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756258194; c=relaxed/simple;
	bh=2POIHZE1ay9DhIPDV25QLZTNAxXSD9698GWQqtj8LX8=;
	h=To:Subject:From:Message-Id:Date; b=lcHptHjSZaywhNG8yJ9FI8I5P6j4/N4NB1evsqyOMMQ500DKCyE+FBPDF7UgHiqyRkhpxk2fwKCZnvDQMkWnEZfjPADHaqW6YHdF9ldawTvaCp140qs/ZFoiXR6kEXfAjYPFG7ri8UHn4Su6JDl53EQHAacziEQUIw3DJpOlAx0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KrlPE39+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KrlPE39+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4345C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756258193;
	bh=2POIHZE1ay9DhIPDV25QLZTNAxXSD9698GWQqtj8LX8=;
	h=To:Subject:From:Date:From;
	b=KrlPE39+YYmeoVIx62ozg78C7JA47r0+S93KoGNGmgsTlpDv1qWIrJ++d8sSZrAfR
	 hYcbXCrqCXN1yAl4lIUYfTwCwL2IXvFtF0WQkCmQFBhL1CxFpG+t9gsrG0pO6j2c94
	 SHMwR9+GRQLRz3ExPM5nddFSrXP+zOjDlaXj3QKhD2ijgle6zCMmULLv7ud2yn0Lpe
	 RNd2OC3nqCNqTmS5i5AVP7ovbHskRzuF1KqL4c+HVUOdsE4PI228Cdkc6q5rEgYrN5
	 Ay6ydyIBrx/+vU1vg0o5FtOCuWzuV3mypNxMd7FmraQ5xqm86VHVkmNRQ7MiqU0JG6
	 jFtWiXljyZMgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94334CA0FF0
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175625819359.11702.10611972087701740300.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9dc3274a00b4ee299702e7b60abd3fcef0883a16ca2f128e22bef6ca963c250c
Date: Wed, 27 Aug 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756258193
