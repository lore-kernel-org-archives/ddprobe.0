Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F28CC35DA69
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 04:35:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775104534; cv=none; b=Kg4ZEGTjbsXvXCVicLL+2SM8vvnpJr9QhH4UHUdydGKU80nF+ruzU4RH/7cTiYBqGKy8cksTX80ppiKEJlisCDRVLZwfI59oi3hL8KPbavjW1VwPPn9mSuhtT1UQhoD3jOXidFFMdLerG7DVryTSlWDuBJ6yAF+6lP6oS4wU+Dw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775104534; c=relaxed/simple;
	bh=fUxOaLlmPz9lV12mR8FyKCf4kxRzejIqazBuGTjSWT8=;
	h=To:Subject:From:Message-Id:Date; b=ex+nSYrNewCtJe1pMQ0lOkMvgoqUFy2uL7uJ1moiMETdliYtVkhTAC/ywRKn31UZK/gKbpfUyHccd/u30xQ68qgejvm8ELSEcJCM1FD9NnSRSrva0JO3riENMWvwjuUDj+7HpMlBuGpsS/hQCyVSlYzin1b+Z8jP103ZTWCqKcI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PSjgRi6Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PSjgRi6Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0BE1C19423
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 04:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775104533;
	bh=fUxOaLlmPz9lV12mR8FyKCf4kxRzejIqazBuGTjSWT8=;
	h=To:Subject:From:Date:From;
	b=PSjgRi6Yu5WdT6BTmmm6LinZwoRY4r37R6hd5ehqNyNcTotL7C2DC/plEeG3oLVI1
	 DzAb5imT9rDnjIjKAAK84Beasq/xadglJCNGCmdC0prA0dkasZCtqyziiSRThhwaRC
	 p1v7X7CHbiFZKRZY/w0pBRjIUvgpBAWDa1Q4sR10taP+SiraxwmJ5zDMVbMR6bqEvt
	 AhuTvBHd0p5+gkW2jT4pm+dA0j6F2c+cshsrAZLtm12VumwuuT2sE10Q21jets7Jwf
	 SQhZhr77AEqWz/NIhwDhWspPe3fsvOMd/v78dyJ0eE0S3hO1UNkdDI4Z/tvNYkQQs6
	 uu8jtjQxD9hGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB412CC6B00
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 04:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177510453369.11313.3477978374680528643.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cdf197bb939a8a0602ab0cd5a3bd0d00ce0ad74f6819ea8bd04162adbcf46d22
Date: Thu, 02 Apr 2026 04:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775104533
