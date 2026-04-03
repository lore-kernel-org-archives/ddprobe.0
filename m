Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2929F239E7E
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 21:35:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775252134; cv=none; b=ptilgRpcRD6FKjvOLShbB1eJ8KDoLLpg4l7H5iVpxIxTnCTCgxaM/kJ5b/tuCSZMKHGX8XlwsFwMca63T0k5qLD0zmRw4LK5PQSCFUXXpLPtqFvZOfBeHof9UZXg2CV+2ZPTVynwr6ZyjLcDwjYqeI3sJDf6SkyQdW3xC4yzp+s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775252134; c=relaxed/simple;
	bh=qJz/UzWR1/SDE2E0phxkUKb7o5Vkzk6SIUhJHN18PSg=;
	h=To:Subject:From:Message-Id:Date; b=ZZ4g+oBUFtQfDHhMQltwxJUNdSUpYf3qmgAFxvihHKqFQZlDW4wlUwP4Mydb1gT4iw6MSwVFlyWopzYBplwkiRlCc+9UL1gwXePfv5Gywe3bOI/PfIxjc9oJgpW4ll70v9kMqLNEQbOuzBFZ3dlbwBIkiWqLSSQcUF3vV6BAOZc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cobXZLzg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cobXZLzg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C698EC4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 21:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775252133;
	bh=qJz/UzWR1/SDE2E0phxkUKb7o5Vkzk6SIUhJHN18PSg=;
	h=To:Subject:From:Date:From;
	b=cobXZLzgGorvKNQ/d2dtnxvnu2eCgQaqGYv0eNuircL88uiDDt4VWDPF0WsLRwlIE
	 wm58u1OImX+6GB8pX3pXeycsAdv4NsY2CMeLgBiw7x2IbqUoc2o9UKBY6Th+e0i9dI
	 592u4wRSi7lrHw2RkG/jgBoxNLaEfzRR1QbXhNuGonAIakYZ1MAs6T9P3oe5yo+iQ8
	 jX19713g+yhbiM4IQ9/IsnHHWb6mXHom2zFU18ElKl3GWEkiG7RiFRIlshEDvsBgwy
	 2/fy9guLOxRLwDQIwLMqXclCb5OqpNyKa5lCkLAsX4sSun/Ed+bQ0N3fgMywrgmSzf
	 j3DdzBS54EUjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD283E88D68
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 21:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177525213369.27968.13072549231243996478.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b9cc278fd54f86663d50196395001f25e4520084a179df059ce67b475f202eb
Date: Fri, 03 Apr 2026 21:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775252133
