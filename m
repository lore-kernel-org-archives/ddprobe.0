Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 375E81BC9E2
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743007195; cv=none; b=Pan7AzwnH2lCrO8aVE98OjRlpBKztlCu2Iqnj3yz6s33/FO2WctZSaftFoOexjkUsreEQ/e+juDDQ9+6NjyrqwilOkv/c7dUumcKv8jJjwsNJ9mY+hnEwiydH+GC1Jr/PEVKoCGQDlqjkdHe9mW4agY1Dh/X5ka7W/Fvhey8EUQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743007195; c=relaxed/simple;
	bh=kCR7GzP4UgNTRY+KXeK9EzPESU/nHD8ujyy4CZLPMDs=;
	h=To:Subject:From:Message-Id:Date; b=YlSwSBtVxFXHh21YZ9lbitigKtrUcOSTjknUK5OR8CErl2UpvS8gjCvrPPAe01H5ezKOsW0wwYGjWOupimjnFXYTHrXu6qBaicNDuP80gBYmFSStl3RiPO8SCf+TtJKFRjQH/jwjHXHYKMjLfk9v1mjG/i4PgQr0cFm1aY5eSfQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o78qdcvl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o78qdcvl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF356C4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743007193;
	bh=kCR7GzP4UgNTRY+KXeK9EzPESU/nHD8ujyy4CZLPMDs=;
	h=To:Subject:From:Date:From;
	b=o78qdcvlCedjAshCz8iqZeimwFybKnszQufPxjmHHgsCktgPuSZudUqGCvvYzhyYy
	 A529b5UpYSpEbjSv7L+63wK+3wY79Zce7TBJgiukgJf8vtFhl1m2xTE8LGZCgllLUc
	 tFiSgTI1sNkYgVl5LjANaUOwKIhVBlwBIP6JVOJl6oAW+dI1LxpKOMXdwTEsw5qEvZ
	 Rv6+8r79jEcwZQihOxx6HVTkSe6AtiRiYQK+JXKomtMv0mxrK/Br/vVUytWH1LLX8/
	 x/XKJdEj/FUlgDe+ENPSlwhj31I4Dm3Xq+SnkoW0D4PW44ncX8v/xXtj+hRJ0Pvl8R
	 hybYME03dzV0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F5B5C36008
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174300719361.21620.597778800649189110.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 595cf352fad6f425be4c47befa8a1dda44b5e15da820c3d471bbfdc61289db7f
Date: Wed, 26 Mar 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743007193
