Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A4C728505F
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755839995; cv=none; b=uacfbtZFvcNXvDo+27VD90oAKYz/qUGBj/KeErBeBPYYLV2ljXUkBWM/GhkornUgRIXZGE91h1Jhcd2Y75iCYzRmAYaV/ANVw3kJ7k6xQsKegnzAXP09Z/bGleB0vJMm5qsx7rhdgYlP2R4SSX7Ghbzx4P16ri6rdLDs5aKQJRI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755839995; c=relaxed/simple;
	bh=5/L/BbfCVR16uq/xyh+V1yS7Gcy/6HQxq5ZQ0tL/zyo=;
	h=To:Subject:From:Message-Id:Date; b=iT4oGqqKheQjSzGKjZErBKP+QWQVEprkJNuwWxBUwg6G/iol/IZyPLF1MKjkq07ywToznLi53iSmMbUJI4RAcu3Nk7TnVwqmLPtdYgJqJVY8q9la8jnIWX8D0IUiUkrWlaMQ2o7dElnDyeediJHrvIlnrYyLT0XMU+sKmvyiS0I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mFByz6yW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mFByz6yW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0675C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755839993;
	bh=5/L/BbfCVR16uq/xyh+V1yS7Gcy/6HQxq5ZQ0tL/zyo=;
	h=To:Subject:From:Date:From;
	b=mFByz6yWO2r/h13H4Q7xwLsQKIgtVNy97mKLAlwV7Ft3OVk7GnOwgZpwD0h+Uhz5x
	 Vf9laWQryrY7Y9qJ9D4Ya1C7AgikyENnaflKW//OT7tKHTCAw8r5124RbAwAt+HtNJ
	 1o+wl63RWFeL728RxmlWxScDLFg+mfiWVOyJh7kf6nirdK81GG09MPAyP8pgxzca1X
	 y+abNuWbfdQlmODPvcHzyiCt82cTYG7CGxSqIvcvrQqfgcDJCoXHHB3hBdqSPw6Aoa
	 38Jf+9ayClq/tgU2Q+QsM+WYHXKAhoDgMOMlKUfC4j6idGo0Qs++rD5ZspCi5b5dCo
	 erGwFdslpchdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2E1CA0EEB
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175583999357.2247.18197482363614501323.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2646bfdfe28d1420ce6c52887f6c43bd79dea98f976e76f6789ac4f83d6675d
Date: Fri, 22 Aug 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755839993
