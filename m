Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0744B2848A8
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 12:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770381234; cv=none; b=aciWxOxFZVu9CUXf0nB/kFTKirb3zlMy3mWgLL8GB01EsvlX3AiEeHKWe61cemZ71DMopAkhb6BeCHWcGwWktdayNiSx0zSwWoBYsWPAGNr7PfIKolpyMgo4YgOK2jiDutvndEgoAqBpltErK+pwtrU3KD3Cffc8DQlAP4gDYRc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770381234; c=relaxed/simple;
	bh=4E1BEBd+8T4kkYqN2GWUzLIahDZ/v0N+CoiZRwY+07Q=;
	h=To:Subject:From:Message-Id:Date; b=UFBmYfKZflzYY4biPYMutx03ve3+zkVEgV4+rt7/qNNt0A7SIu2AapOBgrXr1sneOouKyU+UrcoNHWI4oUKtFfxxFk9b/KBL+mgV+DSNQuhNsjiAXg8WxTkUcyTaGEAT0O8zLoCMC8kEvEDgeNKfQAiPDxoAAs9kq3BsgSobzOc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VkH+wKB0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VkH+wKB0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A59D9C116C6
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 12:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770381233;
	bh=4E1BEBd+8T4kkYqN2GWUzLIahDZ/v0N+CoiZRwY+07Q=;
	h=To:Subject:From:Date:From;
	b=VkH+wKB0oMjwfo518VEPjRQpvs/KTio+eZcBbLYBkzwYrHrrPwrL3p8Ekske/UkBb
	 0Gxoir6lywnCehlcTdqhQGX+OI07qN3d1VgveB6IXXzhd/0GIBmD4jfTxqb1kk4iDG
	 JoFhmoRSqrJMqbN8NetCIHRaSrMV/igCNgYTptaDiBqGvyXZlM6slR+pyVoODvp1Tm
	 mUUZPTAb05ydGlLuOZOkDwIqQsyDdT8VrAERmeGo5Aha7aiWucnPqoT/Ig1lwvaZ0X
	 kvnu8O5KgqY/Ec2DJeqvQVLLmxMj4yqd2VxPK49R020OJxG0n8vFjsx7bWwznmhp7x
	 f1BoyFgjPWXgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93E84EE2099
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 12:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177038123358.12818.404382708980683085.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67e2507d3c0ecb6b41efbae398df8e8e667d35ff541e0455900704f6b3c4ab25
Date: Fri, 06 Feb 2026 12:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770381233
