Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3081D2942A
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 04:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737261954; cv=none; b=RfqfccuyL5v8H8gZaxzbsEB30tTMSCAG2eRjQERs+6hAHQEyxVM3LJWmcSwMnOwidn4pJpXqDvmjT9OuYlqQMucRa8byoIMG4H28ocq/AMqWQjxq60s6loPLPVoecHP1g06+xeERwoMnoxG/HYOMcScHf/wkRE6LRDHEP2U+orA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737261954; c=relaxed/simple;
	bh=G9RSmayCzLRhJM73+Nj7mkGJ+47ee1FncoqrtajOX0Y=;
	h=To:Subject:From:Message-Id:Date; b=Jnk0w3WhagXXlnkO5QdDyWlPjkPs03Dwf54DKS1k9iRAp9wZSdF//yF0nBIjioTdgPi/3tY5BY2v0nCGJAFd/l6WPpEMn5uGroF5W2xC6LiHUlTJWgHq82ZsxIecNnWZMDBECzB9yF/vZlgBGyF2V6hRGXKBZWz6+Xg/KUUf39s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DTPcgQzX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DTPcgQzX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1A97C4CED6
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 04:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737261953;
	bh=G9RSmayCzLRhJM73+Nj7mkGJ+47ee1FncoqrtajOX0Y=;
	h=To:Subject:From:Date:From;
	b=DTPcgQzX9feVKh/Un3POCvx2NxzjSMHplagvkdA0UfP2mmVooLsdffPLXXwAIVUtf
	 q3fOeEWnuacGqdUrAitBxvG7os2oosjVgAcFuVhjsbGhAo4PfBQpvEpkFIyrGYu8Gr
	 gBunyUVQeLEYBn9Asy7zBVyTPrWESAx/t2oK35UCNOor8oDCwMNC/jubQwmrvS+zGJ
	 2v1xRJEwPwD9/IL0s+DWJS2IsM+6pxMqQlYgj/uhktEEXXMBAYHO8gnS8dDx+4coWK
	 mNvlhSIl3sLBqdtAWWrwDTCRf6wpWD+svXrE4e9CzVeyoOnnERLbTpgueJIyb+Cv87
	 TKqHg1uVnMExw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C42C02183
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 04:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173726195357.488.12644466187696924372.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 624955fdab308ec152bb747e64cf3d98ca432e7603dad503ba4163bdfe1c6d95
Date: Sun, 19 Jan 2025 04:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737261953
