Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2256031770E
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 15:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764601974; cv=none; b=LZf++GBQb1pZheTrY7GfXquhFkmUMc2D4+8WxN4mk1GpvEA0q1abLKLOvVU39FayRT4Ea54Vwr2SiHfjDluwb8w6WYep9o6n/UMkEsDhpE5SqeDf3CPYzufeRqVyNbeKEszbuFNhbppZZqA08QUzmIylvQwSE/j5unaYgoPAHk8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764601974; c=relaxed/simple;
	bh=EKSUcImKPbqhJPkaUuijrA2i7aZMeDJAZmnDVHxkvEU=;
	h=To:Subject:From:Message-Id:Date; b=tFgwixO/Dk8z4xMJKCvrs1EYFfA1Zv0fFauOigDp+2sjUMWidgCnknIjkOKDpr7NuhhCs5OUQVJLkqtLJPv0vuE6aRx/+cugaGwb7pUZEnzXcbuBoEw04Bw3kaLPjf4Am7aB0jVfO9pma2RGe3ypv6swrlVvYMEkZuyhc0Cwtpw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OO0GHole; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OO0GHole"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A50CDC4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 15:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764601973;
	bh=EKSUcImKPbqhJPkaUuijrA2i7aZMeDJAZmnDVHxkvEU=;
	h=To:Subject:From:Date:From;
	b=OO0GHoleAOdelg3S2s4vHpVr0PQtjBMxGlPvz/rx3fCrJd5cdKUiCyrexPY7MqBYt
	 Zj/K09dqMHmeg1gyKiU+CNkgOlIBBoV3ADN7YjfNkJDNWoamEKs/3yZqKyv4T+ZZUw
	 QGm0qfWaqE2xoha/zR5j+0hGjskE6MoIuRHmp8IzFJqB2htrl5Ac+rx4Rp6MeshDIW
	 o/Bj1cGtvExXKep5+EfqNMCQ5/9un8OW2EYp9pTT6OB2ORWnhG4ANTBcekTrIqUuFE
	 NdKapLuyA+ljBGk5SMt6Wr+3wWHtp33MDgdQSCcSlLy0EHvGb0eysZjv36BESCpakn
	 2Bna84BVSUVyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93C50D116F3
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 15:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176460197359.27457.10531157817954285498.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da2a08bfcfd705425ab887ff88f0b458c4e32ef327b1acf110584982385969f8
Date: Mon, 01 Dec 2025 15:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764601973
