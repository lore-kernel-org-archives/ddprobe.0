Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23D2733CEBF
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 12:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770120234; cv=none; b=IarMu+k1arC499GHCC0HRLspQyZEs/bmhpV/BOnqTDgGWYgwF43GjnFS5W5oRXViQ33ur9wN04SlNeG8NJJNRG5cZRAll+MsPHyrCP0e71v+k1S5fgYPjHPEHl17Wn+q42kDGkhzx4fxbMyxu5aBI5t0YP3gfzLUoMaFqkMyVpY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770120234; c=relaxed/simple;
	bh=RVSA2NQiIev2gaymRM2Ewrmeda06k7yYJeVQF05u85A=;
	h=To:Subject:From:Message-Id:Date; b=A7Ud62D3Y2C3Obapg6RvVZVEELmSf6t2UftUrSjvzpqReuE3L2qzGm6+0mNYhFLd4NWRQ5lbWkE8dPzOuZ9VUdr83rd6j8WGWHXmaolbjP65+4IGSA0GVU/KsIWikjx8vD5r11VKw1HUpAUAq2QcQhFLBd/7sAK0LkbF3goWReQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hbtPk/Xa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hbtPk/Xa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B78B3C116D0
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 12:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770120233;
	bh=RVSA2NQiIev2gaymRM2Ewrmeda06k7yYJeVQF05u85A=;
	h=To:Subject:From:Date:From;
	b=hbtPk/XaD0J+tpGGfJCnxrQtQTwIc/OlfBlMxoUhepTb93itSvoGMIrW/r+5czwac
	 64ZgB3uTvv1u6JXAtIe6gVoFrZjd9I8M7TUJgh0npv7pw2OZcxMQ4gvN36rXEQHns8
	 iy56XWWwCiv4vPhE9OOhtg2L+FkCKnpiGAPJbDk35VuBN6/nGV6r1MS2GWVl83BlN/
	 yqjcgF+mvJ7ZEXFSPxCfgs+I0j8J9KZa1+FJAjJ+DZeJ146uaLJvpZx55AiWvfGBv/
	 9LQCPIJqf57DnluYDjzXhkeJX5GFqmqDtJ/2Pnf0++UvMKoWWQK+bEnwX+7R88qAHj
	 tr0XyDFCr/Fig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D1D6E7FDD6
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 12:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177012023362.11619.9299487139254141391.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b196d9869a304569b21a546e21c6d68a00b519b2889d4114cdf862ddc234ce4
Date: Tue, 03 Feb 2026 12:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770120233
