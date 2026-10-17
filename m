Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 577FD38A72B
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 01:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792201234; cv=none; b=nWfG/d+nWR85KKobE9TV9RMSOxa2DuQoU6yyciNMBZkyPJZ/drqL4Hb3yfmYJ4xB6G2nOSRo/bTg3xXDDspZpK2mNjHRdgMJr2OyiZwS6l4W7pbYHCImGEjKepV+ohNtE0pZpYQ2JLxxNzWC2i1c4USz0Zi0MRM3rF19hwR812I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792201234; c=relaxed/simple;
	bh=qXEgsqk7pArNcZfPwmELBmy7oGIHGZay7ZiBg6jok2U=;
	h=To:Subject:From:Message-Id:Date; b=fQe4cQ0hawCHwqACD5G6EKRaz3njOuHZ6mxix9wu54dXt7bmSO2ZzMVmrBBSa3+ydja0f2kEhCqda6jyDCh4yuH9d/YEhmIZ++6MHePK+7naW75/5OuXv8IHjseAUU9rc9ZNs15KqUCJjUfXK2l64ZAaflP5HWF1w73mpchrXVE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pWlP58XI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pWlP58XI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8979C2BCFB
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 01:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792201233;
	bh=qXEgsqk7pArNcZfPwmELBmy7oGIHGZay7ZiBg6jok2U=;
	h=To:Subject:From:Date:From;
	b=pWlP58XIjzObs0n46tL61aGjsClF6LkItGqoHV1p4ORj5Pbvez8cLIFUHJiKRbMQF
	 E6bmD15USP8uPILRshUkChvzXGWYBw8XYEBY9Rh6Ue+XQlHH2wGNZXzwhLMyJaxVAw
	 MpaOTC2U9zgb22EF/SvmMS3HAoI8Vf+Fxd5VjW6U58svt9BcNWiEJZ+PuRwwvAtxlh
	 kq2hfB6TTKH4wFu+h0ck4n9o+Oa/6hIrCU07whzjb29hZn/xw9rE8XEFlDxbfBJHqK
	 ParJUUus6NiaTq+po4IvDfEw9nR6pCv6e3AE/r8B4LxheqKCvUFOrZLIlvV5bgoa9M
	 Q6jvqWqaiJYEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4469CCA46C
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 01:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179220123369.14416.16559195875200209111.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49d475c472c7af2d80737b271a965c59a62ffa139d57a4521a5f56ef8c9d57cc
Date: Sat, 17 Oct 2026 01:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792201233
