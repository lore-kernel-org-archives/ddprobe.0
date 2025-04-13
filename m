Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B0FA2AF0A
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744507194; cv=none; b=TLWdfXXENE0l19iaUxR3fe9j/bL1V94ML9+sFs+t4gxQFnnieSkaQ++efp/vAF/H3SLvyNsad+oYFe1lkCWhVS5Mo1/mc1EQrzpkYVsoTHXQ+kkM4SihODyOi23+uVGS2+SQ/iQC9tOT5AEqO4KU/wVz3yBiwzVAdfMCegwalm4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744507194; c=relaxed/simple;
	bh=jufgpLoZrfGV+hopABBbJ+9X270Wt6vKSF3wNJ5ACFE=;
	h=To:Subject:From:Message-Id:Date; b=B3AVl1nGzoA+V9Tr7r2HRXwhGBtFSkOcz85qBr+bFv/eOVAAoKxWhTwX2+CM0ZuMmubUnot1hwbn5DI7IYAQjr8ENPxvPYNXzDSOeuDHYulkNL97pvnoAEsz0+T8gIT7WmkP422aiCKeEyc+z4UtsrH/wBS0av5N8M3h8xwQmWs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LZyZR+Da; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LZyZR+Da"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFBA4C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744507193;
	bh=jufgpLoZrfGV+hopABBbJ+9X270Wt6vKSF3wNJ5ACFE=;
	h=To:Subject:From:Date:From;
	b=LZyZR+DantSxGIay/q1uA/tQ/8CuRk0lnWRpLKxb+zv28WhniH6AAFcarWZ4YT1gN
	 FAbXmrIQ9g28RDML8IJsQcX02H1M3WE5orjrzXwKfMRhg4Y367QcixgI/8/pyItKXD
	 lirbMUqmkCOeAFKDxpVAnCBKuQ9Ya3DWkgPyvOD9AJe2FNEVNfTMk+r3s2FZ6Th4EW
	 I2nSw6es7QvzvcDXLVrd0qgnbYL9+QJHmSyIu8aqUhvN4wmhZdAuUFi3/uuXY7BiXl
	 4Mgamhqsq0qO/lmTJy/xA+5fWY1LujKaAIttjmkSlg/vo+06E/TbNLQOhhQ4mBhgt4
	 lQPY/jJSOJ+zA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95C03C369AB
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174450719358.31586.16941166631120122283.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b9de79436c5ffecd2363f526c66c2cb696bb4b67bfded987cf8f686e50809c0
Date: Sun, 13 Apr 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744507193
