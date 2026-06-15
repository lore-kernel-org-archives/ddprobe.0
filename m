Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33769395AF7
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 06:16:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781504194; cv=none; b=hXhCYSdwN2X/Jdnk7UC72o+B4txGivQzcNQZ6ouYB98xINSkueiqyyGsdT4Fr4CcehWOasLh0ySibiLLrb60j8uvI7SmF6504OS88EBgIY7u8FK4k0S7KjG5gLm/jrbtWmsvhVNx3PSS0XOXR9Is0oHf33M/x07zo50ETlh+t9w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781504194; c=relaxed/simple;
	bh=eKtj6Ey8iq85KoPslWVIe1wZYuVo+gZI55EIxWLNZ6g=;
	h=To:Subject:From:Message-Id:Date; b=ibBF4UEWCdp7Ac6VAxUTjKqT5PKgWJFWav55R+SRET5vCtYCB7JW1wrCxXCoOsBr5kxaKUMOIeMRGhU6q6w/eXdYq4Up7oJld5gcDa/MZ1/ww4aGf/KVPIwawAXCL62l5inoojy+8ikzawcKqI9rDYfJRkXVe1AjxLongF4fVQo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uVmvYM33; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uVmvYM33"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8997C2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 06:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781504193;
	bh=eKtj6Ey8iq85KoPslWVIe1wZYuVo+gZI55EIxWLNZ6g=;
	h=To:Subject:From:Date:From;
	b=uVmvYM33znPC4fo2QBVqQ4ZEuocustNJV+3gcVhcNo/dAK7IuIexrzfbgiyIDX82Z
	 PDC11cvLiZ+TIsnzZweLgA4ZBmjkrYbS+NJxQ8OQwT4KkIMleSMTZqmiBaYnPVf2Rn
	 H64oooWPQuno3K/RLbZHvr5Uk/d/JkoSY+WjnceMjcHv4dWT3195n4pmJkB3F04sJl
	 jXaPwE/ml3OvN6fO2b65+EU8ezgPGCfhIhMusPC1wNxHTEHcmHY2Raoj0sN7HEZ/iP
	 rmZ0ZdfacbQry8qxh6lqpcLR6JqJYsrNugSTXLVv942FIqrE4LNJtw8gIDQG0IbvcT
	 yonKOjOhDIjNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEB8ACD98C5
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 06:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178150419370.31507.3090536759154429267.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7cf7747fc2a02368365e5c690e2ab76aba0e4c80374ca79dd5c83178784d0086
Date: Mon, 15 Jun 2026 06:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781504193
