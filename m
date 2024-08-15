Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CF1B13C80C
	for <ddprobe@lists.linux.dev>; Thu, 15 Aug 2024 09:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723713354; cv=none; b=rMJLMGMLKzjFwVIKv0UYI65fAkK4Ce74VFv0beb1EdJ0NEsO0S1OT2I9zhkC63qfBrIjhiCxtGoCQg5qd7JTunz730no/lArmvdmCAjagDl1wq0Z3x7x0NkiPJhfnml4LhrWiNGnYgC/vWSwiCry6x64voYlKB+gODG+jHp1zVg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723713354; c=relaxed/simple;
	bh=u2nSvQ8yAqAACK3dCvqht0APnuAvf3PAwfzksYo3mbc=;
	h=To:Subject:From:Message-Id:Date; b=USoLUSKVi6QkWjoNG0xj3HDbvyRmMT4mmQZVqXiMff+KcpS+3R89x1FvUc2aS7nhY2mndGx+1vd1adlEPcsG0AyldWld5hCDw1EHaaDRqIxdnHgI47fjG5JE9fWUUsExbB7cGqmpAYCa+qSfsPt6kzdJ8KLPmMRVJ8HDS5qybs0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YAJ5XNwd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YAJ5XNwd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D7BAC4AF11
	for <ddprobe@lists.linux.dev>; Thu, 15 Aug 2024 09:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723713353;
	bh=u2nSvQ8yAqAACK3dCvqht0APnuAvf3PAwfzksYo3mbc=;
	h=To:Subject:From:Date:From;
	b=YAJ5XNwduzhWEe6wR6dqZjRLf9Xk03WFIXVMjR1FC/NcYAQAVVBnk2ywnEziMxU93
	 OB7W3naTLiQeXRvnMyYrDA0OCNMuVRU27T639cCWSpwVTPbD8wsYuQoyBcnasYZtg5
	 iEOTjWa9gTKFLCWYGz1Y6SsxK9TiociZtjtbYZHa3JdOEGqLEU8a/5zAVFAlZsaHLN
	 0fXQzit0nJrLkdxtH2Zqd9FopL5re3lOUmaPOsz63mzC+5ksTeA7ZNPiXWcYzyuZta
	 HvcbYwCITzDn3xMRzfog4K5irF7A3miH7LGdqVbDJE3b6LgrpfXqXr6TNL9Wzn5cne
	 RhC854tMZAoGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F830C52D7D
	for <ddprobe@lists.linux.dev>; Thu, 15 Aug 2024 09:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172371335358.32707.16665462309278892874.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8b5c00f813aa69e9b45b96d352474f970bbdae958ea5d11c8de95d23edd82cb
Date: Thu, 15 Aug 2024 09:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723713353
