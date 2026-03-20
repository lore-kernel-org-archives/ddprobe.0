Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4733A301701
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 05:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773985494; cv=none; b=B4taESguOekuF/2Nqz9xDmLip+V6FvFkriSy0ntE4EEBLbsdIh+YLmtCjzQFzoTMvTOZSl4Njqya0kSgWlQIj7i4euTD+D5FwurLvp2EXaAHYctxH8zIkH4nzqoUeUy8tFZUxooUYr8LkHy5hE/KPWucoHbwr2InCIHfSic5R9Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773985494; c=relaxed/simple;
	bh=PueuZOMdbK3VSn0QmUssv0qfYDA8ySAeIcgriNbz5U8=;
	h=To:Subject:From:Message-Id:Date; b=FBBc50A/U1cN0uCs8KAuVHUdsw+StsAr10Ukr75+0XLv2ztT6Ysup++Mb/4BZC+/2EPt1OitDLvJEbmErnrlR4HqundgSCBQA3HyGykkxeD5SUdLH9AjWTZu1mRmU8J4VKwa9hrJTC05L/LgT53hRkdYDAHJq3VeTJ2DR5Pd/K0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p2oXeQh6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p2oXeQh6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F4C9C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 05:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773985493;
	bh=PueuZOMdbK3VSn0QmUssv0qfYDA8ySAeIcgriNbz5U8=;
	h=To:Subject:From:Date:From;
	b=p2oXeQh6LLJ13l7o7n9VdeUA0oihjjgGMFAUQ8BZWvc1K1GXnQ9YmlDB6c+8Qeidn
	 vYkuzfJW/6VS1HtH5qb6b9fCuALPRS3JWztDk1C5jGXHkwo+QfBMUwhcfium36E3mP
	 ROxWTQ56PC8jWF9ZSyb8DwDq3ZYbXaoPsgclO3KGp5V4A38cX3Vq7jfq00tr+rc2u1
	 1jxSUbgv53c1lCLMBgapryKOAxgvzcSiXErXthMImCJKZi52bKTfA1rcFLU9ciEVQ9
	 nxQ9fcO2aRHwyMkytuFGeAd4k0+d9hzEf5JdRlFD83xrkpHkKmKc/7tojmt7FnQ//L
	 Z14051ZYAxIpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC5A1093177
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 05:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177398549357.18132.2128261895600161841.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6e57a713010c48a43de04d0c4feb3b40c851a14c7ccc17e8b5a7c3ee742bf3f
Date: Fri, 20 Mar 2026 05:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773985493
