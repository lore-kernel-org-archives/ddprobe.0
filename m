Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6227979F2
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 03:57:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717905443; cv=none; b=WfUrZ1KT8B6b2TozIkdxyfzzOaPKkbqh3OBN6ZFO53J+nmpgxGfZaLCtoEGf1bNPPmALatj+2L7ekyjRRhUSgTq3YQ4ySee2ihoxWmctTedl4eVRXvcLKjrapX4e6PwvsZewp4FsS2OkB1M1NyKUnU93z73O1TCPt7gd6DQf6WU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717905443; c=relaxed/simple;
	bh=hj2f5x4FQp5GQA1Ip+r8Etm1w5OjuUL10hG42gARizM=;
	h=To:Subject:From:Message-Id:Date; b=TTYDwmepOyCDXNOJe/NF//rbAlORgB+OF3cUNMbBgfnik55MNfNaRcaOHndsHPzn75AEyQa+X7vqHqL1Lvvu/vkVPT0nuapnZNUFAx1AsxogWMrkjDwiAAR2E/9FTS/IHdvM/UTEJoR4hNGZR2BAKVcz2b6FHXu1sSGu4x94Xjk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VGyPX1+M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VGyPX1+M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4466C2BD10
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 03:57:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717905442;
	bh=hj2f5x4FQp5GQA1Ip+r8Etm1w5OjuUL10hG42gARizM=;
	h=To:Subject:From:Date:From;
	b=VGyPX1+Mwb40a1Civg2rQkRRxwH2QL+pgske7++7Xt7PTo0dgjQ9n3Vbctyfp+cRl
	 CDMcWjS46FBu7pe086780HYZWYFf7SdddbtM+fWXT6E3xWbR6WHI2RzUsGysX5JGBo
	 5lm4qJdx5Lt57/QGykffntJl/+VJ+aO1jKdHWj3jGcA2HwjDGuNuV5c1zYKuUqfq8Y
	 fcjz4V6ECfdM4PW/D8JCDnQYDu9ZRlyGlMZH5LR44ONl8KvXDM/8eQg3Yb9kiudzYP
	 IqEob0tv1Hor/mZx3AMmgdZf4RSTQzO1wtsv5w2Z3YRVljMFc4OJlainTPv7s25in7
	 1gSVwmgRGvW1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D4728C27C53
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 03:57:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171790544282.22442.9902476408163694313.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 510487cbec87b476bc0f214ca980c6e857824dc0abe0bcaf92cba4497b6fdb11
Date: Sun, 09 Jun 2024 03:57:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717905442
