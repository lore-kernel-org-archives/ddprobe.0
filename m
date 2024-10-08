Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D4FF1FF7D9
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 07:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728371754; cv=none; b=ul8BlbYi+mIjhrEKVDjTEZIWSOt/P02bPCwL2cBMhKcS10RepLihyXXdGK3mq26SVeCZNhMH0Xq8/Yj2LO6IiAezSPjR7zoSP6/OAnLuqjVXzu5K7am9NJBcPSs9Ac7bPeL2WOEuMvSbDRo+iAqFqDodGhnVhMwnMj+ChKumhh8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728371754; c=relaxed/simple;
	bh=PcZKhp3HiVwFwWU+kFdZjyHR/hSyiBoTi36P0eA/7ro=;
	h=To:Subject:From:Message-Id:Date; b=pxeWD3Pylrts6ulULv/A877L/A9H8K47eDAlvSIgcQRTVra3Ok9sr4po8Q7nBRGvo3i2c3l2a6aHHXVuY4hYVhskysZkE0N8rhttzkTTRzS8Fyw8WuJzldFcYYoELM8haH4i60WwSJO4nWo+BtJGe68hbsire9OBQtBTzYXudUw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ODoSRHmz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ODoSRHmz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B69C2C4CECC
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 07:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728371753;
	bh=PcZKhp3HiVwFwWU+kFdZjyHR/hSyiBoTi36P0eA/7ro=;
	h=To:Subject:From:Date:From;
	b=ODoSRHmzMNnH2oQYwbX0YNDzNNi98V9XmPngCtlNYtqYQFUkKsPRswJ37R3oO5ye8
	 8CwNAQHwaI2xLrnDGgIIAgRZnI7kETlMeUjX/U35SlrUpMApHe5PRLBF1KK7gVlOgN
	 Cn8iN26E4ApDJJDKwspIuccaQuyl8NYngzN44FhGK9XDmzhQTvWYXYnCt8eyY7dJYO
	 c5FlkpUJ9QrWXANXwX6gVXFUvvLdGsWkhHWm8uTt0B7SV2GT76cRB1fhzfh2crBFLW
	 caJVLNZ7BPkqQeYDN6VKKquadI6PeCw8sVXQTrah+6jKtV3ypr4SKobnHL5TEkXAM5
	 U7fLZQf34NnyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9641ECED273
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 07:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172837175360.8056.8409374301738690104.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c5d56fe78c1140769adf48458051f62c595a558d1d3e393d1485056ce458e17
Date: Tue, 08 Oct 2024 07:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728371753
