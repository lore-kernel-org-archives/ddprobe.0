Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A4E3E3624DE
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 08:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785571234; cv=none; b=m34YbGWIsLFZP/VtSh+0ajQIVMLJaK93MFhkEpeVB1Lg4p5s1SojF2u/WXKVTEL+YPrChxGOjEVHA/4aPtE8X5ds/SZn8e2QIkb961jXfi1CqdEswgaS/iVcAibSXdNGBLDmmcxVGfYriQcAoST5+X8IvU6H6F9e5cpoc13uSxk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785571234; c=relaxed/simple;
	bh=F1uXYjBdrSLrwcfmdO8QkITv/esqu7xFaNU+kpt5cns=;
	h=To:Subject:From:Message-Id:Date; b=BoAbS0TsAwUGHFQu4xh9ArxVxhe95BJF1sJiT6ebkGXy6q0FlGyHYheHkxX0r+/kIjcvOsB7zN4wYpFQiEHk9pscTD5Aei4prjfy43dO/8V9byMB9xPMjc4q/Ukpd/TSEzTXXv0S/Fk8lRiPzUUzTms8iW9h8b91lerbcLVbWAw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hjtjSL4l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hjtjSL4l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1E34C2BCF6
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 08:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785571233;
	bh=F1uXYjBdrSLrwcfmdO8QkITv/esqu7xFaNU+kpt5cns=;
	h=To:Subject:From:Date:From;
	b=hjtjSL4liDQ6nRu+4FcYCOgk/bafhkiGa7+uI/YfABOh73pk4QSARNFqyIY04vMEx
	 xM8X911MuTAma2b+upvEHibdB2wCaScYkh3i6cXRILrgH+DjGMw/jFQRJ2Kd1f7aKY
	 TbDGuXW9BSHrQ9MwDpAyT5Qw9w21yBMwu9wiu+53BWe6oJWo0E1dCWxTq/5SI0DcH1
	 5pnWeC2bD8mhuAtMrXDlCyqkiWd53li454BvFnusFhS8Plx4IVK9k/PIeF+lFnELvG
	 g60XWZ8etWOiFDjYatUrsLghf8n218nhnjp6eyS37QDgvHr5FHFttiP52Z6DeSPO2+
	 /HKXOGS/BecAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0DBCC5516F
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 08:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178557123369.14721.1931012914254709582.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf97f2c87bbc4946d97858153faf779b8eda1e5d345d99df46bf0b171a1a4a6d
Date: Sat, 01 Aug 2026 08:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785571233
