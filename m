Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 374981E9B1C
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 15:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769960634; cv=none; b=IhUa4aWoB1P/zygkIavEm3DdK9i0RwcDxQmrd4xzojoA8mEep61qfOa2ZFTLvUUl0pYUt9CMWcPNN8yVe9CdJqi0p0PRc935LoHgcHdVwYjI2d8KFmCa6rsYSRKJu9dc8mnAFKhbmW2iuCrA0mFJpKF5s+QCpvoXIXz28SE3GSA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769960634; c=relaxed/simple;
	bh=VqwEjNciVSpM0wLa1F7UIp5TtjT+hv61zMZfzQPhTaA=;
	h=To:Subject:From:Message-Id:Date; b=lOiq1rKZJGN3jSHZohulthh2j5qMWpQ4FFc/0ji6bUwoan8H/BWQWL7zEowfXK7wNe/3pZyy09XiJNNQp4JD29JChYyPKZYM2NbgRjg9KHDcX30N4O/oFg/OVhqSPJsJLIc1wLQ89LirkprXTAEyhLfPn00HTcjUB1nvi1U6HBw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g30uOYDR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g30uOYDR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8CDEC4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 15:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769960633;
	bh=VqwEjNciVSpM0wLa1F7UIp5TtjT+hv61zMZfzQPhTaA=;
	h=To:Subject:From:Date:From;
	b=g30uOYDRuzuzmv2WIuXNaGeRTvaLlIGjxS+CNwSLk5hQ1FTH/sRIzsTnVgg2pKlT8
	 e6VVtLFhH0ZkEl6rB19pS9CiuOXPp0BOFaQOwdAhMhV1g/1/sZynBiIbrQ4zGj4c+c
	 OJAzdP1hnv0ocHa5CMoQk31CJZB2QK51vTiEeF1SRU7mnHFwzOz/nzN4hj+49lXanM
	 7ttsNQMjUIIjvp3jPqJm7vawANqGBWvmWO4EOKd9JUswKE4na4SJX1x30D5GzdRJkc
	 Audq6o8wKKzO/5Ik1kzBXt8WVj0/3YkAl1eWAokUB6Su2FyLsyFXNR+9sG6HqcdXz8
	 Cs0RSxL1sbhZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1DA5E6528A
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 15:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176996063359.18262.10017543796254557989.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 369affa077e5d16ab359a998c1fc5582170ccdb9abef635cfee0bca95c627586
Date: Sun, 01 Feb 2026 15:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769960633
