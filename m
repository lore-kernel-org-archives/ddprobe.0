Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 541777BAE7
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 12:14:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719663263; cv=none; b=GRyiHRKvJpnb/CxlIVlPjWqsly3oTSuNmhDUgAZzs5EhV6RQiI2tiVZMoIw3xLVHJQFpDrU56ds4NNgWpzgz0e+Eq8guMrkJVkOGoRpwR3rYC/IgJwVVaokaS257vCdKzlqb13IEId2y/kD+OxXo1ZhCCWy1WZCF8BUrrsFk64k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719663263; c=relaxed/simple;
	bh=vIus3gADs2KNWjx9ZjJXOXDHpFVtlH3RGnBo3BwItKE=;
	h=To:Subject:From:Message-Id:Date; b=CwMVz9BTngG9f6SBcGBa2heqsLG8Eh0KXO2AoBpqExdWBuPtcj2aGqQL3mXv7B3vPgK2BVQ+N6pjVbnycxjLErjII/30lf3LrbdEg5qgCS/Xo+RUIx+MEYZwj7dgQughZ5wE/epeL913IxNNxQe4+PK3CiDKzXO8+TpChcXwRUc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=huEKbAVQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="huEKbAVQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF984C2BBFC
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 12:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719663262;
	bh=vIus3gADs2KNWjx9ZjJXOXDHpFVtlH3RGnBo3BwItKE=;
	h=To:Subject:From:Date:From;
	b=huEKbAVQSSpZONt6D9NR+KyhcR23bBU1W4ryWTqepVCMlNQa8kSEGbt6Isvg9N6zE
	 zoVaBbfl8poIkEXo/jvty0IdRMP+8X+peZszVOW7fRjH6DkYKXCVCy+DTtOMwf0G28
	 d7GPr8oScsWbSq4j0CN/YBz6Pfri66nwVzLH6lgpVKfc+ci3PphZ4gGxIYUQDOy+UJ
	 jlxrm0N7tXahkUpio0i4Axgg3rlsUO/0mjvFfGcfzHWd7Ydmm3jhVKmRKJRcn2h+II
	 bQa9aiVeTEPchvTaIwx7754dfK249bfroCH9uE9yVoHhpJDPuL6qXbQxfjUGQY1nfk
	 9FtF64NrLJaiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA561C27C4F
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 12:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171966326275.29491.9515708080119881065.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d29787d90cba9a01f5dc689243fb95e1f0dca3928f493eabd7a80f033301e229
Date: Sat, 29 Jun 2024 12:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719663262
