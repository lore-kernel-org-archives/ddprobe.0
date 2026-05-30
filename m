Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 306E91DFF0
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 20:44:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780173874; cv=none; b=lGd57L1hH0Ab9Fq7MzDVEy4NjuEgURn0UZ+4ZkjQBf7NmdcMJPazeYj4C9qOCm6uJldDj54w46uikSPs6wqrDhpwASKwFHFCqPIwpd+GwougvxLoPw8klkaC9dTShbLspcEwetySooBXaPtru1S5zl84jk1mgCE+NMGdoK2Pxiw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780173874; c=relaxed/simple;
	bh=6LT38Enbhir3hNxoFeLR/YeD5E/7CAXiopx/2tduvlM=;
	h=To:Subject:From:Message-Id:Date; b=PjxrWDcCr9183n1doJ+ASIQATwjMM/nYLK08AwUxXI+eT1u/raSwoQkzGydDTLpMej4+262k+OEFHhr8FoPZr0dcttJq2RhCT4FdWI+9GZ6jrC3dNyZK/V7eo9LhOtR6zMrmlHyZkkJ9AwPvTUg/kuNlzPPqmuNm4gCG16jRIxc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HZvGNtU5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HZvGNtU5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C78B2C19425
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 20:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780173873;
	bh=6LT38Enbhir3hNxoFeLR/YeD5E/7CAXiopx/2tduvlM=;
	h=To:Subject:From:Date:From;
	b=HZvGNtU5N3rc1LcnB+ARfGk9SNGLFvaGLAZyH1Gf+0WQgfM9ANkJbaCc/XejQ1/Nv
	 vZCxkTqkn3gUQYa8rS/9EXPul9LeCYLtm5Ua7p7BiXES+ojh9SHTdagvOhsqUT3zCh
	 6QVgO43I2KgUhZPi+mJWXqKg4q5lC9SKOnKprbWtYSLjzMACMaXEtPMhNb8S+NsR/U
	 Jj321dFZPIYfs5C9bacZ8CcLYHXtq5ybHEuba9+BQVhswSloqa3xgc4FydjNsn9Slt
	 C5zV0dEnm0PjMMdvP/FhzBGye8aAfdKl1xh6IBFGRqtsJuHsKRqYLJZ20fdnDlJWQa
	 R+V5pvzJLxcZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B058ECD5BD0
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 20:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178017387368.12312.2131324118585777629.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33253e7549c700e87728a3e3b96b75fa120310d38b25110c888a0b83cd9a5459
Date: Sat, 30 May 2026 20:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780173873
