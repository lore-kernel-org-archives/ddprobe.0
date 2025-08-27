Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C93412765C3
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756309193; cv=none; b=hKy/l5aSjtxKvEuYXVfTKPXuJxK+RMf9r1COJzi9OSvt2GXKqG99eDlORNjGoHHhXjf+kct3irLICBaD8ZhfKiPlVXmtK+5nvKW7HbCYR6HEAj3lZi9zNMrTIgcD4EorVdBwfuWWWRVGec6Q8r4CvmZOjzHefCN33LLV/bGoQ6I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756309193; c=relaxed/simple;
	bh=EEDywte/hmKkJ1ciQGz/bLgG5zBn0Nyo0WTnCNkGs58=;
	h=To:Subject:From:Message-Id:Date; b=k3AtY1w1aa7ovdMjeN/zQ1U1KFtiBg2FsQevyjPPDSMxNalwcg4rej8raE42vEoglL96IyLQZ53dSQw//XfHKWeeOUNQJ070HvBw4WDO2a5k266mxk9YK+v4kxXXWWAmH7wB/UGyNABQldUeHuE33TLqoJF3FVV2JgVd0EoLUWA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t80ajgLk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t80ajgLk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0CFCC4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756309193;
	bh=EEDywte/hmKkJ1ciQGz/bLgG5zBn0Nyo0WTnCNkGs58=;
	h=To:Subject:From:Date:From;
	b=t80ajgLkAxLHVekAlq/bquWrpHnxten0cw0sIYRZ/SpGe5n9iG5J/cuVagymId4BW
	 ghip0nPOgWtbxCMrXIVTGWX0Sdvnhag65tqx/W3jtTG6Z0QEh+B7yv6zGVYFcRdAqB
	 89zlAKulYlrvauXjxi+reXAqKxcxV28OHyGwJdmop7jbBZhZ7LGHpAUcpSAlK1iCux
	 w/M83gFe2ahA55yy6gLwuNx75irLt4FAUyMTlVeo7e6GaK4enWRYiztEluGmNF7n+w
	 xlh7Yu3+0bB+3E3D1fEYVP0PP+e2iM3E/T0ESKXa/OqbeKzJr9BllpCXEJrsEb19nw
	 eg8QkAaexE+Yw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91972CA0EFF
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175630919358.28474.2566305698098482064.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d68a918cdf55bde6632fdabd11ca2d6508324e2deba75a873bea3e4a1f30e58
Date: Wed, 27 Aug 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756309193
