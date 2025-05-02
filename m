Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E8BE244686
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746185395; cv=none; b=WxJGc2yzWvWEleG6zmAwBg/8+yb3EOU3s1o2A//HKwbFMto9fSxzARLYqsrsG7ojXhDxKaVMdaEzgFDN77l8jAsRZr9socHtZAQ49hDtYoqT7yhy28S577O0qTOJ42ZPunIZsicj1E4NIdO9ChBazILddDd1Q4xGK/jC78y7KVQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746185395; c=relaxed/simple;
	bh=xJR+/53IjS4xJXRnFh+JdT9XVBevSj384YMy9ltUm5U=;
	h=To:Subject:From:Message-Id:Date; b=m8VliMnHNlPWZJUx0Q99Mts0LL5T2e29Yxqi5jJX3vkYHqziLN9FGwNiF65u5NMNP/465ejqIruekW/6oIXqvX2oclQEfuUbHybRU4M7HDVXlpeYM6eiyMxwTaLUIcK3bRn+94nbN/PKazv9HMLKhKfy0OASqqQFwjqSBVyo4s0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oUf9PdF9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oUf9PdF9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0264C4CEE4
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746185393;
	bh=xJR+/53IjS4xJXRnFh+JdT9XVBevSj384YMy9ltUm5U=;
	h=To:Subject:From:Date:From;
	b=oUf9PdF9X4dvprsi6wsZa9joNzEydktPj69gShSZrxmdPfgMUCt2W7ufP0l+g2cNM
	 5rd5m88m1WUIgiy/Z3CyUMuUsoCvZ+JI9JndZ5hsqnHltwItoiNefREeOvIIr5A+I+
	 FnKbAX0OagK8MEP1lDFqypvtAbN7AfLCk6yrJoZWKdkYlsCebWm52726LCXatiWqJL
	 vqH3bZ6ZK3SNZnglXx3L86nJfZ25V9agiZekAc27kk/vsu/MCkYiDvwoB8KkzdCVOG
	 0dJhUtCYjiqSXeezbQ1g1ApcEn4x9WzZsINIv7AYCH7fY+P9g8Pm5vHbjwzrvxnWag
	 gQpXOamBsuBfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5B1C3ABAD
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174618539357.18263.14460236809817343318.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5af93bbfa37d172d555f6034a2d17b2caf5b2da2a5cc8a373db6b46eca589829
Date: Fri, 02 May 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746185393
