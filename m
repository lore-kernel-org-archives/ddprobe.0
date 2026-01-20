Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38F7C3BF2E5
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 08:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768897434; cv=none; b=G5qiynGU1as4n8hEw+kzqdSz9ZOjg+OjWwf+u6avdDel14ZRaIrmYhcNxIU/cTTPvT9aYhHNHcyDaJCnTLMmVDGXHKbmRRKGsEmkLVbZPa3tPrhP+l564q3b3tjHexOGzkt36rOzE5uRJQKMwr/bzWo9dP4QGZyTmeuUPQ3F7nA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768897434; c=relaxed/simple;
	bh=vYH9nal7hyXpsebInV39BJWU4l87oOogJZVKELEGXx8=;
	h=To:Subject:From:Message-Id:Date; b=Le6ZVPK1CwAmuoAILiLlAheL5UW+rNM8B1Hns3bm9goEL5UnaeTlayLDyGqEX7EntJAE7kkMt5N37Azl4hwnP31c7lCts81uWpuK8O3kgdaNtv+pON6yUgVrdLmkKlkJOxsqo0FhFt3faixJRCHsPJQs/8LD/Hy47aZ7uejb1RQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HhX6pJI6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HhX6pJI6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4963C16AAE
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 08:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768897433;
	bh=vYH9nal7hyXpsebInV39BJWU4l87oOogJZVKELEGXx8=;
	h=To:Subject:From:Date:From;
	b=HhX6pJI6/Wdn1okq74nlQtmKb2aiVpgE60s1EzWmJ5Y56E8hjaMZrgbtDnuUgcdum
	 r9qEKoapusTgl39SbG1xeHaWkxgvMGBUIgGgy3yzgLAIeKgIjkWJ284xsolhHLgvle
	 kN1L78pJ/M55I/ZIoyEOHcUt6A9LSBdXpO0JPDeLPF/sJkGsgefCErzAQ9NrzNKEF7
	 NCUh9+UWJUDks8uoX2q0hNoGJzVwWAV0R/K8b9etx7lF3JB7Vs5mtacR3fGXYX2GQi
	 ciK1z4/JgDrbqHjaVIXhj9HKuf4EfBUOIa+GxCgvYxais2R+UI+YjeDTvkuQCvigJN
	 QemjjsG6TNMjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93B21D2ED0F
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 08:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176889743359.30139.5411743491446922007.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0522510153883559cd3fbb95e407427ccd7c7ed7a03eff96da4a62303f011a58
Date: Tue, 20 Jan 2026 08:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768897433
