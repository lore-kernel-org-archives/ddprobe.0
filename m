Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 521EC1531F9
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744481994; cv=none; b=UHAhx9dEX6LHnXsr/I5irZ00oL7tzwFSYQHXudBMSgmspVU5Tzw4J6Ey+ZCkHQvdoUakGZVU7ST/tFZh3J5rDpGDtnqa80JVQ5Dmg/rU+T6kQMFmW3+UCUKJOZMme+fylJbXjyvujIJAr85tC6sgisWQglJ9aYWpG5vqER/OBzs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744481994; c=relaxed/simple;
	bh=qGqUUrUrxWhjXLHISHsd9wsKXE7kqovsebLwtmmYklQ=;
	h=To:Subject:From:Message-Id:Date; b=OXLeBzIXxQ4XkT+B7P2AMD9MneezvAbT/nHwf3d03Xwf5ivnURwvCoMNW0Isgm3fS7FxxzNUEFiFSOpPIcI/mRwv/OP2JqDptt07hp6zuXgOHJcSpFLI608jjia1HFjzqhNrK/07oabqBEBRT0LG3YbO89/1/YR6QHYRPcwX6VA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ccZL0jBB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ccZL0jBB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAAE3C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744481993;
	bh=qGqUUrUrxWhjXLHISHsd9wsKXE7kqovsebLwtmmYklQ=;
	h=To:Subject:From:Date:From;
	b=ccZL0jBB0Tk7mw/0K2Z9ki0hgN5xv7+PBxaHGuD+PR0jG9/wQW+4dH4LiMSFDKD28
	 ZxTQF+8wK5pRA7vf2xx/XOvT5rgFVUeLSS1+UohSGDo4R7ABV8iQ7FZo+s8EjK2ISB
	 fKsm4dyoEowZWuyoelWzBKRSc8I2XUj0rpyewuvR1zTAOLgnE6XMrzhO1TlaDUU19n
	 ylbUH8kd9rI+ea99uSaCA3HHG5IQddSJb+b+g9MLl47rKv+pDzfxU0dyVAjiQvW9cm
	 az3JIb9tg35WaT6LC8rsOqjqiCZiNnWv6gCoedy2g0Q4h9EVJKIRpWMOTkNEkAVTSU
	 9LStvyNb9qBoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DAA1C369AB
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174448199360.7268.3460346498506022804.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1b5bbab630808dadb76f1ee42eb18fdd2798399eb3f1b9c01abbed8307df867
Date: Sat, 12 Apr 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744481993
