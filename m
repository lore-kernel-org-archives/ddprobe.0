Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A8DD2F39C2
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 16:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770222834; cv=none; b=msPzKQzlJlJ/8nSqirI6z+1oywci/gQi/SVgrPMFoiH4Foi4sNA3mEavU5YMC+YG3FcKqG5jQ2cOHf/WAnWr89Pl07N9QiQ5WLiwjNN6uxMl5e6ymfbrnE+/07CGQAT5wMrRWRo+EB8H8/cRAF87ghpqwR5SO68jwaNg2qRQcUo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770222834; c=relaxed/simple;
	bh=AWzr/0P4tjdtns519tXllMvycu1Odtm5Nw5CVRlH8VU=;
	h=To:Subject:From:Message-Id:Date; b=efWrCB3JlkOBf5CxSFUBwTLMxbEIiC+FAp7ZvLMIVxYx7ePqxFJUIJfxwsLVIQnIYNk7mXH0WTU6Eg8vt52YEHlmappbFWJ1qBdaaZNVvGbKm/XDyrBWgSMtZy7HsRTInYNccDzofVkX49a/AyIIjNtAmmHMNi8Gwg4jBqRCq0U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GbCApsek; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GbCApsek"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8D1FC4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 16:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770222833;
	bh=AWzr/0P4tjdtns519tXllMvycu1Odtm5Nw5CVRlH8VU=;
	h=To:Subject:From:Date:From;
	b=GbCApsekJIQQxhL/wCu4Gn9BZboJ9rAY+rv6ivu+OMGzH7pUudyLJwMfmKU6CPQ9m
	 8VDBPb8EQ5ztr6VI9SIa7Bx/QAxVsB8J/qZ7NhwfXkxRXblZrsFMdTEVdsmhff0BNM
	 jvBdmXruiw4uYzQpb102DmYzuHoAWP6n3XAkCY26Lcp3lSlkvgRPA8jCd8A7R4P0R5
	 SnHQbpzvyjjCSckmdxhb+Qyg/9AhxBUJ7JQYtRnC8w+BZErm0bPyh/qr0gV1+Tc+Cj
	 e0Hh5wJ1906WmrH0uNiqJl+3V8LX7Xn0AaQuJrmrSh8gKdnemjHE8QkXlpNJbHHcq4
	 CPLSk3KWUvafQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A010EE9D410
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 16:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177022283363.32735.10767354635092624127.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7859275d32f4af4cf0c8c33f672ee87f020a8239398cfa1cd28fd860a36f68fb
Date: Wed, 04 Feb 2026 16:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770222833
