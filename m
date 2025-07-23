Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 199C521FF44
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753267194; cv=none; b=jKzs1ApfL34osS6nX3UpUkdqo1dw/ouVo1M90wXFGfa9ikXpVzZ/iKCnmlhDU6Uv6/Sx4rstrG9Eq392Ih6NAm712wyfo5iqEtBXzAd7tNaJY+VrsRzLb2/uE8MZZjjCl1Pg1E2iZN3dpyHnaZd1VdsJIioYP8aQHTVgShZSnQA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753267194; c=relaxed/simple;
	bh=xkvU7ynKvT9nuRyz9gcHgwitjkT+KY3i1YP+Cu3HSO8=;
	h=To:Subject:From:Message-Id:Date; b=DbXrEJtvva48TdM6bsAep0ujQiqBjVqr/FPYgJjErRHGKqO/WAMb9FXKg2W5eXjzC72IcEDkp09AXo6swYK9u8YVHbmw++xfu2fUc205+mawO5WCglOq0SORjvC431M0SpsESj7G98tCbmomK/r65UI3STN0bgtB5CD9zGt1CcA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uMFH4PjU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uMFH4PjU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0CB3C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753267193;
	bh=xkvU7ynKvT9nuRyz9gcHgwitjkT+KY3i1YP+Cu3HSO8=;
	h=To:Subject:From:Date:From;
	b=uMFH4PjUFqXAiXChh0CMzC2NTiK+TF1kmfdbEp9tIFph6Q133Sx000Hw+NwUK60P9
	 zKpJsOWuo/tCf5VqDtfUVFycVHwIV8RHgzV7lJQ1Gfo8SYKNPb7spXWpmJUbVcyqRV
	 SHR19OEixAOqb+AsN8mr0ByZuMyxn7Th0H0ithlsikFztRr0mv+aTV8wek7QE3RC63
	 lBOEDsD6je+2KqO7WekmWu8KMGIi5MI9gu9l701p81m5kgO+M3bKTu6i0CFmZTwinx
	 QAgRjgHgJmwHbmvfPIXj70X30YVBHKlbmgT2ADTbTNyO2CS5+AQTMeSLBSDWjns3Ag
	 XIEz6C7gv8gTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FFEDC83F17
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175326719358.23446.11766400016628530566.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4cccae9993f3ba3593d880a60d9a9a1cc87909dee1c30a6bcc22ebaad9095f30
Date: Wed, 23 Jul 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753267193
