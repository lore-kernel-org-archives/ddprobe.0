Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D7703C0A05
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 09:14:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780650874; cv=none; b=q+Ns4eHp6slUWgZ+LPGYhA2b8GOGyXV0jFX9dFse8SnrM6bUtHFYYdASPtUb5maVxiGaDLNpMxbLZr9TO5hvmtW24IoqQJN4IN44+15+giJLy/Sf1ctCP7lRDst5kfF7mnMl+/9XTm2RUcXoOSq/fF8Vxt0cDA5vE6jOqA9Ljvw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780650874; c=relaxed/simple;
	bh=2Iz0IRdLx/683ybcKv3upTXULWpOA22XqDa41CHADoc=;
	h=To:Subject:From:Message-Id:Date; b=ifDtQcd5TYExD+Spe8uZj7gu1t3vWbFFksycZLs+sBBtic8+E1YMstgmgF2Tl8LJb/pjIEFPtX+stcyU+4+NYmC8jI4pb4TT66bkWSn5DlHFqEBi/RH39OrAdwBe+YTO7zDcxp4u/hVZalcLOjuRZ7Tf5cf6KnDqwRLiOeY/loU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K2tn0dG8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K2tn0dG8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9A84C2BCB4
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 09:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780650873;
	bh=2Iz0IRdLx/683ybcKv3upTXULWpOA22XqDa41CHADoc=;
	h=To:Subject:From:Date:From;
	b=K2tn0dG8qqWuya8QpcO1QmZvbuW2vSGBzL40L5g00x9jT3jP3326R33T/wLHDZYHN
	 1nTUJhWT+vZqn0YYfmk5f4VjNdNkKLhWomeppXZLXe9jCVr99MdYavq/jNRUfvg7wU
	 SxKtjjbhhXDy2CU/GmDqQTkIdbvhfZVUnNl33JEOcnYpEu0Y1/7fum1SYYQPMNV1gI
	 AbNgZcRFUDAfxrXohils3GFmp3MgAnjS30sJXtSkl7t1aepXCi5CK0gpt0pzDN3Fp+
	 c3rrvjYGaz6csykTz3YCq01/ptjKxrdHh1si25NZajyQVqGvDOH/bLguiagHgm4HMm
	 yICHEn9vXH/Ew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8467CD6E5D
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 09:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178065087368.15692.11017846276773944483.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b484f9d8a6472355d9131c8beac1a253b56245e5786343b5dff54fc19d9c1e97
Date: Fri, 05 Jun 2026 09:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780650873
