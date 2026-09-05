Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FB4838CFED
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 15:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788623434; cv=none; b=UZLKEwz5QcJ1Lw+1xDcqni0NJ+bpHBDzkUcsjaXrQa2vrYeVE1/9GEabc8cC1rndyX9qbqd/juzinMtFnpLQo6gbRajTQHCEU9BHwYIm+nb6I6su5t2boFEnvLPsMzafRB1Wa9iEnrCCv/xodmv1FUQXITqzuJphFk0IyrH/vuw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788623434; c=relaxed/simple;
	bh=rwVyGJ5aE4HEzgxMlCEW07kNpoxwiCENv0TPS6DVtYg=;
	h=To:Subject:From:Message-Id:Date; b=jiXli6q+sKZ2d6vVXs6qHVPmz9ttXTCQuU7QzlYzdSkAH6kFhwELi+I/np2Lb+aiHVwMgLJc/8F+/A8DSXvtlCPmpV6SQJkj1e5DEaM5xhITCwoCRv5kt0dLrsK/V7HomicHj/wQ9MNuWe5FIc78XKdfzXPuiG1pk+pLzpPDka8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FA+WpbdW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FA+WpbdW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE30AC2BCB3
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 15:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788623433;
	bh=rwVyGJ5aE4HEzgxMlCEW07kNpoxwiCENv0TPS6DVtYg=;
	h=To:Subject:From:Date:From;
	b=FA+WpbdWGVmdcBYttXmrtQ4dRlzIsecEa3L20CYSPvV6D8ydWBxw4OqgCHra3qAY9
	 15wTpiGbUTiwYOqOusXM4GjOdieHu54c4yrrV/werkmLqtfTEp0ZUcDdC3tlZxpi9v
	 iVnsmj1zk2i0t8qq0UcLRZhy21PBA+HfJQL+jFwN9z8xHsexFVyA1aCdDgDu+41d1S
	 /Oh07t7fKNQGU79W3UmKtBb/W6pOqHsVsDcMzPPrlC+UfZV9ffC8dFULFSJV2dbaFl
	 Qh7Zr8huA643G+l2PifKIPmdDmxt4/CRgVKZ1V/0uD1h9noJmy/KDcsxgtfW6EKfpZ
	 HDU+IL+5AM/NQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABCFEC624D6
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 15:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178862343369.9093.18442113056767796219.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b09313fbf04db2a47eb1c8f7f66231e7670da415d765bc69b02259b4a33868a
Date: Sat, 05 Sep 2026 15:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788623433
