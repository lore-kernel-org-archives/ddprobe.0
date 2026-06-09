Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A8C33AC0C0
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 10:55:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781002534; cv=none; b=nrTqmvk+s1OZwmcDJYUyKdM17hxpD8uzk8lTRhBDFxawKOXFUB3/OVtquQfYJtiaAsplDBuOH96Mg/DWjSlJCpsQa4TM7xGyGxuQpRfK3+f/QS142koh4+tc2beftNw4/OpOMDktH2nzExkl8I3gWWtcbMqZzbHwTIPlUa5ADrc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781002534; c=relaxed/simple;
	bh=m7BqsKcEZbabNqj/qi7qJs5hQvmFKPU4g6nVZ8MofiY=;
	h=To:Subject:From:Message-Id:Date; b=jNwzRDfRBMLcKfABpQbZyxFjbW+8dpvgzDhCEGX+vpKGm/u4ZXoP3cvY7+Tlnz7rfkSJdfGfNmVKvlrdhNkoUC68TzkQixMymMD5wftWazmVG/9bfdT1ef8iAwU1jyBEb9XrUm2925EZ35IQy6dXo4dEAw3HJFq2JGaps13rqgA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OssDlInX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OssDlInX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1B80C2BCB9
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 10:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781002533;
	bh=m7BqsKcEZbabNqj/qi7qJs5hQvmFKPU4g6nVZ8MofiY=;
	h=To:Subject:From:Date:From;
	b=OssDlInXPr6QQXQIJorIlmn4K0TZ0/8oO/by8v7zI5DZLZ0ZhWQtq++0R159IMAaE
	 87T/tmpZrmBTK9OmqAd08bulH+SVVKD+5g1ZwkysDWltPz7wSS5rekR1MueHpU6LZy
	 WrreTdM1XBYlxXgywco0AUPcVlvrkkpT8aYClR9b4oyimNRLhXVRomP9UtWNq6IbBq
	 X1Ivy+7Y9eE6g9owKXQ9fm8zxBR/TdpNryPmNf7wRUVrHUyKnDcmNz+KB7jAIhgHZ0
	 isfEYzAjKMG/FyfRr6rh3ledcrdnKmyvFUaTb5amH4FSCdZhVy4Ol7KIeX6NOqNZ1n
	 o+0eS+PYcYLQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4152CD8CAA
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 10:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178100253372.15852.12984366126273959278.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 036eacee63c53bf6a465ef2db45f5b94e1369b4f14da0103182dbaaf4d27aca7
Date: Tue, 09 Jun 2026 10:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781002533
