Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 154BA278E5D
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754919594; cv=none; b=YhP6OEreveZ6ha1EWQsWBC3AOT5FqjIrqWcjTqMTz1NmK2FmI4sU381yCBQjej2GYiATuVxi/bEjmK+XDumZI0dXfQhZgtVF2diT1qiy8+IyyabSFwgh1+gFmSu1gxrxF1rrFRlgUdIzyu+nbSyRPQWMFGKemTvil81VaRqqeJI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754919594; c=relaxed/simple;
	bh=L2YAHwFAY4TNzBI7v2l3EsFTJqgxRIaHwIb5S5zSazI=;
	h=To:Subject:From:Message-Id:Date; b=WWwKMLxz11I3gK4KNATx0j8Rb7z+UDG9WE+NfykhXIms4TmFbRZcNLJttS8AUp0I5LbOImZFFUjgK6IpAjNDEE3irGAZgKfbnKumIAiRoYEd6E2xUqo98TqCIAMiL3symhje5tJSlPlBRUTyyp/MXl6ocH3Uz7yapXmW8nVa+aE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Srrpsq6c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Srrpsq6c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1CDFC4CEED
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754919593;
	bh=L2YAHwFAY4TNzBI7v2l3EsFTJqgxRIaHwIb5S5zSazI=;
	h=To:Subject:From:Date:From;
	b=Srrpsq6cuivAt1zKEub5S0E1SNDlOVJczgHrX/lp94TuNjWeXLFxGw1S3Tt44Tjq7
	 OPvYMSkAwfjNMwQNmO3mDOYLkfHtrpdiAjqc6A48PmlhSHzRPHCQ5s9unU+zbjjvq7
	 g+UPjIDh7P6mlnYivgU62m05L9CNRQhBAUMLDRlXdPibujaIgfbgRdjAlIu7G3UMh2
	 hEHUjBHWbjqHldZyDBinugMyBOMzsJrXlQtXPyD2Xl6FrWvr8IUXoGz+g3lxlEpYww
	 FJhdcBzV7MZQJW+UHeHik6Yo/xmtaLj6mcZ4MyqZjUmr6Cws9g3UajvCN6B5//pN0f
	 Hx1Jy+8OBLTUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92941C87FDB
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175491959358.8671.3167858790842652374.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca565400e8bbed56b78ca6b609c6d966ddec2a7504400e264e3b5fbbe39cabab
Date: Mon, 11 Aug 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754919593
