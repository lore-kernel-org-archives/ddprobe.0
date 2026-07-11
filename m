Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11F922D0C89
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 17:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783789714; cv=none; b=trv+dZhSsOkWuZJ7nBcpCmWLSHjGJfzxWGwd5Dn/1+e0iFMwl8+nDeXmzgLH9UnhX+sFECjm0iRr/TkIG9/bcTy84/GjAHhJxdRLC981R+uZGgbud6Mhnx4/q31XGxvepuEkBUPXv14B69yGAlvXgPF/CNDwDQyz/bFCts6g6TM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783789714; c=relaxed/simple;
	bh=7ad8f1oLUlc/wSa9Y2O8Fr+PR7qwZ+3Mtq8fimQ0iCc=;
	h=To:Subject:From:Message-Id:Date; b=ur4cRw+DHKv+np89WUqAZVbQgHQXkCZCZFfwlK0lHNKf9Cscm5mulN6hriZeOCQ+Qw6jkmU+JISRsAx7erXdv5GFgV9fCEBYJfDwOp9MUbkRhPS+UYvFGXwZH0JFnE0WEORDSDYPAmxm3n6GX8K1wkLa/kYEYUsXbVxhE1B2F7c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OVfjaEgX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OVfjaEgX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC3F0C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 17:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783789713;
	bh=7ad8f1oLUlc/wSa9Y2O8Fr+PR7qwZ+3Mtq8fimQ0iCc=;
	h=To:Subject:From:Date:From;
	b=OVfjaEgX7hCDHWZlrT7asfyXcI32QWk9FL4SMSLYCJUPu6mGIyI13hXhm+LfsNR+g
	 9H/BRODas8w++/3lUP4q0eUixKDDO5zGV8W7TIErhpdBUkxRXJon0+ozz2wrIrKcPZ
	 j+N1B+jy972OAD3E18rqDE4D59ht2BCc6Ni1uqW9mHQOXV0Q6ctmc43uozjyiXbj/Y
	 BtJYeTLul9BP0h2HY3dSSTnx7CD/KvlCKEn5LHvAjRlesxBAO7B4OS/FKWlPZ5GIXt
	 VLwVQwKnoqnUkjieAFQK1gH6YNLCzNozSQn1pnvcvs0crOsIyPX1XHiOZ7MLMpiOmp
	 Ck0gMQUer7D0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB2CAC44501
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 17:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178378971368.16079.14183791402185019993.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7fe40055941f2c4cce21d47616966f6985a9fab5244f2c2a1accfe92f2fe2a77
Date: Sat, 11 Jul 2026 17:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783789713
