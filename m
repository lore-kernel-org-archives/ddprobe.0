Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 978DD404BEE
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 11:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784548114; cv=none; b=YU7ba7iJqFPzTwtjb27EX5tbmSMLR+hp9x8zs1rkmC/qEdmOTM3CfyNwZ0Ru6Q8zCD00kqiO4EJXSXFPECQgi+K6Nm2YputigXsCtyvuHYl+TKi/MEt9hsu1PTLUCPSHv3WSWqQQnTRTvZ0sv9/S57bqww8OuiAAeTm3z+COlz8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784548114; c=relaxed/simple;
	bh=P3kBTNumJkt+xq6ewYRolDDYsP36EgsAyEGwJH8G96Q=;
	h=To:Subject:From:Message-Id:Date; b=PTsCNAqNzkpaL7Y9K4JmM8ZWoVbYImTBsx0rc72oZjyRGykMR3/zPExwDhXGECjOFs/FTGL1gZmHLd1HJittzT+gvIIPyuo9v4G1rhLhZgwAJzsalFYBcghRYpUrYVyA5cr1oZXbAaZBuVN7SRUMlYGK5Gm3Gx4ZSREXTOSZz8c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TSsXBgO+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TSsXBgO+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D68EBC2BCF7
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 11:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784548113;
	bh=P3kBTNumJkt+xq6ewYRolDDYsP36EgsAyEGwJH8G96Q=;
	h=To:Subject:From:Date:From;
	b=TSsXBgO+QgKQKz4IJG2lgzokIvxViZL0N8a4hTYYchmQEF2s/F6z0bX3/X+/KNWIP
	 XbYRHjNHqWMHXwX2Z4++FQ9QFpJcSxdiray8c0izeVj10lMC08jIc3/VSHSDukzngW
	 RDceIili4TvGTPNMXkZeescuSOHEZG95AyyBQz1nf0sK6BtCjqKcWrvPMORfSsu1EB
	 SFQfJEaga40iZ65O2IZ5m4A7bhPB0Yj0oaHJokqFXr5HU/00xzJc6iRcZlnwjDLqZk
	 cAu44Gn6nQoUAj1ap5xN2Gg0ORmhBc5cTwOzDLQS3DoaitzyDhIWrj23hzyzDsHhvN
	 iXLsU7/qCOH5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2382C44515
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 11:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178454811372.32495.4937244534280073557.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f72f5f9af05c77bcf212d8f4ae79c8c2d150d602aab632cd723cbbf64aa7264
Date: Mon, 20 Jul 2026 11:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784548113
