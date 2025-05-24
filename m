Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5924C801
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748074794; cv=none; b=D3XGkVgzgZydemp2KXma2T5wigF4S3kh3O3zHA2BIGLTIzQ7mtYTnXmRNW56qdr89Dn/xBy8QoM3KlDpio+H/lYom6GXo53fj1nztGgIGokuIccHHUXR9Gkr2dD4ikCmTLIi07eRh4kNb5GlPF3PaztyfaBfdsaQx4gmMr7qhu4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748074794; c=relaxed/simple;
	bh=qGbxTM5AgT6O9drmLAYrft7nquSqYzc7rY3PuV1Cj74=;
	h=To:Subject:From:Message-Id:Date; b=J/gSWV+977nd9VHgWi72/OX3vaqiLm2ZcdVa6jT6TzHSEJPd85hr/eLZKHs6Q/n8xkRE0M8d4l2/QOnI63/whVf3zxEzjEJrJtyCa21SWQLvrIqFOH2fFKmxfqbecqOTBu3zCJuXy8C0OPdtr+aD6j4HZhx5UB6WE1dUAnhnFgA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pHF0F7C5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pHF0F7C5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE6CDC4CEE4
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748074793;
	bh=qGbxTM5AgT6O9drmLAYrft7nquSqYzc7rY3PuV1Cj74=;
	h=To:Subject:From:Date:From;
	b=pHF0F7C5gko1G4oMKrIsJqbauQ6idQNHlbDBN4B1cXKq8XgsurI9zyApE2toQwMW8
	 OjSw8hIDZFIqNz/vAGbD5YTJrEJwVOzbXR19dN3BsRJXcM4rmEBxwZCJgs4X06VUMR
	 wbbqQotvS3vFH8eqAr8YB/f1MbVUfsWU1pRUaLlyEEvECu9Q+rZcdku4f4RxKb6atQ
	 qiO8SOvlkGJ/5OKloShMbdOrMm/4g7ooE65flOfqodhwHPIpwrks6/wrUQ423H913I
	 NM90UI7Rc5k3lOottUCnnIN2P2/TPhXMbgbrZxDdevKKwJQ+NBGj0OZE9na4G7mWF8
	 FZdCN++wtNwqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C07FC54E71
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174807479357.14205.2144710042152238107.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 050519a5281030405987e7cb442b74d7a7b19831087ea07a70e14cc92c26eef3
Date: Sat, 24 May 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748074793
