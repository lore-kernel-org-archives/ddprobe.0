Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 189AF285068
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 16:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771863294; cv=none; b=JRT/1C9IoCXv1mEpfhrSM8IsToUga8VD5n9GJe/WfVio6h2FEfrasnC8ValRfQ3eBqcvtIyNK0MLeao2ug7jCz29V2HK7J/8WTlBmFA8t8v+9iwaKyNQyHPYl+UZ77+6SnwQ643PL+RBfSWrUbARkXUSalzdQMS8svxKzJbRwUs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771863294; c=relaxed/simple;
	bh=Pcdx0+bwG+OGao9AfbW2JtYcA9PeSs6JuNvSVfH3D9g=;
	h=To:Subject:From:Message-Id:Date; b=AouheFhCr/fRiM5zIzM53ejwDf5VdLPEMMBugvIpyZugzfV/M3+ENAyH8yHE6as+1bTTYFwYdDK4p4BrPTArtp8BuFZNWCPlr49K7NPUQRv6jsv+98VSD9Z1151dLkQg4Q4x6jlLaZwWpMtm+S5EecJBO1KE9qcdrAp3sBZbtGw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=edsFf01g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="edsFf01g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A670BC116C6
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 16:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771863293;
	bh=Pcdx0+bwG+OGao9AfbW2JtYcA9PeSs6JuNvSVfH3D9g=;
	h=To:Subject:From:Date:From;
	b=edsFf01g7t6EodmQoaQkOp+UwObPXZCLTYIf4loSgOpMQtxmCNDyCqgL7mLpAJwLr
	 ZlNrNaHO862TDe20/m72fCF5JX9dH59oOE5VZ7wxmNP/8YAa/E1cbPdkAbIo5V8k1N
	 n9c5UzjyU0fQoYangnRlHbmbL+O4kwQcIUOzq+DVSI4mtJK5o8LvHEG1uECWOx8k7h
	 sIfEhFBZGigoRyNdRtjz2QMaygjT6qdzKfK6TeJQqMYq2oN6vF4Txb4uKyuZJTpo7b
	 v93pX5itrrhNNiaSrVXl1P8XmWC5f7NiPkE25DbkVvOjGS5ExpuU2Sm6KItW2Zvzxz
	 +MjWYjZFYSH7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94339EC1101
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 16:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177186329359.17122.16791954167452926948.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db61b69c8971f09954d26b9fc1108a840b813a376ddde2e952499ab534770f6f
Date: Mon, 23 Feb 2026 16:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771863293
