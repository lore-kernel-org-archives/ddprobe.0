Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 97BF1311C35
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 13:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779111034; cv=none; b=JWHsD/YeqnXwiv45YYLxQB1F2h44rzy6czelPrmcVhMMGYfJDSFkqPii1Fy7XdCKUMVKs94hNqlLAIryYcGbWzsx5KZmfqbjN1Lw1yy+bdYuYFcVi9JbQtNH4kH+5DVURQIdD1meSXpPsqAPVZpUhfpeKU98T3c6ktK3QSfPHtE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779111034; c=relaxed/simple;
	bh=HgaT6+52d7eEFvVixlVPFkM8GuhiYfCmAyB8QhTgSGY=;
	h=To:Subject:From:Message-Id:Date; b=rAVIxXvbzlSTzflQfmYeeE64tYgBBeo++hRt9VncBR9nznjlX+WmhxrjkGyBZUUQ/HGXGA5+ovtnMSyt3F68Mmtl0PzGSf2bvOw25JI/szWYIIliE0sNTSKIIiuSvj5mHRWudk77FgWDpUbBRE51vVjzHIITQZLqB+3F98sY21Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u+FfvAAG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u+FfvAAG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 00F82C2BCB7
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 13:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779111034;
	bh=HgaT6+52d7eEFvVixlVPFkM8GuhiYfCmAyB8QhTgSGY=;
	h=To:Subject:From:Date:From;
	b=u+FfvAAG7YT4BdVj/UDB3Mf2BnDRtLWZhV3gdCcX5jotEJf1RKJ0ScZpRMpjdcPLU
	 M2M8CSTA8PavbGMj6cFNaCe/jUTe+5mDDwmbTHCxUkzQLrss6sbffFIz2qcqwIxYGs
	 +iSVOmGDj2AGJh4mFDCLotHxoHeV2ds+2Ya6CB1msHaVbOcTpklT7EH7KWwGHsT9uj
	 cKLwWvuc/mkdJcx87Mv9QpyhXYm5oF4WHTDxL5w3NjICZ6yqRYqnaVy9mLuk4PJR6U
	 fnBBtWOnoRScBLfKb8sw3CUe7vxK0hNQz+iPQxP4X0/0uC49y+rGwD1OvdBr89L+sm
	 pMiTqOe+ZNfbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEF05CD4F3C
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 13:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177911103370.3723.11977123691673223277.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 340e50b8c2b85fcd66d7de4c7db6040111403104e6083aa5f1c40634f9633829
Date: Mon, 18 May 2026 13:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779111033
