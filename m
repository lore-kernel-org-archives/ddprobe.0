Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BF9B6ABB
	for <ddprobe@lists.linux.dev>; Wed, 24 Jan 2024 07:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706081297; cv=none; b=YF6lIXEOgNhb5umCrYafaIVRc7jwVf60G1T8jtXMLxfnOzdAYGc/hWY1WoDPDzfZExHk6li0Vow/hH63YVbQv52UL6GG4a2jhTLOxl+VMcUnzhz68TssLjjbUdD5QTIGWmVgw5+d+PWLoSLhKUcj9j9YAMkct9pn1nJv9aNN++o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706081297; c=relaxed/simple;
	bh=SAi9NJMavP5WQy8UsVfWgUfIWgMSLAas4iGSvyW1YeU=;
	h=To:Subject:From:Message-Id:Date; b=HVumS0A/u8K3ykLuCSw6fsOK64GiltU4mbchC/wBJmTDly4LTAeEvYB6snQAQbprtPb8RNh9IVs477w2v6OJxfDve8g2bsJ7bBVj17Qw5I/lOfegGPL6YxW2OfNGwLZidhVKDSVl2p5M4yeNJkE+IYuRdnAm1EIZzm9M47g2sqg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rFoZSVik; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rFoZSVik"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71E8BC43390
	for <ddprobe@lists.linux.dev>; Wed, 24 Jan 2024 07:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706081296;
	bh=SAi9NJMavP5WQy8UsVfWgUfIWgMSLAas4iGSvyW1YeU=;
	h=To:Subject:From:Date:From;
	b=rFoZSViknjtboOZdrfAFZkhFBx3xwwBBnmE4PIc4CKWDxWQkFmf8WsGMTMDBeKljG
	 rDBDM7jLrT6CZf4crTACKMqtU9e2AF/mv3Jq8vIcR6+8bAoW5261Z2EdO/YDBP79Ch
	 yjrosgrmTJ67kGj+FSyAGaoll+YPfn0gVwRzLMnYvFt1HBycgVtyV1UXgJwNLVnkEx
	 I75XSMlhJlxKgLZixFNeO2mJj09bWh9jPhufaoeTnAcxO/JKb7+YQb0Dx933lgkVbr
	 AGQF/EbFUvNmNwqyet+6Oh+29cvs7CklWOJv/T7y8C8iVPwKwA6ts3M5hM2AfrEOI9
	 I4LiU1f4OElSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C488C46CD2
	for <ddprobe@lists.linux.dev>; Wed, 24 Jan 2024 07:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170608129636.21915.13125038761070654081.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec106147bf04bf3d26bde66aead7df8f087d75ee80129a50bc197a557e6b44d2
Date: Wed, 24 Jan 2024 07:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706081296
