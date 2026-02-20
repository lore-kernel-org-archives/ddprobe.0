Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EBC4311957
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 09:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771580094; cv=none; b=DpHlss0+/RL19GTZSp27CpecW5lUgWEiduw3xz6Ctut762ZkRjRfRsbWHQgq0UIOly7nJRa3c6pU+4hmXpVj/xy7V6T5peRk6yDLfD2wj9tBrVzSTF0MKx32h4foQH1CYYT5ZWpLXxPgiufR0+xT++Pw405l11pmTjBudhME5wg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771580094; c=relaxed/simple;
	bh=eTxyvYvG1eANNwUHquepWYiCLg5IqeONd4hGHYEc7uE=;
	h=To:Subject:From:Message-Id:Date; b=ph21kJyvRFps/llKZov/C2ROwWFAPuY1xQdMpdNHcE+Adtm8KJIuqifa8Az64oolS7Gm9IOOYqH05SFs1VNlpDSaaKuNK8cZM6JH0RkhHuzeXD7FUHrqBvTnhjpLQ4sELJwYydeG3uFDvNhH9odT9cs7BHFSC/4/ZsonncAPbjY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mOW40kSZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mOW40kSZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB6A5C116C6
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 09:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771580093;
	bh=eTxyvYvG1eANNwUHquepWYiCLg5IqeONd4hGHYEc7uE=;
	h=To:Subject:From:Date:From;
	b=mOW40kSZEkqpuicPEKAz2KvSoLOqAsKeiihlXSfZ/2Sl5IJKdCmLaf375MIZxM4iO
	 muXpKp5WMToUCcuNwYCsgU0N2beW/kQgzsieL2EXCRJb5P49BAD5If9x8jQU1y+L2b
	 9PU5Fgtqivj5oxQuR0u05DaxC+b5afTegqXRTrLI9rE3fllx0kWVL6VzarQtGYox1T
	 PbY6QwIE3tWNFIyn+/xuNJZxrH2i1yUBibsDSzwCmcuQ8YEwl8HunlrMgZWEyZ+e+4
	 pTZwk5NolNUcoN5P4Vvs8jK+XjqrrqPUhjYfg5Jvjl/cyizRXr6WBXlYRZ/fDtIsTq
	 PoyqP0mZYMp/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96561C55170
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 09:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177158009360.6383.12477403739406252857.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97a4ebc57b6e0c2a5ba52e6ab67fbee34cba78ed0b0019b7105a81fd1141d4ed
Date: Fri, 20 Feb 2026 09:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771580093
