Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 277672F1FF1
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751001594; cv=none; b=vDJ/wmEHp649KrUOkkDRNCzPMsAoPOD1lpMqJORm3lSlGWqvA/hI9k2CqX1hyKiZVLsYQRQqdzbdsvd25m3xbe/fQmuVFmXKjkRIJvsj87jDkJ4YSySQY/6vduNHatXy/xzwN4gr9crpNwpxOJGvJiop9CtshPI8dzP24rYwspE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751001594; c=relaxed/simple;
	bh=8/zWCdZO82FnajX1zOQkhBUar+2SeRveewP/q3KLg9E=;
	h=To:Subject:From:Message-Id:Date; b=DNP6AnXq8SAQbjwkaJK2yeSX36Vt5pDxBScQ0LugN0Aq7Wcx0Ij8TwC+DS/C7jMr2tMSz//5nsyCd+UN3Y0QIpLgbcQAtVQtNmQZ+UYpXBs988x97Mlcdr5ryQwtkzeZ/xiP4fIYCXXjvQufcYiO8JRXSanUKgJfW4mKgftG80A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UlBw1znc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UlBw1znc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A22AEC4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751001593;
	bh=8/zWCdZO82FnajX1zOQkhBUar+2SeRveewP/q3KLg9E=;
	h=To:Subject:From:Date:From;
	b=UlBw1zncWRMT5uFHDpQAvoZPu7Z0a0OHnya6GLq35Zww8ryUCNXkuZf0FqXGvjcit
	 PCL8arPlV84y24q3Jr5BYDQNWKcyVkIbHmbxOTRfwJZh16uIdibdiPANvCafx06f4O
	 4aSYigIYYO9PhpP6DKkyn/Dr6cGmcG4MY0RovLqSySXA34YRJkA9hNndHvTJYQFIFY
	 RbP2ttVy+5AAkOkt3F0CZLyWj5dZcQGuaZqcvjRuhHIAuJWEIUTj99nbEgFq0Jbon7
	 YELFuCtkKG0v4lN/ljZz+cAiZdtiAFh+oBFunjjA9WhM8hv1Yyjypyk20vCB0nPZMl
	 6eJr3uxM/xkjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F116C7EE2A
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175100159357.10885.15346725142846329861.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29e2416d301c64ac7a8bf522cb179655c64b0ceac936334ceee9206957050d8a
Date: Fri, 27 Jun 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751001593
