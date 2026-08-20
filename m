Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78598380FF6
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 02:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787193034; cv=none; b=STzcYb4aKanvwFqWCc4seLQMk5XSAeJ7R890tivGmF7NJyns5lJEyKRpxb2s82dTs8JMMHi25I25lIR7jxP1zQtL3u/Gw9W/yC8rFWiZBndjL8EcyQ5Sfy0WjW9nB6XN18FGQcjJSckvmmFM3dDnZdID8CAxTmRG1lCwgU6wWig=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787193034; c=relaxed/simple;
	bh=drmp1QkngxfVe9fd95CQZEz0tVj91pJillHyfW3pOO8=;
	h=To:Subject:From:Message-Id:Date; b=rdeeXLA64eK0GqA8RsRUJ1oIy3Yjb/coH0aY+7WqbyRbLXvMRly1kmTIUFg0JxUwvn5IUCjE1hKD2DdytYu/elMpOnCBUix5amBflgG6izmQkNMnrTjSdnYI1cMMTZYw6zxo7z3SQyRWj4tMLjC03XpormojefhujZJE1gde1uA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y+0U2RQM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y+0U2RQM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F0F8AC19425
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 02:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787193034;
	bh=drmp1QkngxfVe9fd95CQZEz0tVj91pJillHyfW3pOO8=;
	h=To:Subject:From:Date:From;
	b=Y+0U2RQMPIVupaRb1QejJSXHEvsTyVmFcBoTX2y/m/vEHVbPHjAtf31Jn/+dXCeLj
	 J5WdNsSyVnrBbPFzRar6wHiHnAXvAfNfAU8bi3MlG+2CZZu5YmMy2rPIE5EECAZglk
	 wtoOitJnOOFIb5kfoPgp/MQ5ohOs5l5Bj0aJn5RAQp2TSnnVtBCnkIYC07bY7yKGla
	 M7T3embufXPbncqGCuJY3ejcM28lc9IIrXI44DnSdm0SgBAaC86hEjRmfdfaYkWhwz
	 zbbHCzxcgzuYjEgX4imeDhcZpc8wKUv2r8IOhtvnzJiDbni/7IsjTQLET/E9tM07a5
	 D32ls6stUpRfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C34C0C5B572
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 02:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178719303374.20664.15923639902064219631.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c3bafc11cbe5d4eb7844d01110b7c1737ddb9ba79c5b4e05fe2dec249ae3881
Date: Thu, 20 Aug 2026 02:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787193033
