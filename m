Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53306307AF2
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761574794; cv=none; b=DccsIuX0jQM91wk7r3RIjq0YIBDuQr69V9h8C7IrerzGskOSJYW/tN8K1dHhZhp69UvSQZ8jDediN9T1tizhB1Peq1KFHqRcZ3GeuAmMbXAfIznOJNvWgk3GNfdgB8bGhOgvUdjB+us2JSP44kmlOS6fjJ0TIYrsWQb3WCzcHLE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761574794; c=relaxed/simple;
	bh=wN7mlmZw8mCfuGQ/KduIVciuUjgBNw/a40WvpYLFOec=;
	h=To:Subject:From:Message-Id:Date; b=NHwp3d6t3WyhImtV72XCvHk6pY0V8/lxPImNgN+n+UiS1HCAzpu9NNxsZjbuLf7CPM1CdKT8m9SuoVy3DBeebbcslfrJZbya2Zg2yLKZLeu80vEeka8efXzSuiKhDIWKPLf/K8nTzFXRoGRbr+mlwc0Q9Xg7+6fkO3rAeJCIpqw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pozRBzDu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pozRBzDu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABF08C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761574793;
	bh=wN7mlmZw8mCfuGQ/KduIVciuUjgBNw/a40WvpYLFOec=;
	h=To:Subject:From:Date:From;
	b=pozRBzDuNlFRz9ZoF2UxrOYHpF84q1cUZ7GNZRcSKm/w+mmKDASaCNadxVvrF3Wvg
	 sP4Ko0TKNxWWpmoEGOr2gZ73KDDoxYuWhwd8bdQxhsEjvilVkYTEiot9nTPx2RvUqx
	 ZE2+yJDR3X3KW9U79y7XkUnLV1haCjyQou1gb4KDLrQ2YPcqgbhB9UiCQNEzmw6v3p
	 pWcTB6FAvk6GYueFFxpVsYHzQu/mM91TY6R++EOIoA+TJNBH+w8EgpFe1mesQaJEFl
	 ocGDP3CVvG//7mFQMUgnl2lxrOFZKoIs0kOZS9oUcDsAZNxMBatn/mH7CLHUTOQXHv
	 VKt8lzySLejdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9828ECCF9EA
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176157479360.12294.12922964351401608128.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21f1bc1f9b4b99fef1db03bd8b7d980f6bb62fcd0aa3d3486428d111aad88e46
Date: Mon, 27 Oct 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761574793
