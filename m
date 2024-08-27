Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23BAC9450
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 05:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724736354; cv=none; b=m57JvwQsmzJDz9OJSasYMtFGjWKhAjTW+GQLQNwpPMNP0F1xzLkQDimQ3ioGpnKpfpLuJGy4Z+0WdyXesGFa3zHXHHikdLfkArpM5UneeJvINrzO2HfUCYi+fN7l12O5JwXyIjdBmj4NbRjr2wmdbDwrNe/2WiHs9ZC2bPx/2mA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724736354; c=relaxed/simple;
	bh=J2sqFpcxeNxUlQhr5oL4mUZJTTCNo/9120/aazZyOGw=;
	h=To:Subject:From:Message-Id:Date; b=Vh400PX0h6PikXEvSVMKYFxZvFXYrmrak6fvwZrgGr7iwjHRu+UvTd5BSZpZ3hYeHNJYJEyKr26uNAVvHPqq3rXBcspq72yD7wJa1gVGn44yyoYf29sJ3kJw66UE4fcyXoVmjJAK1U6uPlSxHZQVXBeRamETTWgLDs2zIXClFo4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CWOayDvw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CWOayDvw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A919BC8B7A1
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 05:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724736353;
	bh=J2sqFpcxeNxUlQhr5oL4mUZJTTCNo/9120/aazZyOGw=;
	h=To:Subject:From:Date:From;
	b=CWOayDvwxjmmKEU1quE3A1FFmG+Ou/xLG8JYi1A5pL2qYkKWPSIYG5mns+gvqq5+U
	 mtUHDTARkBNO/3EM5udzwen66hGhuKQrdSNyo/ld8IoQ3tzXCM4+oO3VpCqY2juGo8
	 OzXdmfqFRS4XnMAELc+WDbAu6PYSiUac6j+76RlcbEVM/LpbTS6JlBth2L0nW+mCOx
	 nyHw7xuaPHvZ/HdM4tJ8Q+69/LbVH2Y+wqksmlByz7tlqNfpYAaHrKMBPZCP2ugbTT
	 FkO5Q2YOva7jnSJtdKnCu0RV3bOi/lsnbRx+1//cgb0mdRVLWTcQU81p7/3NZ6zjHm
	 d3asaAPpu+SWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93C6FC5320E
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 05:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172473635359.23590.10020081342501374084.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db2695d503f6c84ebab04a0a3af5fddddd9afc21e13ba19a2feaceefb9ce111e
Date: Tue, 27 Aug 2024 05:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724736353
