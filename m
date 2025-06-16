Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36CFE285C80
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750079394; cv=none; b=H+Gb4Qv7VwEB0XBV0QriPhoHta7qs7WjY4YqioK/4gnoub7Ck6Fc+47TFpA69RqTTa7ZHAaLRUuu2Mw1RJBUd4XuzbYu0R9xS9dX4CFNyijHC2CGGFxblkn18s5Nfi59r5fD7LCd8/5Y25dA2Q62wryfCnruyQq7OnYQkybidlU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750079394; c=relaxed/simple;
	bh=4TZ7DIWeD2SqlkMv4Sz/QL4IQd6SJny84TBKFvyzxfY=;
	h=To:Subject:From:Message-Id:Date; b=KygmOZeTr7h31P9D76dV2B60ytoOeRRwcxoTJgAWJV9zFnNTNZul308lpab7I6AJGoCzYyH5p9s7RLdLmjlfVxsxegmZuDtXjyKSGJQMXR7ldfaAVKgY43+CQ1slEYvR1iIT3KAmvVS2nIaEpDf5Wsfhgjak3CUjBBDSInIOjJE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lD+vsFnO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lD+vsFnO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA5A9C4CEEA
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750079393;
	bh=4TZ7DIWeD2SqlkMv4Sz/QL4IQd6SJny84TBKFvyzxfY=;
	h=To:Subject:From:Date:From;
	b=lD+vsFnO3zeVHlomUatQqNHF6AiT0VDznacL7VFkuYC802E9y1SKx09VAzHDC3HS6
	 xDQ0jtAwQTtCgQ+iuYeZilVU0slPSJJfCfFgue8lmFVFa65A1Wm15RJ5MjHVeZoNSY
	 siNRYl6fidIdCeAbywpa6k0m96rsbh3wrC4LXuLuVa0f+OvHDLLwk5lv9eFr1PxSsV
	 CI01eVjECE3qT3YqNP9PKnnE/QdiNsNE7szPikEbcjFIYl7MkC8swxxezRdt3cNeME
	 nu63yc2a02Oi2gGrV9GoeyTbAtZH1AdBOKkd+95whQDD0AnidWvdHxJTqpZeh2U5GD
	 7taw7njNxL+7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 933ADC71136
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175007939358.4299.4426960531638173530.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62e74ecb79b7a68452bb28b933ac1319932933d3a2b7093f4bd01922e4e01bdf
Date: Mon, 16 Jun 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750079393
