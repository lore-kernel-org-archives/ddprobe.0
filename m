Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 789532C2363
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 13:57:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776779854; cv=none; b=uustqhpiD3GRkrb1HyU24YbZY//ICjB327ZzaZoK1sOnK0eXKRCoCNd+blXK5Eoe8hZNPsgafqZvwmiJVQnf+4vKU6y+3+2ei4Y0Fcv5L4Doh7SdobWW8Go3Owgepe8wK8BorJiInFfQDiRe8FdxZhQjPkF/jiKPI8dQNQUzQAg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776779854; c=relaxed/simple;
	bh=waIbrsAISMZBCqP8MOlQFRu0ezjrchoQ7RF9FWuCQGg=;
	h=To:Subject:From:Message-Id:Date; b=LwMM3SllOs5+i52um3lr2xynIxVuLs1Y67pqJuyQBy0q/ywGq3fRRe3PtwSiWOmsVzxO7JXEXlaF/BRwoyebFQ6PvQoPjqYqAAvE8PbKw03ui08nB9hMDmfHmoyUJiPwjt8dbwnMhpqWanUyfrybe1e8nqusaL4pLuy3r3GnZGk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XQKIlEYn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XQKIlEYn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D28E6C2BCB6
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 13:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776779853;
	bh=waIbrsAISMZBCqP8MOlQFRu0ezjrchoQ7RF9FWuCQGg=;
	h=To:Subject:From:Date:From;
	b=XQKIlEYnQXvrlwnEabHoUo1OQDAC2m6gW4ysFpF7P5zj96d8JZk7bJhHDAIubW2kn
	 0naoPlF/CgIpDnjg/QMf/bqU1eIYSSd8oKCfpu67yY9RmKmA0ILXsfSBDQfvrzaa4T
	 CRVPbTYKXH7fu3Gzp7kY104rPErRsCOBzX9xgpTuh4o/6pWDFJ+IFxGaxZ56scBSzq
	 fxFADEsB58oF4ZwCBB8fsAi4yWLjSODD+LQE1aZXMIuIbUngka2JzpnAEcmpLJjTzf
	 zMi8EwA4OovcAma/gaUEM7Cr/i6ksLgszFwArN7C7TXJdGggx+7AUEUe8xwSsrThCB
	 oPxhmf6cPx6Lw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC858F8FA78
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 13:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177677985369.8289.2783612888006268668.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c4438a2747b50c5f95d850f8035dbfc110d48b62408d70ad4983d1bbc04a554
Date: Tue, 21 Apr 2026 13:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776779853
