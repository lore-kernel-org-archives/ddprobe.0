Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D6D88635D
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750234194; cv=none; b=BusmB3nlHjYBLN+vRbUaStuwzs8bVKBLq985o1FyPCeGDINROOnQgvnPK2UBC0qVBaBOvOJ1R7kmMUZl+tP86nGVlt8rqf+MFyZ+lyH+BgRmgKiV/U3iYWNYTUtUY8Ki2D6CDUDzxCi5dHp/e9qlIK/OvhVJhIyjlPsGM77Sp68=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750234194; c=relaxed/simple;
	bh=D0/OAlJQK1hR0S/is5R/fbhmN30+e2FJIv3eg/bpy8k=;
	h=To:Subject:From:Message-Id:Date; b=CzjUxZdJAwnT3tARgBDrJL5ij3XG97xSqVQ8nx8JrioI9XjLLyl7jzjFaJQAMT9POhHBXGmQpDazHCkHw5QQaeslD4XJQRtaCVFehAgPJHR/iUKH1x1sJN5YbeGNZLUshNIVhY0pWU4Kdr+gpwz9f/YRm1XJd+4KB0qk4mYGWhc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OrLgxQMs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OrLgxQMs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8292C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750234193;
	bh=D0/OAlJQK1hR0S/is5R/fbhmN30+e2FJIv3eg/bpy8k=;
	h=To:Subject:From:Date:From;
	b=OrLgxQMsBEmmdDEv7O0/NN2dwBc8CKRdMkef0nz84uP5Z2Z433j2IA4ax5xKTNHrc
	 Oa2wXR5Pmtuu3bcOknqk3KhEKy4+Vry/ZMJzM3pAtTqhKHoUYKUIq4ntfIKYLwtVz0
	 8ltXyvwiYoURBq/pZ3PByC+XIVoKb/rF6vpL+G5am7QeM4g46qZp3jxQl/wCs7eHbr
	 LJ9FTK6akHU2MJ9zTY6uXm8XXtoICX1jqpT8sPhVFFcPp6oEDadTBvUb5DflDdBVIx
	 i4XNsLfhjS8WwgNf4kHtJCMsSf4WPZ3+OpoONFsiSra6/8khvfLGmFeeiY4n50Knke
	 nJ4HDa5UN1afw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F461C71157
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175023419357.31768.11073424677494994202.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6873d4b45f7407028643e54efd1383817cca1819593beb7ce4c00d0d158918c0
Date: Wed, 18 Jun 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750234193
