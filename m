Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34C3C1C7009
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755373795; cv=none; b=MlYGT5TDK+qg1Y/5AirVkHwJvTf1X4Z17gp7La8+dcMYaO3CsHvumUIoL8yNZfw0dmqj5xNZ6IMljc/LF8ZZfF1ci5vHZIQXFQGfeZq9ywN9OjECM+hxd+eGq23pAZ7xAsC6HjQ1u1EHXvy5qIoadhyiLUllBIBi5jFKDt/qaxo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755373795; c=relaxed/simple;
	bh=WMQrDbu2xze8OTF2ZE8DfZdsCsDe5Rik0AAO3S3MDig=;
	h=To:Subject:From:Message-Id:Date; b=qdb5D+iSTwePcnqZM8qv1K2o49WchlhBjipuaZ93yxbIdI+K/HdNlmjuWmWKx3ntT+LchodgVF9THIigYpW2+FfALPSSQ+ooiuKD82Gu/6EKuq8SZzUhKl5Em0FwBFJF3v4DjowiEUPq+VxUsedKvYzzgjAhWqj/WSzjftxCzg4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cJnYRtBi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cJnYRtBi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA39AC4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755373793;
	bh=WMQrDbu2xze8OTF2ZE8DfZdsCsDe5Rik0AAO3S3MDig=;
	h=To:Subject:From:Date:From;
	b=cJnYRtBi8J6VagOYY0S2gO+k1ZtIQ7Vje7608nsVDUgeaptt11UJvMTNIdHb8yXvE
	 ocgTuWI3Klr24yiYLKMjbdtkg5FCIyX8U2uOptxGepcNA4H8Xij3H+uzZlhNhIFFCN
	 qeDkDkydnd/bZWcGH1SBZ2qi+SFrl+lQtBrb2b1IHacvwzVJDqM1QicDAP0nJ3LRl6
	 x2KD1WiHvvneSzGaWP2oV71YRHuEt39YjaD/Tl2ICPAvof8mBeirAdliYTXoQNPgtT
	 CqY1rFVPIJ2VzCTppW2uoFMgK6oA+96hbdM0oHZrvEQ4gC+eAEs5OI1O0Oo/dT0wnY
	 O0Fvp2F2+wqDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9888ECA0EE6
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175537379360.32157.15114273477745749358.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 975264330a502e2fa68fbc4c5e52542fd5c0edbc0f22384ebaf7ed2df309b3ba
Date: Sat, 16 Aug 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755373793
