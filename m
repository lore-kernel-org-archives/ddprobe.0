Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B31B46C4AF
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 18:00:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787767236; cv=none; b=cnswoqAukXmYmBzRmTC2MXDagJu3PQxwHQEWddmHRFYHtlBHyyJxyGeWXtAWaquaDe+xSgggZlv1XKLodD7jq4qCmFTTHTuqLa+vfhyh0c57UiTVZu27Fl3RaieCBn9W8h7Z0q36cSX5Pchp/zKLbVw3G/QdjKX0CQw+N3Ty+E4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787767236; c=relaxed/simple;
	bh=tAeQthypS+T+iS7ySwJX0SFMpRoELKyOwv2ktxQ1/yo=;
	h=To:Subject:From:Message-Id:Date; b=sRXNTfsUfbQl1ApVzUmvp74cG6jJJVhNBjD8irk+v57amUCP4Q6fID7cmQFkq6zhfRju01uqwvoRHosl4Z7QK3tdOx4GJni8/BEQ4WeYaZxJB4GUsSOyU2ITBUeJMBwmvndL1Zq7ZHUWf5/DmeKDe4q15xrXc/WMdty8xcfIoGw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Glt7o1Xv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Glt7o1Xv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D38FCC2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 18:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787767233;
	bh=tAeQthypS+T+iS7ySwJX0SFMpRoELKyOwv2ktxQ1/yo=;
	h=To:Subject:From:Date:From;
	b=Glt7o1XvzZsE2QVVaxVEGYhWNfoCbta9Bv+Zg/7Ahzjo02PotJm2sD17N3RCYjpoX
	 ztQHo++eUP7XRVxk5C0oJXCkp59bFu4PtXarPXW/JSLJwLp0O++rKRubG5Gp1cxaCy
	 PBglxuPXPQCsOhJk5SjmGEH9gczMsj03r5M/ZhIEJWXvjTD2rLE247KeqB2HCb7og0
	 A8Pqm9vF1CJoQdieiBs/BzSe0F/3hu5uTD6IRgk+6snxqkGNoWH6iSpBqVY8Q8hot0
	 +e16BnZNQJ5Ge52Tm+CZpYs8xiAGfXpqFUvpIQSDrVTybw4dC+dgR9y670e5C669B7
	 nxvBc2+TlxJ4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B19E5C5DF97
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 18:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178776723370.12625.17438973235540293842.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c8fa5b5d4899494d73e23854bad9a0b0a54f9ae663a793ccfb779eecfc0f8eb
Date: Wed, 26 Aug 2026 18:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787767233
