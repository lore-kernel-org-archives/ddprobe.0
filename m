Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3659B1922FD
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 08:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737361554; cv=none; b=puxoCxe+3ZqlvbjLVOMq/yBYe/tNOINYQ7BxZ/eI7UKZA2gZmtQqh4r1avYe7YnNhpF1Z7a0Mf0LZFhgVa+fLECOUnGSQN8mVYLgJPIC+iGnEtCV5X21i5Ewong3OQmwg3nl3+mDLcrEtzNdojVQ+Wg6L9fCRdiMLeSlRFFGMs8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737361554; c=relaxed/simple;
	bh=hmtg+GbzQhrPB3/DHu5fxRuW0lj8V4CmHTnEueUxyUc=;
	h=To:Subject:From:Message-Id:Date; b=PcDyMeksWw91easaXfBAgL96XV1a8MmyyohenmBCSnTP9VeflQMnqBWRt2ukTHPszgQPKaIpjlPS3duIzWbJ3QbadQc8HC/4oLH0BNSAAI3M56VPSDhNnB+TZavgROWxqZ8RcBdtFdc+QBVGVqWd3M1gSfm01/YysSATUT+0hR8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kaWjiRv9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kaWjiRv9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4D39C4CEE2
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 08:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737361553;
	bh=hmtg+GbzQhrPB3/DHu5fxRuW0lj8V4CmHTnEueUxyUc=;
	h=To:Subject:From:Date:From;
	b=kaWjiRv9drUVnFA+XxoyiCWP6AyDhJDsTyRZuYA4CBX+uayFq34uSFjPJN3em81B8
	 OwWejae+rZIzzdahbU7jJt26hMHydJTLcMbyIvPbHN1N86523qQpxnkHI2Rx5aigpS
	 aVX8Uwi03+6dQbOd+cyZI06EJQ7XBT+nwxQD3CXXpGmQVqEdzqlGoNdQ8L4VcoPiEM
	 ZGMR2mDd0IhgmiiXp88PBbcd4heEzKDiVgN4//sWtBbm9QIdJSSag62JUlNqWbwwvs
	 lz3uDO6Pur90DzPKncbkKV6IaX5FaC3q2dgoZcMOnDC0sqwx5RA+g392CkeqgU91sd
	 DH0LneXV1RJbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95389C02185
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 08:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173736155360.25829.4293344499633300803.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26ba67ee8976f49c1f8d258b45ce62ede01a52b21b15bb634fb3d5379b6545eb
Date: Mon, 20 Jan 2025 08:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737361553
