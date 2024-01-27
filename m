Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD1B52D61A
	for <ddprobe@lists.linux.dev>; Sat, 27 Jan 2024 16:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706374096; cv=none; b=D/SikKEWD8x9XQdmU9XhoMZs7YubEqcsGKfPF7ACNFOkMJejlvFQsaarWwkKLvGTxaSqy/Tu9AnBsELdmaFKTLTBEWlLve5EYrXrG1QZfDQtmkR/FAwGGiyO4sZkCbhe5IvYPvms5CkD9uLUYG7UMxmaaeXqwsBKiVpxxLNREr4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706374096; c=relaxed/simple;
	bh=jb8XVCbd1vcZh17b6yI7rF7tC4405mkpdGNE/Q5ZMS4=;
	h=To:Subject:From:Message-Id:Date; b=QeyQvLudMtk94WrhQ2lWIc92xalT7z7crHrfygLD5k3Kgo934QxmpwH1wD5EJOLVPIq3g+LkoPEKrXaqGhl6JXhA3gXULmVzCxoHaH4Uz5zUTosFU8FA2cYWZrrikJjzPKo/JaVfYK+/5FwmtRlFwKZ7XkwTu8JysqozuPjaA+Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P9Y3Ypml; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P9Y3Ypml"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75FCFC433C7
	for <ddprobe@lists.linux.dev>; Sat, 27 Jan 2024 16:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706374096;
	bh=jb8XVCbd1vcZh17b6yI7rF7tC4405mkpdGNE/Q5ZMS4=;
	h=To:Subject:From:Date:From;
	b=P9Y3YpmlDT+xpGP+npcCgBa5Iz9GN2BDlHreGZcAUzkmjVRcucRYbVd648+v/fc/g
	 MifH9qZqMiyV0y+lnTuI7PrjWCAMWW05+D7rg22znTOBkNQa5fk/1dAUi77C6/W4FI
	 IJRtZqwmouOv6/nJHwERDYUUviuoKURH0m7RhzIWOeZvcUpwZ4C3Ty59nkwcU40PV5
	 A6nMqmIQ2gxayZ5mtLRzEneF4Ryz+iXlTS/IrEaFyS+GtVwDxoLI0tx/nB+YRTufyE
	 Y4zIp9P4o6jqh4uo9kR/3gBHid9EVa2Y8xZ/ST3XSkutomAkeO3Y91zbQz/aIYBPm7
	 nsNIF20+GvLiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5DBF9C46CD2
	for <ddprobe@lists.linux.dev>; Sat, 27 Jan 2024 16:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170637409637.17060.2114137339737572970.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3fa07998009b3982e5a7f8288f4929cb311ba93a218ef9663befdee09d860502
Date: Sat, 27 Jan 2024 16:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706374096
