Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AC3C397E86
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 03:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791776434; cv=none; b=i/mNHINgO8Z0pYH+YnKml/mZy+BzLRZ06HVrstkaBoAg/FGSYoxV4jBRUGe3iPITO9ee2fnRZowU4ldcpvFfhmCQCo8C4hxTSeM4U+HUEyVcT0gLTCDpiK3pAZctWrKVvXKbsdqQi/Vu0w9y8WM2uSQIVi4UUmcoPwZKwezi2JM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791776434; c=relaxed/simple;
	bh=CU5v2ZjXvWI6DREcGoAU4Am83KP6Y6ZDYbzJHEOBENY=;
	h=To:Subject:From:Message-Id:Date; b=HMBKJHlON5eD4nlRk5lheokVTbyOK5XYrQoE0iyvJrCLlwJ5Bu14T6jczGjML8SxI1F2RxXJlspMt5lnslZ3DqOhsHO3OWvUkjzgK1dibhLb3vqqszfjNWWtQdLOeQni+DexlINDQKJNzybzzrgaZo5BFJnrKcQivvn+xcHBTC8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aibWfeXm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aibWfeXm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA95DC2BCF4
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 03:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791776433;
	bh=CU5v2ZjXvWI6DREcGoAU4Am83KP6Y6ZDYbzJHEOBENY=;
	h=To:Subject:From:Date:From;
	b=aibWfeXm8x13rCTEQZRLigKpnAs0aUOM+BC/EvIOBzfwCEqwSQlmQRF/DsQXlnRXT
	 wWDoMynLkrk5PnXJxmUVStm7C6olfvYGansw4b2I7+5pwsbeFum2KkOP4RQlluZCH8
	 gDkAljBeWBeJPbHY0UcqW3Sy+UJqT2lzIFkU6Ib/n94K+4IZuBDP1wFae5efVR0Kfl
	 dgLIK1tW8JLPEWgFtvxWGOp7xB0dhgvjTgN/8MjfyYgxz3ZpS60HYCJ72HC+n7FCeY
	 Ei5iLLBqN8WQQKSMCWug/yD65avWyVGpgdrjfff6beOOglJipfAjKT0IybkvnDlDjz
	 8ZSnPfFjCWcrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA27CCA9ED3
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 03:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179177643368.22417.11127196321804648297.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20aa0bdd1dd4432b7dfd62c6f640a419617b97e4b2b242828ac88fa51a43423b
Date: Mon, 12 Oct 2026 03:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791776433
