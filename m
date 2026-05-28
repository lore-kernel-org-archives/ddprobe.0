Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AE863403F5
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 07:42:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779954154; cv=none; b=X9dn1+o2Eh8bus3PMm/TyvVLCvW4LSpWoOmgpb95Ouwvh9AKkPUaSSTZiR4yh36o4L8lyEmAEeh08SmSrq8RGxDLDZw6tWawEKUlPEc2puCtJ5zpoInJVcounJzElelsbb1FoTgqTpHErZ4qchpZeAJlMSbV69a9M7LbilTtowM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779954154; c=relaxed/simple;
	bh=uBZoWvN1YhEowSbmnCvpD9wiFBBJM7oljBLCc5k9B6o=;
	h=To:Subject:From:Message-Id:Date; b=nMklJ3swv96IZJ6B7zhZUUVNZqk3Jw/B9Xjqz+XV8ddEiu8YjkvAp/GOYOYaFTe2YiMsxt6VxEN20ZQRZqnM+KNBaQfp7YCPTXMnYaCI64FA5qTRnEcDXPPw9Z7amMPsjgRNtO3bmODpSxxVK93jDVL3EyZ1RCVkLEVMraC7hj4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=opq5bqwx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="opq5bqwx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C417EC2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 07:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779954153;
	bh=uBZoWvN1YhEowSbmnCvpD9wiFBBJM7oljBLCc5k9B6o=;
	h=To:Subject:From:Date:From;
	b=opq5bqwxzRNK7nLCdBXsfoN9+n+hhiOh1+3/AUZBAU+CCmS/QlXzmZoY+7CypMqCN
	 SJWeehzR0bAJBUMOUz6piiMLW/jUYez8hcJ/6aLur1n8o1BT+Ta6l8GAd1ZWfFkQfA
	 Dyg2M66j1Z39J/Ag4MFWey/nK8rLy4P95V2GxdhExzfYwoD4jwJ5hr82OpRoPrAJPG
	 RfI2N3eg3W+EV1N3Ta9OnN6hiMC0XsADwIVx+VeP7bXAvNYcX7A/KK7dEFIVoGf6RL
	 Ci4OJfLg08kdcEb8pG+3/9ah9ydtnL4LQkAEQcyWv6XEBfWfqsScEEnxB0Mhev0g5b
	 vhFxpp1MOpaIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9D22CD5BD5
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 07:42:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177995415368.27678.13294237063570710483.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6e2b93fc2ea01d82128d6146cab1c9161154d0e2aada9234fc3be67c60e1dbe
Date: Thu, 28 May 2026 07:42:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779954153
