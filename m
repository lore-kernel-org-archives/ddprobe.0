Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E2332DECA8
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 01:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789004434; cv=none; b=SdGuYsUfsuvGh1pEuvT07Vs4iB7IcWMz0jns3oWA1q5E9eRiKWvYzXoR8wvCIuCp8YbPDZpLdJBZW30U5GfRe1snu620zAPcLWtyrAB7RsjQHxCB0UWj4fYAw3Bi9Nlq2FjttZ3rQBmTc6w9WSPHDS1jQDSCwFj+pNJfJK1UxE0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789004434; c=relaxed/simple;
	bh=WnY53osw8+57bS8dxA5nXiX/cTcHxCZ4ZnnGFiJLsvo=;
	h=To:Subject:From:Message-Id:Date; b=SGB0rRlgd18VkQ1GShVE//ZGqIqWOfzVP/RZi0vkUIzKW7E5m34yAbJJnxKDtAj6duwXLwcogrj4NrV83sGHFA6GCnwPU4Lh/VK+zv4FaC4ulk0GkTAqS7MdX3w0URF2lzqerXXYO7fpZeKefQ5JjYsx1hQ1Bq61fgW9kPN6oMY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bfsNO9Yt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bfsNO9Yt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D73B8C2BCB9
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 01:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789004433;
	bh=WnY53osw8+57bS8dxA5nXiX/cTcHxCZ4ZnnGFiJLsvo=;
	h=To:Subject:From:Date:From;
	b=bfsNO9YtrikKMbI+ng0cIQD9jPH7IyZSdrqdUhRBNMVlmGf4NK7RO72nfrfC54atz
	 V7E6xVoevYC2vC8812FzJuJDbyIQFGU2mg/m5qZ0mQiZrZ5AI+Rx6QnoLHWR0pkQbH
	 +rt81c3hbr8PknTYO0JglVqxpm259ooO6cMD6rlMjJij00GrGiTQFh6CYOi1E18GrQ
	 UJZtGCTcSlmgEIZQ618uGbyBDn50j3GTnE+8Nh+jNnPFEs98OyJzr1Aq3hF4i6dCds
	 s3wQ947NsscUgLXzy179ZnV2y2hMixCZKEcOjgjk+lGGaZWl7k2/Kmw47SYsVn+EHh
	 VhbHzHiiW6tAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2FECC79FB6
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 01:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178900443369.4397.9929257514013983948.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7447678d8870e0da64ad8843374b38981500b43f1209ca113d9dacd147d18cea
Date: Thu, 10 Sep 2026 01:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789004433
