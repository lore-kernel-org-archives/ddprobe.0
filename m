Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2372C221F2F
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 06:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777704454; cv=none; b=Ur3kNtLcuBXkDEAaQhmxSSnKkFQX3gcloi2n+HLyItyNqzj9VZ8bhIEPC6rzgq9eZC1pbmdfCnDaZZw0jSTgdRB7Mk+UECEbna9ElDKzCV7skzgYDbV8OagokUg71oVteuw6GAy9D25htFSI4XDgsXGRXTrMlAepf+pzv6p3srY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777704454; c=relaxed/simple;
	bh=D7OMH8KRVo6d6vP0/AY7+8slt5nvGeTgRM6kf+dI14g=;
	h=To:Subject:From:Message-Id:Date; b=l0lYNHZiDkG01Lxb0ENBP2G3fiV7m3bL3AvsGx4y2eXl/kKX6HoxoT0/Wa4MID6/TpEhz2hSgJDGnMnLNUDmqdiWI3K/CMRa8Yqw+y6uvBpKnSbvr5afIp6qUbmGs3GvO5gVzGmOYu4RBVM64IwJb+m8q2TShK6FsfOmcOsNPHA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=glgfym9R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="glgfym9R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE007C19425
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 06:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777704453;
	bh=D7OMH8KRVo6d6vP0/AY7+8slt5nvGeTgRM6kf+dI14g=;
	h=To:Subject:From:Date:From;
	b=glgfym9R4PxsBDbBKivjK+SEjcVun1asgBUFSgMM9TbkkO9zol+eLO6nKP5zzdNv+
	 6XbsCDt8Fbk0A2F7nTosTeKcEM/bPbyY23ToDlsQvKAfVrd1/DdYmmSQv9DSAk9EJ0
	 hV0yFG0ENF2Zufi3hiWU1k7wfBwsIvKhSn8grynJ8pvyrxcHmGyD3MxS+Q95w+PE/j
	 HnxNHz8bLPyoI/rpnJ3/yJ+P4taHKP7jDSl+nOLiKgH3la8zg52D3rpg4zyZ/hGLwp
	 Q5ZcWTOmKVN4+bDQZzyZLLLR8HMKmjGhg+TYWvXHbQNJO8usDetESFJ5J9iha+q7S2
	 ZRQhAJXeO2Cbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD562CD13DA
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 06:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177770445368.5918.9947810858500911343.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40a3d9edd9971b02b7d5ea45cc8b87fadedbf0317504deb6c4404aad40194a93
Date: Sat, 02 May 2026 06:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777704453
