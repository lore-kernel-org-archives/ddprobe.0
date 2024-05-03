Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BAF55A4D1
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 22:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714776143; cv=none; b=MqnchBTj5/5PD9FG6b1aixHoOnVw/a6qvbiaSbTLMS/kGyjd/aQNjx/MDZIhLGkNNqnYBALcu6gJxwGoEjSotsmQVWLLomNscBw41khtWlU9akDoyXPVu8bYN6vtUBxoDLOaT7XBgGdnZmamGPLqtpqhbT0Ikxa1JZ0BdZDMa9w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714776143; c=relaxed/simple;
	bh=YKnzpsFpMP/Erpoh0najayW5RAeWEhou1yDYDKmGqG8=;
	h=To:Subject:From:Message-Id:Date; b=kRwGOFukVqm2MLghWMi23zAO/t2Zxn5XHd8cTizZvAIb8bgZjLIHk++W/kXMI+PofggqiCn0RMGFdOKlbPvsyq20u9IEF8l8xfB+d9sO9pBVKMkF0ytP6ZUuFm39WDA0hCSTgNGdyUDiwHzMFfBtRQFD5vG74Mdsiyq6qi1BTvE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ceV/DIdb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ceV/DIdb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E44F5C116B1
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 22:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714776142;
	bh=YKnzpsFpMP/Erpoh0najayW5RAeWEhou1yDYDKmGqG8=;
	h=To:Subject:From:Date:From;
	b=ceV/DIdbRi0OY4Er+HWP7Otfddot8H2rxw+g1QXVb41nK6d+jEAKfHpfOnPoyJV/K
	 fS0slSt66J1053f4BBKIHUhbBiOcadgsA63vOjpvvEy1OLUgorHdIgxZy4atCenLuo
	 y5iiFC1VAeLcLR5nzDjeImuTbZSAI4lbPO893C/26wLiw7xNdeEValv6/iZm8dq1Oq
	 7hHWRMrjL6+6dQvOWeAUDrrdMDNYAWifh06JjJM4kP/lND2j56LHPeyiOfHBnoCoiW
	 cokEzVfysshTtIEmftQ67rQA21blenITmF1EFcIwnWYJD7AUjb8NnH86rVVkti4QEs
	 9kV+fJZtN+RSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C96B3C4345F
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 22:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171477614279.4658.13624590289630886203.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34a7abe65f0e03e9894dc05691fd4433683f7f44e4d4802385a36d572a9fd15f
Date: Fri, 03 May 2024 22:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714776142
