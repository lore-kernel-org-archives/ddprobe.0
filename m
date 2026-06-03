Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3302E37756A
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 05:24:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780464274; cv=none; b=lXO3QxliDw4qjYhvEcE7BygkFC6DFLF4kOM6oVpdd7j3658h4bVBtOvyOosrT70ORpE6gtYgeo9T+3XWXi3oZk8JFgAnxzlkHk++PXyyWSKfsrmLG42jTZWxcHf75nKZHSm/2xMLGExjtYOwBmwkWONuQHU31OxbNBnTqLgUjdU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780464274; c=relaxed/simple;
	bh=62V+a1uCfec5CR85fZBlwiukBNlYvHJwrL6hCJzhtcc=;
	h=To:Subject:From:Message-Id:Date; b=IYmpd01607uJxK5cWqxg2agpa/Jt0RBMuGrrRbPYUoz2teBKsSHv3fsdawGB/jRJNeXjNmFv/7UBYSJ9Kxjden4UerUIjODwydfIMvWbWPPd5IGdB/ypqcO2KQLIOIGaSC6ewB9SVNYV5QSucf/cSrwN4jiDli2xtQUyTsrQDLE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b0I3wXZD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b0I3wXZD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0DE4C2BCC4
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 05:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780464273;
	bh=62V+a1uCfec5CR85fZBlwiukBNlYvHJwrL6hCJzhtcc=;
	h=To:Subject:From:Date:From;
	b=b0I3wXZDGOheQwFBwkE+qea2Iu8V+WsBcY9gx9tpT4716NzdQcP7nR06PL/mL7rZy
	 06yv6C5M23SyZf+/GrwKpsMu1vpQp5ueVjqZ4GwN7jEQ/tJJWfL7sqfcs0RNLL0iI8
	 dJg/XOHvmgSNQjQgMod7ZHNkrhHWxLtNQoh6bLkJjxHXAFuYzymKjVexy6QwAG2VBS
	 dG109tkmUxdxmdelp+ydIPxVVL83GA/k5BGQGB8crh5nZ4UrIPmRstNL5aPDCcB9f5
	 k0kmDL/HHSnHxTtmQz3vmnxhjYoewecySYkxArGq2mMfAow5ipWSIu17gF8tBPVQmn
	 UHQvwv95aUKdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7F53CD6E4A
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 05:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178046427368.14253.5355062975522459749.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f1e21d60bf2d1d3bbb58558bcb64e4a9bf6d8e209d8ba242c16ea970ca6f71a
Date: Wed, 03 Jun 2026 05:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780464273
