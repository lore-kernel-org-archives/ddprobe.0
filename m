Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C3A91A3BC0
	for <ddprobe@lists.linux.dev>; Mon, 30 Dec 2024 10:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735553754; cv=none; b=IZMkUcjIRwv9EU0eZtGqeMZIi9m5z9bW+cYdbkvMgbigxI11B8a2BkubgF4PB4alAAF+2tsfgFelrgwxs1F4MGJwtfltxjJKvUgPxMSdwLUnWGPNMMze+uZBCUe3xBxX9yQT6FmqRSuenn7yHqiqU93MA90zPM21Aq+sfBQO/tk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735553754; c=relaxed/simple;
	bh=LKwspxLCCZU2N1Pg2x6ZT+Z77tIWxXze9DEP8bPyuto=;
	h=To:Subject:From:Message-Id:Date; b=SBy44oxwngahkkg+1gcRP9D21NNvXdi1lBh73Ah10CO1rBfpYAu9hpFPUe14sDZEO8ML6whTghD0QGsLZjY9WMS4VrGt24o1xxUw1bqkD+aTz1NmZnkcDdVsL7rlHNPjFx5EZwl7clZ4cwMS5mwcDdqvF1NhtqZbo7IjF2Vgea4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OaoeeBL7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OaoeeBL7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1C2FC4CED0
	for <ddprobe@lists.linux.dev>; Mon, 30 Dec 2024 10:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735553753;
	bh=LKwspxLCCZU2N1Pg2x6ZT+Z77tIWxXze9DEP8bPyuto=;
	h=To:Subject:From:Date:From;
	b=OaoeeBL7X8/CcFgmwDpGTfsGuDazizKLZniL2CUoEI5wy0ICN21vcXxp2rgMcUO0g
	 58BOVRJzhCOI8ta3IgBb3pgWHI034qr/jqzHJUbEk2eplasSE/K90w4jZtVfVzunEv
	 x4I0Kg6P2PAO7lapzpg5AtaBAI8UWXgxSAuHzca7GxxUP3LVIdOMhZ9F/HG1VE82/y
	 YMIVl/Cp763EAhI5AmFegtDfgLr+UP4j9vMtWuFfTDx/gFFLUeBeN2yA8xhzhULbq1
	 lOoKlFXTdxkWpSCJmL791dHAXQYxQm6Rq54g6DZweERS+71BBjd20x7QMnRVKi5DLd
	 yzTnD0K5Ei+tg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93674E77188
	for <ddprobe@lists.linux.dev>; Mon, 30 Dec 2024 10:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173555375359.27425.10626481231251859242.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c65594c6e1a408171e71709be988990066e0f25967692f68bb3fb9015c652b6
Date: Mon, 30 Dec 2024 10:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735553753
