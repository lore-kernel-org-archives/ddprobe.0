Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26F042E5429
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761773394; cv=none; b=A1h9qXwzQASwyWvjXGeamfIfAywgnzfg1+DIQgw3GHxATPYa+x3vBnhC2eAXuMzsdOszddfTPedmGlDwxQFdMI5Lv4b+F+cicJOpU3d3aBg4kQPZPiwKw/j1qZxJgipfE9ihybkGkOloevjrPt7AgR2rTTxoKjUbxjgWSE2jn4w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761773394; c=relaxed/simple;
	bh=HHEAnzONrpyCT3P1L6wGQROOcFKHPcOrYzooFYeyMXE=;
	h=To:Subject:From:Message-Id:Date; b=DPimmueU0Ae8VsQAQ0RMn8mv8nVo2DnyNkSB7YM1uhaFw9BQvnYNmT3I0Vc6npIh/+aLReb2oG1RfLegOwsZLWmqqCDcmWsnJuTMpOsyA5kgTXB8TAG7qI9ykDF5QCsQ8nt4jZ9FS7UgO1BkRSOsWGvVTV2PdyJYAyQzKtp528E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JYVBStFg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JYVBStFg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A352AC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761773393;
	bh=HHEAnzONrpyCT3P1L6wGQROOcFKHPcOrYzooFYeyMXE=;
	h=To:Subject:From:Date:From;
	b=JYVBStFgNRUfORe/dounsuQiEMPAur1q/sEzJzLrhf62UDfO4Qm7Rf4eVeBW/RjtM
	 KvAsVlhIsQtCai8OD8MaeZBvdwZuGk/f3bYlkckZvys+Mnr2GMs8btNvccE5T1YcMW
	 4IH9NehhaBVjtfpawET9T6dI8ic2uEVR2S/4gizZkgN+stq80P8FSIkMPRvVlQxSuQ
	 BhconI03FRqc4+Y5b3Pe1WlCRVfCXnGFckc0ldivBVs/3dcagy9aB+L43k/sQRuyJu
	 sbhNiA+83YHTejbuT6OO0Yvq2JhcydSQQCof9EZmxJRpXtDAwtkrj3/ZLqn/TsN6Vt
	 GTOZyksZqTdZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F580CCF9EE
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176177339357.19296.11096379653281280638.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af118947027a31bce86bea5f145c2b9a67c95c2177a2fe360a584f739b0a3ba7
Date: Wed, 29 Oct 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761773393
