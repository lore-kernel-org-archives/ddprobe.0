Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 413E41EC4FF
	for <ddprobe@lists.linux.dev>; Wed, 11 Dec 2024 23:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733958354; cv=none; b=sTvqo0r2hqV7kkIiMr/ozA9nvOK2Im2NpL/LPMkPYYM0HkLxYeenxRPVcyt/ggipCQgZVBgdpcFX3X7GjehavFY+bq88om/l4ruCgvLy4RGIZmsQs3aEoZ4Y7pGNufb2wLPelti0TD+e/CAd4Yo0LK3VzqG+HsJI3IFRbM0OHkU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733958354; c=relaxed/simple;
	bh=xx+2RDq73WcOtNhXt88k6XgbQawNCaB+Xq8bbaA1AyU=;
	h=To:Subject:From:Message-Id:Date; b=rUUFR74J0dLO2AMTu/MptCpLUDyzweAwqGMK6tmJuGevkEnm0Tyxc7J/SF9HZGpqxYfqDHv5tBB4kHPyJ36FrkTNZL4uqW34xE7nwGXObdSH4QuSzHeq1wgfLhsbClkxrqWn6xmWjy2ZQYEHBX5kGyy1IN+/+omOgepjyOuChAw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ait2IjEl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ait2IjEl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C486AC4CED2
	for <ddprobe@lists.linux.dev>; Wed, 11 Dec 2024 23:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733958353;
	bh=xx+2RDq73WcOtNhXt88k6XgbQawNCaB+Xq8bbaA1AyU=;
	h=To:Subject:From:Date:From;
	b=ait2IjElWiSjN8yUD4ZnaPwz6QjCjNRiBIhlHc12GNEEN3Wy+fczDA+La0QQJIntC
	 H1hq06NWfQy/9DYjck6lPtYCld+qxHLfbAkTwLaL3mc0I6DI5fTvhAdtdjr8FOV8+t
	 tj+RAP+U66MP8YGHO3S6425EqbZashhyKrElgzvJqFxKTzhjLUsVaKGEFAxw+4OoQg
	 qStCdgYvwQBk8npP099adx5OMyOhp6jDLLlEK9QAv6DezSdcK2Ywxbtc2CHclLymHe
	 d8562fstI5EYYjf8sZQ0HMeGd4bv4SWoYf4pYN5QGyPZPN+mgJ2Kvy/V5hTLnidyav
	 nuiEz39DU97Ng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD479E77182
	for <ddprobe@lists.linux.dev>; Wed, 11 Dec 2024 23:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173395835366.8668.17854535787324271102.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8492503a4703fc9de5b4c6e303bf28aa017783b003de8a10975f07a4bfb3f979
Date: Wed, 11 Dec 2024 23:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733958353
