Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F1102E3704
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754798994; cv=none; b=mANH5z3b6VKuUk0G2OVzfz5A5ENPGWyjOw+2w+QOnK2jX6UbaFvqAxOgCMPK3fMTXChda0RuzFu6NDnxF53dbWTSTmwuXVqvNyE8vlP/hiOWl3EzsxhYeS+SlDdoFQIIvz9hVfc56cHFhO9vCw2mdFoYsmRp3CNHjDgc03qQgwI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754798994; c=relaxed/simple;
	bh=h+FHhW4fLYlqjYB199satVJXIdgsATryPXk62mMLzhg=;
	h=To:Subject:From:Message-Id:Date; b=Ek88Vr/eBIAEFSGxtSXZXQk3m+YzbCs6CBfonZHxoflL5R7scfF+eBJIfJprEVxmsG43vxQfZ2LeKmJ8a3V8EiedMCA5KG69XnkqpBhndkejJIh+VKrt2Z2km7jRRGA6yb3d132j02YJASnbCpimzLO2j3wzFgp5qId29c1KXZI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZyLgpEq/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZyLgpEq/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8491C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754798993;
	bh=h+FHhW4fLYlqjYB199satVJXIdgsATryPXk62mMLzhg=;
	h=To:Subject:From:Date:From;
	b=ZyLgpEq/bKEM0f+KLibJKsb3U0ArGh09fKkvoBha6yK+owBYocsGZUhMtz3C13dsk
	 pfSpi+TgdwWFQlAAKsUYMS4+846VOHMakPXhBEywwGMxLWtUjh8T8/NhIP4mIpuyPD
	 fG9NfrE8Y0ObdiW9NY+XELpnUAoNTIKrxhuaAPWsD+I6OEcqlIjiVEOWJPebPgQyyB
	 v9R2oZJtXA9rrTqXTKEhRT3Zk7TRoLLuQ1wR5UzgWEGWM/l76OEUouqyHlLo6pV1wY
	 v/RLi8HeomeKtiOYqrVYHl6N767HmkisJOAskV+PZNNr87MB1/7RBVfBvl4xIUVRuz
	 ZZmj8I0VVVrzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F4CC87FCA
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175479899357.30060.16398159936686231881.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70e914e4de467d6b0f4cdf7d3dcbae2f0660f6d6ebb2581c083df720ee926945
Date: Sun, 10 Aug 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754798993
