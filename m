Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44C12202C4A
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 23:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736379354; cv=none; b=aaAfx0Z1pZhmGwSSlPJLZC0EFwcd+xhojlINZvyqikvj3YmCY2Vr2nUBLghAppo/Kkat+QezFUdjdyvB7op3yEpxVKdS8cN/wb7kJrO8JQilRL3XnOlNJOJcLX6rkm7zQCdahIlVBNNPR+lTyjjpuUMPsFJJ55oANYzMUFkP+Fo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736379354; c=relaxed/simple;
	bh=jvnqVU9ujA8v1L/mStP8wD+O6j9/r2jK4/XkGA+IjsA=;
	h=To:Subject:From:Message-Id:Date; b=RJOplFNwAzSRf84MsOBTGsW0QvIrpVaw19cyC9tn3tPqi2w9M/B3P9w+CXM0Y6iDjBmoAEE4NAodBdFOLtJjo/m1OLJgQkjcUFx3J6FWwxxqZEHX943s4bbP7Opqv1CohQ8IOTCY8hD7hAf4kXUevn9857OT1OsAsptb8COsE+g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NXrnzdUf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NXrnzdUf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE309C4CED3
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 23:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736379353;
	bh=jvnqVU9ujA8v1L/mStP8wD+O6j9/r2jK4/XkGA+IjsA=;
	h=To:Subject:From:Date:From;
	b=NXrnzdUfEPh59vOl1er5sfvin59bYY7ZgmLHENMsFvL+BznTW954zlwbw2cMkatwM
	 ydsKkawNfMrCtRXju4RUi9+v5NDmojFpXXaXl3cU/TNuJS0T0/xpmMDwxsr0jFd/7p
	 DF9KyBPvHwn71eMKowbig+2PK7a/s4JkJVqfH0dC9E/7wXRV6ZnuAOqxBL7mEMK1/o
	 H0epsn84le/DaovYECAKiwq5TIS6AW+57dgZFMYQtoT0UB9SqT5YHZDtHTwBt3Oste
	 fTo+c+CQx63r/6zWjwRDy+Equi2Zi0UGPQPrGwGqLd1sfdQR+R6Dmh6nMWPl26ByGv
	 5+Me0HwRHrqfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B1EE77188
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 23:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173637935358.9773.3508403177229008848.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce4db4c9666ab3f16fe70211155a79129ac8bb34133aced014ceadb9e7e0a5e3
Date: Wed, 08 Jan 2025 23:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736379353
