Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6545733F8C1
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 23:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788479434; cv=none; b=uvl6llEGClRjQX/NLUbZAXV+vuwrH8tEJ0P822BPqk2IIREXOM+LX68p54awAWouXowcZlnRtOzFOvIsfaX+0igKRwKZ0dzosDB3n8eRj/vH1wSViHqjLjHOa9WymasLPs9kjV7k3pZIZir8zTrsq7VvLUnxMA1GWFOo0FPicMI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788479434; c=relaxed/simple;
	bh=CMgJnA3QU2WL8MKAclvgzcIKLbMp1j1J0yjY6Palj9I=;
	h=To:Subject:From:Message-Id:Date; b=d+nIBpD3AdXyrOHuW4IKGqvKkIjQnW5mytAheqCHtYroSRi75smDMC4vGtJnmUeJvpez/8YM2Q2vTVdN5E0DrI028lX1x+QHIld530NyyAKf8bAgbcVBYXN+OES+dGBj57LSvbXu3hwS7h+/Q7/TqaPUBLw/Vrsq+q55xu6HzuU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sflVDdTk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sflVDdTk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7520C2BCB8
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 23:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788479433;
	bh=CMgJnA3QU2WL8MKAclvgzcIKLbMp1j1J0yjY6Palj9I=;
	h=To:Subject:From:Date:From;
	b=sflVDdTkkFM4OUSWBnuchk/QFk02VQf3BxiqrzX6Zs33HkrDhE0aOdUanAsuqkg1l
	 tZxceeOligtzolKtkLAuxSMP+FeoPkPFjmDqOdRndUP6toGgUjQs5v3gKnbPgsuFqK
	 KM2RGw31M633PgeS6Dc4cbR3Rcqw8WDZqTPN8KCfS0YFkRLt0XMi8Q5ZDnlyI4kvSj
	 e1AITsQbYMGFr/zxTcYj5M2TbyF0kuaRUvlNPs1xdAX6lKWoMHFz28yYQCAsNVzIYo
	 X78BpUVe+E6XKPjvcnCQTvutzbTrX1Dzr7emLq6zJhyWLxVSqdPV4ZgZG+sOlHC5IE
	 4RT35qaDsxKRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5790C624D6
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 23:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178847943370.1509.15799907214278124333.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45a8215a090c65b0e274e360408105f593997da04fbee327f0670c04932ee86b
Date: Thu, 03 Sep 2026 23:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788479433
