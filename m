Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1583818027
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750214394; cv=none; b=spDAH0o4cyLjLdApsZO6TZutOzI6rcczGjsoD8jrItifTcJxXJomVaI7FWHFpoITKTTiISPVdneifcsAHdoUmNNv+b7GNPsW7mbSvrGebwctziIc/1jfGd/Zu6mPrchDVwZogOMwt7SBpcw087Iu3tdUKfSR9oSqFeoEYDLuQKw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750214394; c=relaxed/simple;
	bh=HCUcGBu3YkOxViwZxAiZT89SuA4lxIvuT7/hb4W1JLo=;
	h=To:Subject:From:Message-Id:Date; b=C7XC4HbXzVaSgEmZA1W4mPuS6CxXo2JS3c6R956CNv6i0HRnIb+mqnaFQPwDyhUTnGmPpTlHNHhQ0AKLBLpqP3knQMWezKCxdxSivNS4DPhZAirt2nNOOI7NApQre2cQrwQNod6C+J9Fcanss36WnhLzww4dQNc4Vg/T4+svaIY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lcOlBpZU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lcOlBpZU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E492C4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750214393;
	bh=HCUcGBu3YkOxViwZxAiZT89SuA4lxIvuT7/hb4W1JLo=;
	h=To:Subject:From:Date:From;
	b=lcOlBpZUizcQx6cxrOX2oveuimNqIxvTOVLGlO6+aj2bWcxjyQvVHbbZ0n6/PptbV
	 1V4AiF+Kpx4K4Ord1F/QIc4NGCMkTibw1IKkDPdvnXRY2w1Pxx+36AlroI5WG6+4/M
	 kRJo8a9GotTnCVL27Z0omrGqY2SCBZKSv4tFRJRRQskleduN+KjUBaRxgmA4NVHQG5
	 9To/Avo+zO1mvAKX359rCfVkfBH9qBwo4Ra7dSVm465Fo8AZ1mVYvjkpIjFiOz807K
	 zQ+hnXK9nTp/U4vJCN2vniELfNCeZrTPCNf0QpZ5fG7YmoS5racsi4EmJiXtIaY97u
	 YZvW7K1YiZ7kA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F03AC71157
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175021439357.24216.14263034894044666046.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb2405615887c86ef4996a9bec06a89702efe7e99bca0f9e31df5735e7d95469
Date: Wed, 18 Jun 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750214393
