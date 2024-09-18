Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EE2F15C138
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 19:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726689354; cv=none; b=dPYKzplR46MV/CEcRYJw0WsY3g0uJu6mtEd308MitYEMDvkmg/ysrFh8Ro+MQrzwVYLcQqdbS6NYxM7thcoN1x+xMxL1nkKAoWbSgJkofTMbL3oQNYGPJL6JCBT/0za/ouiIwIVJNDr25M1bdKThPSjH5uPuNkDCy32wYyDKaNE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726689354; c=relaxed/simple;
	bh=VtRCzt7iqRtKim8tmsikxpQn8mBgYLeqQVPnTcX2LXs=;
	h=To:Subject:From:Message-Id:Date; b=LTApTTkCWZ2hp6XoPyMSLIB6cDVlud6hviBbkDLYScz3zaY6MBc3oRWvvIP1MryRCQl1hgkB77zRReyNy+DveYghs639HcLyE6p7d0d8oFZofRpgwXsqX1GohhJDGRoeyGSNy8QiJxI9MaPBI7alTYqAG9JEh1JQvquUMDth/14=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lP1KgjvA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lP1KgjvA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8E2FC4CEC2
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 19:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726689353;
	bh=VtRCzt7iqRtKim8tmsikxpQn8mBgYLeqQVPnTcX2LXs=;
	h=To:Subject:From:Date:From;
	b=lP1KgjvA1H1bNr9KwO5CY+YAetnvZrd/PWhdEkId8IAplbhnrZfATI2fm6MjrkrlO
	 4wxEygClJqFev7rlcbOJrm8ZiXCy0a8Be+bh9KfT2nqSKpH4+zM0+gZ291aYsnj57W
	 QSMwTYg3n4U1Y9Elcr9A7w8yjSvTcyRy2adF66KNVAn/t2gc1gCtBpCZVWw32zwILg
	 bPteFZ8Wu4CK7AM7hzVrqCVOl4XjJVcuj5U4TdjrG6ODilJ2z/qzPmWrI05/6zm7ST
	 gkdoiKpKXKTTu0ki525fG1hjn7/yypU+WWqcD9EORl+OINWdNXZTl14Jk1oXdSeQiV
	 uzMRmbaECniyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6256CDD553
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 19:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172668935366.1147.17682258986274645117.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf6767759f9e78345039052be4dcf140123281ac100a04d748c6535e758babe6
Date: Wed, 18 Sep 2024 19:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726689353
