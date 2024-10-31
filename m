Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4285C18858A
	for <ddprobe@lists.linux.dev>; Thu, 31 Oct 2024 13:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730382354; cv=none; b=FlN2fFlUOzk9CCUkmNhsZIi/YADCWE0R0YRDaOzuGcqH3Cu5m26f29Ew7FQreIr47cCz4jRGpl/AsoqTd2LNGM9WjKkJWAaNUNmUd4E8+AACIFgDIeizpqkFKTOW2qcUkqStwwScG97kTaWuwXGl83UCzjfeT7/MYvdxJCarl2I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730382354; c=relaxed/simple;
	bh=KeooZiibm5Q9esqZa24vE4ru565Ctc4GKOkvMXnDEIw=;
	h=To:Subject:From:Message-Id:Date; b=Auc6BuN0Y61NwCuvgcaqBba5f3sVeF4o1oJ2zG04YoV+g9ARLWmCu1ySS4CccPolBQDZt0EWa7X24hmsoeoKsT4XvVwQm6aEprt39Ym5yb2my+VAkusNisHy3hCgUtzy6n/yCsYERPpqMJbXB9p7Se72GQ5lPtny4ntgjWbkK5M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JhyLoSkx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JhyLoSkx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4125C4FF02
	for <ddprobe@lists.linux.dev>; Thu, 31 Oct 2024 13:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730382353;
	bh=KeooZiibm5Q9esqZa24vE4ru565Ctc4GKOkvMXnDEIw=;
	h=To:Subject:From:Date:From;
	b=JhyLoSkxBvVg+M/+fQ4rWFFGS8mXGyHjW2nxgb/HxutWrtnAEJddpGi998/QlrfIx
	 Qt0j1Pm34nkHbyqtSLQjzq9LHto3fqYFdKGXttOWsNgdp4I/gIykkyS3P4Et6OV88/
	 YuwzBCGUkx4jG3UDpeI6EDs4KPU3qfYPPXHlea/bZOOMBDSw60dX43Y3uFA+qo3c6D
	 BJzkWI/WFPqBXoo5e/XMwxoX2SJ47aZjl044p8/ngXFmFjV/89YrbLsthQy9ZlRdvM
	 DIqPfADFZi2nsHpyC/LAA3GtwUf2HKbor0ibvf7vpuD34E7eXxvo+tTVwLqNzOlTUU
	 q6+/Ct9xElZnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E9EDD767C0
	for <ddprobe@lists.linux.dev>; Thu, 31 Oct 2024 13:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173038235363.30492.7144942491279810633.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7933015f3325b042349101ea022a96598a9e5669445e305f1bcc7dde6a8499c6
Date: Thu, 31 Oct 2024 13:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730382353
