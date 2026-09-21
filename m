Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C968F4279F8
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 23:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790032834; cv=none; b=k8bCFu1xTvh+2bItfahAPCDzBoR7hSqhnlbd8rYXX3UTFUdCP6yT4/wDAg4A63/RZ3KWckRvnnlCKOmpCdN3SGHl6038/+gYOv1EwmmolnGvngWoL4fLvqbBwxK780QpNM5FbMPUvWdkE+hhYxk+N9DUHTXqvLGaIwv2zuOc+OY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790032834; c=relaxed/simple;
	bh=6lh5behA73X5x2gUbqoWhjLbxtVtT7pZQUi5QD8bIH8=;
	h=To:Subject:From:Message-Id:Date; b=puVRcfizxYelgXpKHZwaxa6sTxEnKUd4oT+OrEzHRnqmrnO4dx4kyIslexfCse5SWm0Lmtw0SuLyLA1Uv1zQxuPA1sTwW/ZeedHA5gED93ZuKpgV9SUza+iVRSmvse3r29OOD2m2bGB2fP86xn4yz729/njUYhkwEObsVrPud/Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=He5zZht7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="He5zZht7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 61CE2C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 23:20:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790032834;
	bh=6lh5behA73X5x2gUbqoWhjLbxtVtT7pZQUi5QD8bIH8=;
	h=To:Subject:From:Date:From;
	b=He5zZht7vFXAS8XFMHCEJAVCyJkdmRrJaHNVtu5SH9or6CORioUF7Gnl05z3G3+4e
	 8NbIB/8bu5b+TB8Szw1KpS4GP98VW7cU9FMxTkjTv3xlxmHv/ghgqH52gkHYs/UGm4
	 xsMmuwpS4d4x+ovXI0QrIqmbDvVF/a62WC60C4Kk6oOPmt972d2WOB7vxuA7dLKOVb
	 EuWSDV6TNlg8PzzjU//jsqrMYfvGLq5rYrzif7/64W58VA2a6+jNWhH2KxCNn728wF
	 8Omk/bpjdbu8Hq6Koy9HqSnXLvGP5ub8QUFuIw9ke9JfTL6ffasF78zD9nwttfz1lu
	 9n45JFOC6TG1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0712DC982E6
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 23:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179003283384.13734.18286355607077761735.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a347f52e06145d206eb277c774f30508f79932e8b9a370720aef852339cafc03
Date: Mon, 21 Sep 2026 23:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790032833
