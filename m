Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43EC82D322F
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754915394; cv=none; b=rRbzgghNQPi5lvmBG9n5N2jKLgYzQTQAkI8QcuS8+q8dHQATnOKO1eQnO/JFhKBeDC0djaeuWCG8FNhgoDvsbH1xrqifQP5z1Z/CwJ3ldAXIp+/jf39SKFnq3jOEHhXzDyWQGbwyJXcK15Fqw6urlbfUnjhfo+RMlRQz89HU2mc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754915394; c=relaxed/simple;
	bh=HigxGlYh0t6B8lJ+ylChmExqBZZBnQ3zAVoLHJjo3dM=;
	h=To:Subject:From:Message-Id:Date; b=BGAzPyzFk2aCeosGddQqdf5tm3LXYwmUz2SdwBFwd1uZ8laH0fAKjp6JPO9bQuOz3GdI652ENdhmD8oeQceX15mj48ug20T7IsCpvFHnsfbbZznVMqrRRS6y41ZcYaGl+c9hyqsnsc4f8eEDH88crtkkAQoYGtE6mBmDnRZ+Yrw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h29QFiGy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h29QFiGy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A916EC4CEED
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754915393;
	bh=HigxGlYh0t6B8lJ+ylChmExqBZZBnQ3zAVoLHJjo3dM=;
	h=To:Subject:From:Date:From;
	b=h29QFiGy6EBzv9aYMz7XjTfuOoUqH/XMNXm8wpfbKwipkVQyJZkncWR8ne66h42Oh
	 91uU24ImfMYD7M4POiA/XihALN0F/13X5tXB1ZOPxM7BoKrGnTlK746CWeXnraltYY
	 8YvZqeq/I7wLKLINSpwXLOAgPh7LOsI7OdMpuctTKT3Xsc8yUsUtGPdEtTaLoeA2uk
	 ghGL9LuLxhRL+yNMF3afAvdEBG6AHoPQU5xAAggSC564Jz4PljVWnHjXWo5/tFATtv
	 k++cka0SAaJgd2eRfFQoJ9WBiBYc02kHmJZxWDyLrWar0Wc3q2Ov8uw5q8BrX56Vu0
	 bV8tXoXqKn/Pg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 965E7C87FD2
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175491539358.31390.9176429357747304835.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ca4bdc60834ae3695cda89914459cbba980fbcd23e7eec159d6f9eb5dd59d62
Date: Mon, 11 Aug 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754915393
