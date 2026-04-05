Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2EBC186A
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 03:25:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775359534; cv=none; b=DG/J+ngxrzF2D89Dktsp60Qv6hW0moWuXqagvgLPiC+RXo9Zq8oAZT3GkfYpi9i7Q+kKEQ7O+T+RehQ+ZagnL95Cd7JG7ORgnC6qJ5h8ppE4DYDFPmVYDe0S0VcMfh1/Un1LWV8Fhrmw8uBuxoxMsaixA/7sFtihyun3TFUo3Jo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775359534; c=relaxed/simple;
	bh=G/inzIXBkWBMuUr/EFit/DceFfFTUEraNyzor041200=;
	h=To:Subject:From:Message-Id:Date; b=lV8fPR6BTuMfNTahZKkCmmpafKzB+hjWoqA9U3N5DbbkG0SE0VUWBKqO/VLKx9Dnpzqn9K2SbVOL67jEzX1mbECMWLC9Vp8JpjDhGYgboT4OxLWmES3J4WN2eFB3rF5DkhKvyQV/xXaO8HRB5b/Lu0E6KgmJ8LQ7FO7aInoDV4Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m97WjywU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m97WjywU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2108C19421
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 03:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775359533;
	bh=G/inzIXBkWBMuUr/EFit/DceFfFTUEraNyzor041200=;
	h=To:Subject:From:Date:From;
	b=m97WjywUn988PF9/0lViS2LOODTV6532mBqQo0MLcYJPamYl9Jv57HKYAH2v9gts8
	 9/Cjw49lAhwq1DHOVbxRfsqYgZwKbIU7rl0x70HpRmAMlVdNOkUM7FLEzgRW/phoPT
	 y/q5v3nM6epyjUToMo/bI6dkmfY2cUwEWMnExt/YMjuC14kINbCLkhFWnMvEIMJA6v
	 gzP7NBRyfjbxzwbLJA4j4BtkbYTrO5ug4AatlsdBSPoiMlMgbRRJuODv/gawXbqRjR
	 MCQvVr7+qyzwh1FtZESJXuXKToWzBhnjaGlBWLe4elzCSqMphxMa0576NuSM8Vtskp
	 hg6YJmbzMPvfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD2C6E64010
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 03:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177535953368.1809.13797879875709260048.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35bebd87d7a04ec15f5c7ad46e39ee82e26b92766b9213c695b99c78d097b873
Date: Sun, 05 Apr 2026 03:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775359533
