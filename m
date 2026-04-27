Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 029FE2652AF
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 20:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777322254; cv=none; b=Vn8EwBclyOBklwpWoRHv8AamgSIcSj36Q1UnnXl8UhHHgQwjeL0KeSEaAi6Kb7LZA5cGgGhPJP4NREa+e/ffgNnG7PXCukMs5LXeiefzQ/E8ZAmBAiwBVjsvCg+vfFum4QYSyCG2a1E98CIwM09eJGCK3mTbfwUkCw0UOvwVhdM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777322254; c=relaxed/simple;
	bh=2SEhHFhvoupBL0cg0i7u/VwTyYqmF/8znXTkzKe4+FU=;
	h=To:Subject:From:Message-Id:Date; b=aBjRuw61RA8wv795T1pftAsl8/PoiCrY2rM31+mOaxlBF4Ywj2G+hastiSBuitYLxxU5nmScuLWV1VfE0rrczDhiRn9N8AarvkEamHcSnxm5XTgYY/2Lh9KrPD3xCf2ccE4DRf2QwGK0VQGR2TdslIPsT48B6ztUzs/0Cs/ln20=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PY3w0Za2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PY3w0Za2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7746C19425
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 20:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777322253;
	bh=2SEhHFhvoupBL0cg0i7u/VwTyYqmF/8znXTkzKe4+FU=;
	h=To:Subject:From:Date:From;
	b=PY3w0Za2kDtmRbKB7m5N5oRqx4bzOslEyf65TuanoA+zSJ0a1xqrLe5z+FZGeMLSf
	 GCLgnsghEr//r7BIVLDqXng8Ibi8RnubZStV7ZMTLzlXFKkYrT5j12TZty+Iu/Uwhy
	 HAefXVNjkhFjGVODAgaPqmYJ0LbW6LCNud4ydpaerCKMTPIbUV745Ja+sGdrPYbb2s
	 bOa9Sn18sknlIDI5gcWmsgVWx6wJJ1HAx4Y8yL3Vb1gXqFRpKACkbxacKhVDMG1Ihj
	 5h/FX83qj9MtDYZJVgwU9IwVcLdJKl0aHEhleXfsLTkbnxGi40wAEGOFOZeI0zBzRZ
	 Ckdqi3VuG39XQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9189FF8867
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 20:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177732225368.28271.9210058998578504696.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66e81c48ae58ce8ac8a3ab7ec0610ae65da82e68da946fd4a397259593dbe57f
Date: Mon, 27 Apr 2026 20:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777322253
