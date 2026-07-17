Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC4942DCF57
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 07:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784274514; cv=none; b=lXWSlFvstxivkput9ZywmMW6KHsT5hHjbnN5OlDlijlyPdk0R7VxrUxOTVwkYqqKL39UqNc/rIPPAIvIEeqbrVaLdG1Rz1ZaI22uEJShdzEew6lHGC+jwTw/pOg1HIv+yzmVNFU9HE5qVaKxuREO1qj9e3yp4GpuyK2KEwLuTpI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784274514; c=relaxed/simple;
	bh=Tg+aOXom0udMxi36i2qfydDMaToOdoAM9pJAsWc/SVk=;
	h=To:Subject:From:Message-Id:Date; b=B70jRhk8MtSxwSjFW4HsKJZSDPXBbK4XR7Aw4un3N4jrhZwQKR7HD5xwgfjt4EeQ7az6hk0wSILgz4/v7DvlmzgDD2OzbrYhrJHT0SGa5WGxf5MxLJte7PbpYJu4OjYhQiZs8n96cbzrmmqJZq4Q05qv4Eke4ds6+3w2+wvj6jA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iQHgsU8P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iQHgsU8P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5225C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 07:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784274513;
	bh=Tg+aOXom0udMxi36i2qfydDMaToOdoAM9pJAsWc/SVk=;
	h=To:Subject:From:Date:From;
	b=iQHgsU8Pn23phRusq8FNDc5lI/Mlesqts8AXLj0k486r+UZwEUOVAUhl8BY5rqgD0
	 6mDtscfReJep257P8CEp+8S5E5lXpeVZmRvP9YG5baU5F679TWx8d8udPqGAoerbd8
	 +DCWkTttfLQrGUyZwMoFRKgqEa9xOFDfQZtGc2LgNW/DcFhp5Se+hZl0EcAqfzrBFC
	 LrK6ux6Q7zgyk9UtG2xat06eztoKUsQQc+TZuwkdBPWgq9OEGHvsTI8I03AY4vPv/p
	 tz808SsghgCygTyjw6iNJYUxCRyX7OCENEFuZfPy9vTt5YN95G9sYiDKNCCT1eUFWd
	 LPVzMvaZR8RLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3449C44515
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 07:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178427451372.22416.9972012798380464652.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f8c576f740fa88aa1c6eda80b53d8db3ec3f8692b2f655d9e2c8581723f719d
Date: Fri, 17 Jul 2026 07:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784274513
