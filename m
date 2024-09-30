Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24DA215C3
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 03:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727666754; cv=none; b=RNMTpv/EamhfIxogC/JLtyLkjWMcAezNniJ+ENmYgth6kK4RW4QV8dxC8uEBivB9QsKLHa91WPNIQFYNtw7Wf71Yq/glgy80DL9Oh1Md4qUkIVBAoTrOxFExvpnji82H8r1n6yuiznHa00KUfqvPhrMmewLfAZeE00DxQ5WTTDk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727666754; c=relaxed/simple;
	bh=YmJ2mgDiUgzpQMmTA2UEdm1F9h+IHCWuLWdrZNNBRJ4=;
	h=To:Subject:From:Message-Id:Date; b=B0SWy96z3e3RY1TST78oDA4tOR7ASWTgfEIdcgeP9JYc3QpxtV+yDd4A5oSp5gmmBSXX/iyehrlbsrkqKNVC8juRb1nzDJ1PwPNy9hxmI+WT1ahRS/miAO7kdAUHniQYAfHYoClTT+ql792TdrrJZ4UC7x7EF/gqycYR1haL/oE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gd+Ue7v6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gd+Ue7v6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA377C4CEC5
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 03:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727666753;
	bh=YmJ2mgDiUgzpQMmTA2UEdm1F9h+IHCWuLWdrZNNBRJ4=;
	h=To:Subject:From:Date:From;
	b=gd+Ue7v6gDR1keabMBLoEgy7UY0tNkw3y37e8eP9uJDnbeMkEHjEqxdhUfWfE23pL
	 G+IfwgoBGNGyJrJLI1EoShDEcGlcNwzMSLGA+WZfqJhtjXANy2FrPu5VG2rTw6CHl+
	 yB4EWSxaTHm6HxbVsO4ZnotoWNT2TSJGgDvDGNYYCX8OaKiv64G7X2giOEwyoWFH21
	 dP3fJX5YMxkiib8QbP8ygakRPD3miKT64rtzsv00bw06qJYiW5WMyTmZrAeAkPneTZ
	 JXraLW6omkBc6HA7CGR7cck+b5kyQYH0utHqy1mjRAwajxiGXT8L8sRlxqCOLU7N1W
	 2vhaIhSAJ3b0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92EC2CF6491
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 03:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172766675359.12776.15550393699249523956.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e119440b537489646fdf8f58d55af629a6e50623cdcc8207130033700ba7d17
Date: Mon, 30 Sep 2024 03:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727666753
