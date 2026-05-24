Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EF5A30B50F
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 18:52:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779648754; cv=none; b=lqzrAvqc7wr18z1xFIe9EB/Vd8ELVbvEnw+EpD8AstgK3GNAMrJguypLkMig0+yvfN+XDyNhNzPbSzDmCH/FphsA2HLJqdYbO1kXanN104AFh+V1N4dlrKRCm/qfyWo0wmMT0Ndw+lTDuNkCMUlIqIPN4dOLralRS7Vj2ZAVMMM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779648754; c=relaxed/simple;
	bh=LKKeKmQ53/wFV+JvZbHVDoUf5Q11naM3rrXhTZEDwHs=;
	h=To:Subject:From:Message-Id:Date; b=a/mUFhvKZj3VivDFtRmCBhHK0bV+0d+r0+/ZB8aMA2pARkczzjrwhCDjUw1b81zH3SUZzJ7iqVXrONLYjmHpv/HjNKCvj5whP5oGoVbzlKBsIk+//xQuKU5Q2uD1ncLohaisF3jYY31vu61dGdPuKPpj2xCvgucSEztRm6NcpPg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ND1C2kEb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ND1C2kEb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C94CEC2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 18:52:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779648753;
	bh=LKKeKmQ53/wFV+JvZbHVDoUf5Q11naM3rrXhTZEDwHs=;
	h=To:Subject:From:Date:From;
	b=ND1C2kEbsGbJ3RoLTF9wpDhxtspKNRGzSefEjNuh4gvT548KI1uKYW5uQjl4EBUlf
	 fvp037z5s7QVnamxHap6QvQsUtvjLbAZ8/DJCczkyj1cP3tEMfFu8ikG7mcrG9ZePO
	 XzZcUyxVbMH0Vy1a0hbHfLNXEN3U6FlzzxERnzNmMLceDEYk/ztjWUgfwBqGSM/VXn
	 x/CUMW9/lxW0nvhwYcAe5XdO5Ixlzc0E+2Hkp9O0Sc9TJ69pirtaNNBZ2apngJcfvM
	 uWlslr8OjNXsd5mzHkYopNnSXWssW87v+b2L72d96JPS5y3obspE8fHxOorB9OWacV
	 5mQK+mFk6oLew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD11DCD5BAB
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 18:52:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177964875367.10000.12425842354959536263.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f4585966ac23c111a081151c8cb784259c39d7fdee1bd7c9064f04566a32ce9
Date: Sun, 24 May 2026 18:52:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779648753
