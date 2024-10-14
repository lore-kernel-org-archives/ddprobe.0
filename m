Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 367534683
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 21:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728939954; cv=none; b=cspta7ySHjpQg67DCD0rQGYuaj57/Novxz0ET4twVZVzjUiXIZEhFE2KH5DskiDv03BZ4QHBY8ahmPGQphWyxdhtRo/ms/MtVzBAWoo7Q9LZsmbh7zIYH0Nq2tROHXVzT2Gib44gSOuaaSg8ztIdCU4am/svmFeH6CXR1RgboL8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728939954; c=relaxed/simple;
	bh=kYv5REN+v+tZkqOhkVvabePmF4l4XothF+VLnCLmMpw=;
	h=To:Subject:From:Message-Id:Date; b=JnwwWtSB/8jbUvCn72RNpT5O7MWMT3bIg417LfU94/PHRjHZPsw+duhx5Yf1VMiypnMiF0hK6jVNtrQtU/gQNrDPjYSYmz+PQvwgOeVYuFfUZdO+E9qEbFWB17RyLwcWtdVie7upyY4jq/9qSaPcBItlwZMSz9ltsPt4ruTprQI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R/t1s93c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R/t1s93c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1221C4CEC3
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 21:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728939953;
	bh=kYv5REN+v+tZkqOhkVvabePmF4l4XothF+VLnCLmMpw=;
	h=To:Subject:From:Date:From;
	b=R/t1s93cKkaYz4fM3JwG7nAwfwzNihcxgulvMiUd+zO/cAiSsSn9EW2TsGqUFSnCI
	 Mmg62emdrL3p+Kuu8T+tTL4Vk8sv+qbTAErTF1A/WnKUAG2lGBQK1XC3+B9Y1h8R/m
	 jblCppstiMMoWYR2LOLiOj+iDeWhj8i/kbiW72m7VQ8SB90PE1IQsu+HJMT5+hl1lm
	 MqrQOR6patYDNIS3Ik1Jzvg4KoLe0yp4uTV414Qdw7NH1NoyAr2s5L7KwPQ3Fz6ATf
	 LpfRV5H82jUEnNOsAouGM5SnyTe8taJotMNXemTrr1YDtuxJACHUGC9H36qob0lQck
	 4JtzSWExq6gbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A10A2D1814A
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 21:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172893995364.26099.4493612541562155048.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d93d0d2a2ce18a4d2fd99bd5bda09c65ca6a87230c201638ec4f0e220a6937d9
Date: Mon, 14 Oct 2024 21:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728939953
