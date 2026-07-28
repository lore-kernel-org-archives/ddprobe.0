Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3284C4582D8
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 18:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785263434; cv=none; b=ZhuGni9EVUkTlwI5i1Dfhezq3lvONvgY7yayKkLXty1EmknMgtxxzKHDcIJOZw0YZJMWGGQbY8OgxhxVcC+2F6CBjgAcTaDG2gzXdtL6ACujFl79In/8P4NYfnRp5Wlrgr5vtSx4qHmOu7/H4g8L+smpTHM7yrj0XUHatVQVsXE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785263434; c=relaxed/simple;
	bh=HH3S4leKaPUT1xPpnplTDpNQfzp2ZVOvbnI7syORGIg=;
	h=To:Subject:From:Message-Id:Date; b=cRBNxbOZDA7nA9UgWoxdil7fReKeAcJrtSTMs8G8U0UfeOIwwAxRfe0xD2LLMLXI5j4O4L8qDuNMcrhkL0TVuIyeAvb2dRqbN1mdE3rwFVaqk/JiMBjbaT9WpDN3Z/SldXrZc+u4P6FO2ROifIIeTgQ8Ulcpnv+q9OHGty8rZ+w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TUxfA6Yd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TUxfA6Yd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDA06C2BCF6
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 18:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785263433;
	bh=HH3S4leKaPUT1xPpnplTDpNQfzp2ZVOvbnI7syORGIg=;
	h=To:Subject:From:Date:From;
	b=TUxfA6YdSsnCZOtAiaf2HN0BgKFyAal1e8aiDGkFwFqKxLFXYMa1wAwOAJ4s4EaLR
	 yvtCB25Ro/CUUtMYb9aFkuR3N6TyxhQHfwyUG9+no+vbsZgF+MePrDS9PZZvjyCF0/
	 wdOXmdCLYdx3DfDgT8B/khZjnhusP4rizFTSTIYzULV6lZRfrFp6y3FD1Th6ZvHn6i
	 EeEn5OoEBcziuXplchWJ41OKyNia4O2MuDzX7BTtA7VUJFzH4apVGHoWi65JoQ52PI
	 exU3BvLIzmmr75eFRSnjNGUph4QHWgSYSKWLianmPAIvhJEjdLOHO/G77dk4LsW8pT
	 LZTWHjnXJgr8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A94E8C53219
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 18:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178526343368.410.2148042790046478319.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42038ee496d990d3066f26f1e2d4769193d9e216de0a80840ce2b5b09b858777
Date: Tue, 28 Jul 2026 18:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785263433
