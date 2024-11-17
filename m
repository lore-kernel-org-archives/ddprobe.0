Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2AD317BB6
	for <ddprobe@lists.linux.dev>; Sun, 17 Nov 2024 20:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731876354; cv=none; b=pEQZRtoLdr3DWGTxvRHc3q05251DBbXaYnrTutdK6l1j+Oj5+0ArTOdlrnl5OLtoPRZoxnJ0z6TidtqDRB0tKXZ33kz7XUxbEWgklulzUJeE9NuZQeVRrmZbDm0c6ukEFisNPnfevwEFTw/gset/DMU+SAxWnmwOBsb6qLkG4pA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731876354; c=relaxed/simple;
	bh=vISuosrdKPsdichAM3c0KQv11JWHmFFFbDoE3zH63rY=;
	h=To:Subject:From:Message-Id:Date; b=CZoV34abr6pJ+CkQrTlEHr8Vyg+6yBh4hZvdFoXnQHdW7JEP4phcdKeZFJYTQJbbJjy026vwD5SwltBBUqenptbdWHbTcipQWkWrm+lg2SvstFbHKmn9sRHDRt+EBY+1pDIFNF8IVMBE4LuJ1o+oazUrczEso2U4yF6xwqxHop4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TleSA8PE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TleSA8PE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA923C4CECD
	for <ddprobe@lists.linux.dev>; Sun, 17 Nov 2024 20:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731876353;
	bh=vISuosrdKPsdichAM3c0KQv11JWHmFFFbDoE3zH63rY=;
	h=To:Subject:From:Date:From;
	b=TleSA8PEA0pb9DHNbgqir0+g0MBu+Xs2XJI7c8+Z2mJcoG/PyLeGjejCtjIBoO5jO
	 W6s1Jpo9/p5CkLABghA0utUU8+2HaFFaYylhOM5ZwAybFpuyUeK5zPAjzwJi6gQd2a
	 TFI/t8Zms5t8KAM62kcXcc2FGrYQLVZtPayOVDdrss/4yJEmFWsI0dFwTC9zUZFl9z
	 OXm0iDpw0tRcLmZqwOqSdx+1BJY7wM6oQ93YoRNzgT/dQx5wL84ZRFZgjPhUovlMnl
	 qkYkU4hXPSM0aYBZ+s2SWnZ5j/kNMnjhW22t1p+lEIBTIQUDCkLSMSaGSJEtWJ/mQJ
	 1OdjwM/nzxebA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9439CD10F2E
	for <ddprobe@lists.linux.dev>; Sun, 17 Nov 2024 20:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173187635358.25584.8643275726418989273.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b11b8b956497da5eae2ada9540f7f654cdecc5c25766644557abb00af40d183b
Date: Sun, 17 Nov 2024 20:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731876353
