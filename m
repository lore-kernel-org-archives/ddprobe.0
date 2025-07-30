Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C149132103
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753913394; cv=none; b=gB+bh7vvIiu+fOkUKdNz7Ok7hGr10lHziezJ22A/B03b4StlCc7ZR/iJkiJNmtAgeLskPqjHcOBoo3Dn9DbybX2wDIyIxq1xCv3zIu73eBCHxRDvoMFF3x5YQdxWFKq/fA0Y19m/6BVpZItj/6b8RbYTG1kUTf9kWxCrfEhitdQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753913394; c=relaxed/simple;
	bh=BdzBOncbru2ENZcPk3IwRWsSzzS1oh3Miob0iXZQGyA=;
	h=To:Subject:From:Message-Id:Date; b=Cd9t0fNXfaByhMIUsc8ni+HCHoO5gbnWfhIQIoNgbums/S6IIwjUIogFCSRWxms0WRU2BcqxzEYm1FIVURdIuEIcPleRRwSY26bvOGs9zoWjrpX1pVvQokmfhYnjefauuJATNSjU0PLDJjvXSgxztHD4yd1h9iVWdH+P0rWHFLU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dBqwbu9r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dBqwbu9r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FEC2C4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753913393;
	bh=BdzBOncbru2ENZcPk3IwRWsSzzS1oh3Miob0iXZQGyA=;
	h=To:Subject:From:Date:From;
	b=dBqwbu9rkbFgNjzUHvzbwmTWnjQDMyfKPT1nN9Y48AE40gbHCcuZOQgRiqsdiFT+p
	 2t6paF91bjoWmKp5vdU4p5cypfQy7P06zjbOSX9WWX9SzneK55XzCNWUvQHMvib1JL
	 FqvOZiIdOyoU5ROcN0oOGyY3wfsh+uLQAExjZpuvDXRy26LDCKQcUqFzvLb5/bj2IH
	 8ohFHimL7GdfL1ARTrpHUW6ezu6TvHqEIq6KtkZZEN76RjcxDlBOYp7Xhqg3gsC1cS
	 5XcDrl2u1tiT+8s1kmKN0Y9yLCiGYGz/4+Sj//aOwL9kth9ZiAVslKAvcP8UTy0cG1
	 bhHI+PsVkBHvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF3EC87FCB
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175391339358.27205.18334999451452355225.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68a96c60c6b449a6144e0fea3a50bc0c1b6574af3917cc5dbcfde0175c9aa7bd
Date: Wed, 30 Jul 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753913393
