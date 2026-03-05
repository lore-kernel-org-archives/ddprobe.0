Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 171FA3A1D07
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 15:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772724294; cv=none; b=FmK0gC4+hujWO+yLpXATNJcoCo915gGAGdnBPRdbkChEY/7VZoH5SVusQdYPA+nDk3cjSG2SGufhohqaNyG1QdKjRS9IC6gH+mr/x64QwrSh3s0bH8TUegxsVPvsz1f7CfWYQXEod9sDeJ+Nn0uzbGZpJxl0g7DkxdCFxpKLbiU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772724294; c=relaxed/simple;
	bh=OwKOYWbDtQcm47flsG0WnFoQ5x/eVA2Xy/OAocXhow4=;
	h=To:Subject:From:Message-Id:Date; b=Opv8tF6wjFb6FA9U/WhRqsubE645jlZ78cHzdw24VKTjdGC17upQWeEVVHCxMNb1WVwojX1Oa/3G/paBIubnGUdqmwFLG4LBtTFpZr3PY8i+thNgOvLIFSLDjwM0iE+fLBUSXOaBGMdLu0IkLQNg7bCO1mK/b4XOq56T0qtwnhg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V64WGRl1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V64WGRl1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AADDEC19423
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 15:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772724293;
	bh=OwKOYWbDtQcm47flsG0WnFoQ5x/eVA2Xy/OAocXhow4=;
	h=To:Subject:From:Date:From;
	b=V64WGRl11PWEOKi/RH/9w60dLzO51juslyPWY3Yh+Fkkq0G8MoJuPMDrVKQDb0JIq
	 8bjw6DHL8SgN7tYowmKWgMT1TzIM/QGHQIWcrxIicLRLlNbOGujld9wg3WNkeU02+l
	 8yNjSgrffsfB4b+9QHK3zqNrBl3yy4ojtP+ln5XfLDEFg+YG9OaceT408M14YuQUaT
	 nhx1CuHlehjzKM9Lcos56tmpq/KJYqgYt8mtzdIEra42ROggbxHZgOmsqmHhi1WpuP
	 Efv78b9kh11YQ6GRbVjmT+hLX9oal5mKotfK+njxM/FE+O+Jnp+5FQMvK9fybK8gpm
	 pqjlQenZ1Ii8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93704F33A8F
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 15:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177272429359.8598.7022154988512330107.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05707a0a02e9521ae4ea73d733e6e003fbf83987d74717c5ad349212fb6caa6c
Date: Thu, 05 Mar 2026 15:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772724293
