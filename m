Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3040B15853B
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747594194; cv=none; b=Po9Xl4jLKmqWsA1pYHXdWnGOoDpxPdqJk/kbFZck/AyXTWkiSIIkchGuj9WYWhO6Hs1zL6NPvDC14wdWRK02q8Y4zfRjd5mqOYZ/f9HwGNUP5Wk0Yu4pOLbBoF6o0VN0vMvqwsanQ443ay0hKZpqxUt+LVybAWB/2W/25L6uCp4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747594194; c=relaxed/simple;
	bh=0T0ak2gvEZoyz5vLDhaI5n78mvpvQCmI8P6F/grO8i4=;
	h=To:Subject:From:Message-Id:Date; b=gCkW7Y6eXL6dIBfPM8tkXGfpSi969XNSYnAYGdcY74uKNQ3toowiIU5ayeGlUUO2XZW5O7imG/X5NV1gvenWW5NtOoKhhSV65ULdP3b9/bIUhksGyu96m4ziLhXoGCQ8ULcwJvUQ2sMEkcMGmVtWCpvLq9mRBCON4jXAU+c1p9Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lxuAcRSF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lxuAcRSF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1432C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747594193;
	bh=0T0ak2gvEZoyz5vLDhaI5n78mvpvQCmI8P6F/grO8i4=;
	h=To:Subject:From:Date:From;
	b=lxuAcRSFxR/0JO/Ch4XT/lEX2KUsfEgw3oUi5Ih+OF0AiWj55CfJIytzEUus9uOOr
	 rxSxUe7Mdk4Z66squR2oPqb9jFrZTfNj9LHwYuOCsA/UJHMJvnPYRmfIvxUamtFwky
	 kRC4nXUNqqRqfFGUEYLZMFFo879/lXr4+kNpAEJB3x2dqwgFclwN+HC7L70bNMPcAR
	 zMxmsBKbrwg5+2IMtbswjh7G1P8IOE4QHWa0AlOmo4EmhI+iOyw0ZlFKhStwB5F2sD
	 dkcjydgC8jMdm44k3WmbBxKpqnJp8Y7GitBSsoZ1Qrooe91kpfOf10iuRelBIjMQ88
	 gUwvXtkYL9+gw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EDA5C3ABC9
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174759419357.18672.8631434541402861565.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54d162e86f7bfd25927f35deb79f660dbd6c703c19b7cd9c6a8238b13cdd6ab8
Date: Sun, 18 May 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747594193
