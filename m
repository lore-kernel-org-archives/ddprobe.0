Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F89B372B24
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 09:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777021654; cv=none; b=m+vEZmvPCZb8nshUbaOngzaTDHNFmo/gQarS23ICvb8/LeQL1OHBbICgYGvXyZhCFSIwS269hAOIkscgVY0aei7tRCty16FD/BsMfE3tA6ec6k1h+J4Xv3Wewt4qpp2JQ58hZSyKEllM4D3jZpLdfGQ5UDYaKc+xzXBGjdOq7G8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777021654; c=relaxed/simple;
	bh=BElcv6WnRkIOYTkZra79b4nuV6d7OBmv02cllVYzMZU=;
	h=To:Subject:From:Message-Id:Date; b=r2zajTkf1lEQPuLuNYzWRAR3E6hTuH8qKO+GSVnjLm8qXCw/zsh5EGO9frhR973qPeO2x1Ba8r+v9/oLTZdj9Irp+JApebWdtwARjMU6GXmaxpeQDaR/Kgpe/hbr5Ih1ZG0U9NrWZNIN6oaKKXseR1qbS9dw68F99MtIOQjKo40=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SwWjoR13; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SwWjoR13"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B818CC2BCB6
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 09:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777021653;
	bh=BElcv6WnRkIOYTkZra79b4nuV6d7OBmv02cllVYzMZU=;
	h=To:Subject:From:Date:From;
	b=SwWjoR13Xzmeq2hBoVYBcrGzzaFM6QDl0upfjIIiqrcdiRYXlyaUJvO92R2W9Ua1g
	 88zhgC4o88aDCZRapS7JTn8XjFrQK+66tQ2mTW44XZnGKHdK5SFSD+Y8vrmmTAoJJs
	 k9ybds8ie0nObEo/qQeTIsM8nHi9R8kXh0mUyxq4LQ7su4Y3uU9BQ+5+Emlmi+eQZB
	 phRAs1rXRpPJYX3ZnOZ477im1e/3CJGWnXZIEd1etedXc1YwBbNzyuUhz2Xoype+Il
	 Wi9pfJ64NqCSyyVwW6RUirbnrpKLyGVvIdvGMgJfEui5Y0VCLNztsrwlKks4RRlgBP
	 rGc6e0aFiYvzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA45FFE51E6
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 09:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177702165368.28860.2539640342113275394.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12e3f55f915e195ba7a0c92aba947e61c9aab375a2ba8e3dd2b8c2c9540429aa
Date: Fri, 24 Apr 2026 09:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777021653
