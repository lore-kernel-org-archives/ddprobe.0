Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5DF22989A2
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 07:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771226693; cv=none; b=Nq5pikmEGUefFEB5HdS/WKbdp1V8W1gZqU2+oYE8+4XXkviz6Lg7eyWAFTzJbtSN6B/l13gAJdfu+7tRd+zjiFSYTPrI3q1qPUFZZuuZ5Gg7tcEbcSZu7wfDY3sKXkufEr+9YpBkyGMozBGCUvJYWYfUCvC+eVQNQL8wzHASolU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771226693; c=relaxed/simple;
	bh=C5Qmmlnv05+lCFvSLhMyo2OUjjxmI0zlzl/HxdXQeSg=;
	h=To:Subject:From:Message-Id:Date; b=cJaHwNfNIIrIUC5wLMgUrOZUELgT5A72FsgJV5de2U9QuOvD6elKA18dHswMVEtdQGzbAXtjvfnzGIe08qYmCNd4gZPaFJaoPY5osBgl0TWuVzypRsZNLUDgok6D1YvMqBO6i3CQUf5qtoXi8hpwYRlGqngnvfTQFa/N74euKGM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tmVRv84b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tmVRv84b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6E24C19424
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 07:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771226693;
	bh=C5Qmmlnv05+lCFvSLhMyo2OUjjxmI0zlzl/HxdXQeSg=;
	h=To:Subject:From:Date:From;
	b=tmVRv84b006sSDJJVoKh79HPLxNcfQf4brYvwLnYQTNg+NdCnNLzM58v2EmNCstPt
	 UyuPcEBgp1f8JZ1guKC4fpXJ+mQd2g/TCEyFXdcPmi2C6LuS8/4oshBH8gnfsJZVYC
	 VfOjPraOmI44WrvoRz1VhIaVLNkokDQClOsXsd2GwM+usmVUTfdPauknXodXZ+Ut/S
	 LxwnvrKoGqeb17WKF8nmZ/IoskgXHe6JgUJZ3pU8bdviF3QnXZhbjR1LEAX+BhLRq9
	 a7euIDoWhkwJvX+9n7q+PHXJskh1+HjJTjTiMi8ZW1R95owv/DKtQd3T04+3sQ2CFN
	 1vN12s9oCCCBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94D3EE63F32
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 07:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177122669359.27937.147145458091156506.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92e1f0e8ce7bc7b8be07964ba9dbfab7ece738499509b15cee133ad4c8b6e4a1
Date: Mon, 16 Feb 2026 07:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771226693
