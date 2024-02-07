Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 273928F5D
	for <ddprobe@lists.linux.dev>; Wed,  7 Feb 2024 00:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707266297; cv=none; b=aIG/pd1enbV+scxEFm1NLGfRy6Z12gyCFhjLIcpF0mdxDcMI7UZdeVcRC8jQ7QvN7709zaVKdSgNVNGfwUSZvnwZVMmCN/luRleyfrPi00GogzEjdYmELpXE2PfTArrDwfpwVXnsNPD+kYjIQWusPx1xXRmPpe/HrK5leLTg/xg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707266297; c=relaxed/simple;
	bh=MCVElsFgBThSaM/kHy36pnCvyh9N4XawiEumdtqgJ2s=;
	h=To:Subject:From:Message-Id:Date; b=Uvi+LI/anWUAJmJ3PvpYR6kJJmXV33steo/pXSNTq0iW/9fVNZyG0cIO63GgenWTT5YrO6RINA1GyZcebsX4bL77dRiiavzsIRYrX1MyAHhieminz72SZULOz2zicuk4LffMhddsBQM0fnV4eE0VHdtKTLOLSN7dnQdwsTFnix0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vs0ZAyBn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vs0ZAyBn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8F4FBC433C7
	for <ddprobe@lists.linux.dev>; Wed,  7 Feb 2024 00:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707266296;
	bh=MCVElsFgBThSaM/kHy36pnCvyh9N4XawiEumdtqgJ2s=;
	h=To:Subject:From:Date:From;
	b=Vs0ZAyBns2qVQ7mmDGN3dadJWOB12g4zJHh2tvXGgtuXhSp7z25NUsbWe1STwGoxx
	 pEZ58poVyXo0wPZzlY0nr+vvmAvn9+Tqd9Ait8lPV03kCMgQ6s49T3tvi5vH53WDQg
	 xuyI9XcaR/IUO7BUJR5vv1puG2x/06OpRSLurlhgMuMwLsXsevfFkAINHLUVQu7Dyk
	 Q6NN9l7/zAmpVbUrTDxnIsALbHnwFL1lK2f5oy6ruJ7wEZJI1qKDP0QX8X22PEMjry
	 JEAR3yFZ2z9Z1eodFh1oWQseEt0kcCCYVy9LMVeJsnfHYRFe5JyEWfR4U3hR+M30mx
	 Qg4nF6ZBPL8bw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 675A0C48297
	for <ddprobe@lists.linux.dev>; Wed,  7 Feb 2024 00:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170726629640.6305.468337951780404513.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f41900660803aa397a3cd157ea191ff01bbde7cb9cfa2054533681f4fd1e5c29
Date: Wed, 07 Feb 2024 00:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707266296
