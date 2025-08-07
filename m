Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0736D219A79
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754606994; cv=none; b=TrP8EvRbwLNXZYTeY+gyhYAey0eDluQaakhbaVHtwOsCKZhs9hdgyiCBZkHz1WaxNBFWnYEU5dO65TgFhVk9HF/lT0xJZD/vLXIiZlEAmUKZ0Zm8Nctael73wBfbFYAjkunL7XW3P9cMGZS+M0T6OTneR/SVaEf3iGAA9ysnSEs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754606994; c=relaxed/simple;
	bh=DZGvbxasLeJsgNKKkCVuvEoHZSejFJ3a2RhIMmmcG5M=;
	h=To:Subject:From:Message-Id:Date; b=OUBiNiXw6Rf2qXNv8EvA3Qvjp87K8o4FQCyoHT0/xtgNsbsbbNdOukfJiYwxoVdWWDunKWAqFhfJUIgAJ0ROAVphDxBdUTrkCQfaAAF6e1MiTYKhYkvQa0RL8JydHLHUti7RLY/vk8L704NE4STWBS29Reh4LNRTonrUl0AHt1Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CYyUvvbx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CYyUvvbx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A127BC4CEEB
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754606993;
	bh=DZGvbxasLeJsgNKKkCVuvEoHZSejFJ3a2RhIMmmcG5M=;
	h=To:Subject:From:Date:From;
	b=CYyUvvbxXS8187C3biRY60bLs7yJ6vHMQB3B+Kv+CHqWenGC7yUcebw0nq0NcUjNc
	 4SPnWvHXb0zUdTlbQESqcFA6Rw38rNOwdb+80e8PT9Smzjf+iATT57Gu4Q7gKJocsx
	 8ynTsRiwGp+1VIWfg2cbvGuVCIsKCeFlNo/5GGy1byB8hL9wEQJAFgb5Kf8uG0Ok1f
	 Y179SzC6VTdb1lEhO1onoOIipL9RCgjJtmQI1Z+L3BuuUWLZn7miV44EEPsVi9RrQ8
	 wCmlShXYrzS7C1xU9mu7DTNrmgYQy4wTruAvlVACk0bX4FfI4ckEIYoSy0laIUbi6A
	 1W5bUjdxLF3XA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9270AC87FCF
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175460699357.8016.17726713225260022821.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e0bfff8a5dd7676fe49aa81fbdb865e0adda46964efb4bd14a8b1614e2c964b
Date: Thu, 07 Aug 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754606993
