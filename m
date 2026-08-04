Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D3F82D1911
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 05:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785821434; cv=none; b=hGso3fG2eZb2kYQW2ZiGvqPOuxlGxmTKlkbLOSfd9Or50qWOxj2wunmwZc1i2jmPm9PDLOT3iljO2ixoBy3eoJU8Ab61eb9qhLATJn3JGncJ4A7CsJaJG2bQezSjUsSqtoQrNOwjTl1PRG+N8zjBN7/RiMB7bk75V4Tp2/yU4I4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785821434; c=relaxed/simple;
	bh=jsnRADMY9XfqpdNsKkEs6LmrLWWTClescQjeOaXYsMU=;
	h=To:Subject:From:Message-Id:Date; b=gqhVeVKKiTKNXqKy1plJ0v4rc3vni3WEpR0jurMJNA53aHXIi7GdASn8HryTrF0LV1HqN5ncz6bwp0MsA/XcQeQa3JiSX+UZu1NAA9mIMfftquGZrsZpcJGR/yt22RA+VTg7EjQNmmV4vA4lmh+OyQSvFZD3yF3luVVHXI7gDLA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=INeIPkrQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="INeIPkrQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCF7BC2BCF5
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 05:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785821433;
	bh=jsnRADMY9XfqpdNsKkEs6LmrLWWTClescQjeOaXYsMU=;
	h=To:Subject:From:Date:From;
	b=INeIPkrQkQDn7L6RLeHBdM9WH8BjvFBfPqlKY1ZNjcpsRxkNttbhXp92fL/+R9OT7
	 Ha/7dJ4+LVI7TqLdixlvlIsAfXyjZt3sLKPzWicNfi3smvQ4gT3D+gLY57BB7Ty0DF
	 uvvdDTYYJQBdJ9SqvU2n1Kb6dIqhkROSb4+D2bm+/8OINKHGScktRMKhTNHLvhSdOK
	 EqCC/4nLqTPMeQfhDQN9sggnU4ZUcVshPEaGIqjVkMyWy6YLoFwkHXQLCrHtSqWEMg
	 rSy9jmJ6+gSRwSBOWc3+qxnnEeDTzALnmcTEMCvE4rcx/YeV3q6DFaICjQLrDzg/hz
	 jj/ezt2BUmmlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B26DCC55822
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 05:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178582143369.24068.7704501685723451160.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7585bc71ecbe4032b62b665f98e7d3e80974e1d07f2a4d9887f8ad2a2e48969a
Date: Tue, 04 Aug 2026 05:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785821433
