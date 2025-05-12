Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 577A92951A6
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747055994; cv=none; b=EO0t593gcH0JQ0KX4rsQ00LCoq6KlqSAO/2c/8BVMield6uzjC7YCwjjQhfU6z5tBvpBAJZjU/tFnio0dqOXjXsZPIrSAEBicgMPAcgSiOgq5LMmLwFtzFB9edRJhR/Akrj+K4ce0EZDi78oFW8nze2lOA8OPyIWQ5EfDveLEzc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747055994; c=relaxed/simple;
	bh=KCAD6eXYp5v1HxRRMde9bi+FSqvVlQDRQvnq1Z4nZSI=;
	h=To:Subject:From:Message-Id:Date; b=Oarkoj/i5yKlSLL1/sbH9lOfnAfPa3ptShDnIXA9xCjykHAxKM+P/fz2maYK6EDa5DyPaV3rglMRQaA+QmOk9LC44JxyEPvgFfP4xsuHsbLGn7oIqUm4QKpJ8GOtDJIHFuF5dtgKBaW4wXQ6HNdjqyrY7HMS0gJSHPgBLhhzAqU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LX79Wt1w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LX79Wt1w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1661C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747055993;
	bh=KCAD6eXYp5v1HxRRMde9bi+FSqvVlQDRQvnq1Z4nZSI=;
	h=To:Subject:From:Date:From;
	b=LX79Wt1wc5UABJQL6TPSLxqK2v4IFDK+eDrRGgH1x5C4E4KBOm2K0e3jVKzykyBMO
	 SkAHfTy61YOvx6O+/bozE0w2s2kqshDUEpyqk/DxmbMwLKfTczXe1dzG9k3uPNwkwJ
	 fQyPL0Ume9cB1epJH2jG5L/w8O5YennQ6bLj1EYtNj8x8Qg7LVkvPu5oJ9YV9/AnM4
	 Kg0zyIQ/UHKFmYve+yKw5oR4fUZdxHjL587DsFIi/5K7M5JLxxhFRt3upXfcoZsuDj
	 DJvbwKnNLSzqmQ9PpsYtTZwAI6s1J8i26gCigUrE/U2z5TLcOM1VhJNu6OoUJ/F8gr
	 FxH/cMYfDLyyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A37FC3ABC3
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174705599362.18582.14427036951884383328.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af45934ecab76e528e407777c68bedf560ae66d63ed33cfcfc5c0eed2cded8a6
Date: Mon, 12 May 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747055993
