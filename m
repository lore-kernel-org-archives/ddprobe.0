Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D60331282F
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 01:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788312634; cv=none; b=f8OCoyvN3KIDf3k91x9SplWBo8AfxdgkiyuaKu8TPzwovKXcK8JrpCbrCoQneaVp5sbSkfxsI+XXYYaujoy2B02iWwLrlp+TbMltgMRmGZkqoVhxI/bBYYXhA6F7JcpHI0L5ZhYRHoHSKrJC2I/rffsf/9H4Axfi2i1PTMvX6O8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788312634; c=relaxed/simple;
	bh=9yrDDaDeDOxpIj0RWdQlAtYsVyPxeYspP+VLfS4NwHU=;
	h=To:Subject:From:Message-Id:Date; b=sKOjGzzZbsNXwte7aQ+BqV2cqBljsl/FRpY3wnboKna/rqSCD4t5w4aLnfvAn9yq11euRAxHv+XLa/rF+eOeiNMQJN3rAPr9d5LpiLhc1DmCeZytq3o0eqyk6XL/quWx8cN7yOZQnPzbwoUC+/1LVxLypRZ/gFnbYiQ9/AwPnqk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fFALdPCV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fFALdPCV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDD2CC2BCF4
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 01:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788312633;
	bh=9yrDDaDeDOxpIj0RWdQlAtYsVyPxeYspP+VLfS4NwHU=;
	h=To:Subject:From:Date:From;
	b=fFALdPCV5p13f9U4KJOs3/qB42mjOawMsscnNZ7VTBphya3jIuq2QArVeq0v5GU3F
	 gQrjcbegrXD1eYXLpC/Tuybv5C73NbxcTUV0O5F/JjcdSddV/xiorN6VEchTA0POgA
	 baSLStTtcEQQntUwid4Ce3/uTbQE0uBGeFz4+Z+w1LYwMaM8JoPTGOxk3Umqbv6dh9
	 sk1D5knL3xHFhdihRfgPzd8YMqhnMTQaH5SQRN+S/MU8oWu9H6/0ljhVsxdMh5YdYc
	 Og+7lmLVyKxTm03S8XIpezoc6du6UfTTXkrj58jTmGw/UdKQc55PMXjRwJdYjWD8Ba
	 KktqlQWpOg3sA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA0A4C61DD6
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 01:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178831263368.635.16265940923387644568.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1983b838df9448aabefa402448dead731ffd69de8e02e2036ef2458997409da
Date: Wed, 02 Sep 2026 01:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788312633
