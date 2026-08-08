Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58DD71F16B
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 02:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786157434; cv=none; b=Deaqg5H2WrIqQPSpLk4BF09dJkaSEsVZFvNw5dSimsiER9xCl/SESq8PyyxYicQ9HlIasUsWGCE9FvLavkXLLRZ00+XQ759W97S43yhYTilu+MRqmr1/IfAKljmz9Db7zVWqkAS4vkiBs2URHTcLpUx2MwTJjaBKuC/310t877k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786157434; c=relaxed/simple;
	bh=QRFJJtWA1PK3TaZyBB4qIznDjBS7LiAr9Oj0N3Lkj14=;
	h=To:Subject:From:Message-Id:Date; b=g7T3CJi9eM5xeevLWs7Dnf6kvq8RecEimzQZQ/N5K+NA1XdzIeVAdZm+WXpqOjAOX3k7uC2ny1CWRW6zI+CpijFQ8H4FMWeZmxVdib4gsjOkMtVifp/fSwOYQD/UkJOotYLiCO4a5EF5dhXd+zV0R7s46YGIw2rCEqrcX+z+N1w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HIphN7np; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HIphN7np"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE0A6C19425
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 02:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786157433;
	bh=QRFJJtWA1PK3TaZyBB4qIznDjBS7LiAr9Oj0N3Lkj14=;
	h=To:Subject:From:Date:From;
	b=HIphN7npPGgExIo1UN8KyYTid1vu/mrZMLHAAJ+fWSsQp5XfIShONT7CtAzxSUYui
	 g3bXluEH/QwlF0wbuOudLvNM7i8S5/i/F5uJkDtX+8B/9FHyw4gUlAM6sfh+XXTXqA
	 eytO0tLc1PcEBzgDIFzHczAHmLIrqNhaxZI8qk3OxE3xs1KYXvPA2MQsrbFBioj9Jw
	 rKQ9jdqYTA+FxW+lQnAVyVMQXdFcwWQ/aWIZ9eWH76OCbJukekahZD50rXJ6hhQbW2
	 OM8CqD3Mm9Z0pJrz4RrKp3xPc5HA+BUSOTOulXPllOpy1cXwHiuaL9TeQcSHo0TGN7
	 6l8j7F5Pwjbzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0320C5AC82
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 02:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178615743368.6907.478686073499929508.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6de2faf9771aba3b41a4e547da943772e5085fec5459728a25f9fdc45301a5e9
Date: Sat, 08 Aug 2026 02:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786157433
