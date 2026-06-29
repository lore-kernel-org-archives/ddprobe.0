Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 425AB1B86C7
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 04:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782707914; cv=none; b=RDSPfPB1UjStzy6B/PuBOv2lqP0gn6gtqc0lL7y4ukF41JoZKjbVo7bryDnU8aCqb/C1nRWUe55+a6N4GbqQ6As7ABMBK1b0jtVE5fffDZZg2BcuUyzwWNiJN9EnhGINoQqd7Je/9z2zM1a9PNCjEKy6hIgkCV2UF/YyLyn0btI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782707914; c=relaxed/simple;
	bh=q2BnJjBkWCcDuA62G+HwLQuuaE68PLFaaT16itXcLxs=;
	h=To:Subject:From:Message-Id:Date; b=Af8CmArwR8bvTQ0uGM2hZdF4zydrVl7LF4bvS2dw55qBWyOEx+6VbT7DgbkeoO+q4Ia4cmbBO1kz33DM/jFCx6W9ZNo9yEeEBLrHtmtuXr7CK3/+xWhxq2zG8VFOuiSeSw1EvWyQD9+FJ7wfkdLUOTWFwooM/XTZAWdnbzDMZiE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UsxE7an6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UsxE7an6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C46CBC2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 04:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782707913;
	bh=q2BnJjBkWCcDuA62G+HwLQuuaE68PLFaaT16itXcLxs=;
	h=To:Subject:From:Date:From;
	b=UsxE7an6RS2YB3xUAyisqSOrdLGVlVw/7wxc+df8HcHTZ+540HwfbAfpbt6pxyw/I
	 Qp+vUE0Gvyln/Rh9TKNVx2LqTDC4d2IkwWsjlt+BBq6r74PGWZiI7u5+8TdDHlLaph
	 2y3lUSGeqEx8Fh/lO3kdtcUadkjlCqmEcyZWpSDHVQnSDllJxHnrLZWqdWZ4nE6v+u
	 HD4qpBqPLJiCH0XhWtmkvrbTeVzChVK5+oJEVGmtVUbLOrniAEJfwhDkgg3D1s+7QO
	 Ild1YQpFKlD/r4WIx1FLuBg0voVEyD92sDzfND9a7ih+gHHjM9W8LcK175cfImM+Y8
	 jHtyY0xSZNbSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC4F4C43458
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 04:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178270791369.27117.17024303658304227160.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5974973e2f4165f34db2960fcc651894aed8454999da3bfd6b237ecd4e7ad577
Date: Mon, 29 Jun 2026 04:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782707913
