Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B6EF142630
	for <ddprobe@lists.linux.dev>; Tue, 12 Mar 2024 19:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710271097; cv=none; b=UqgaHWJw9BPmHmSZ3Ad/Mbhon/6q6EzdxZT+BPwwHovyvpefxD8UD3fwVv/eWkUVS6wAoFnqRQORuJ216nmqE1+/BVMc3lhcllrwLQ/qaDeLiDrJcO26kzxImRyyfrgjdfpkUPpElnelJ3Oo0khqwBI+ny3deHImdws+v9EysW0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710271097; c=relaxed/simple;
	bh=ILSr2XxquuBib7h05CnS9QyiU4zM6Yb8a20iDpGioOE=;
	h=To:Subject:From:Message-Id:Date; b=EuMZ3NhnMxrJwkU4IDT6b04fk1vIqN7E68Een+OmXqW5GAE+uutrTP9uRBGGl9zF5E1Khc8VUQ/Mt8RvWeGWHbd4QiJcgjkN8VuQ7F6Wmyl/gPzEsGnBY2Ngf52nBmKOTzYsAeyVW2xCy1ow2/ShBeGeWU5DKeKtc6ub9s2IezQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kuMdYRYQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kuMdYRYQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83380C433F1
	for <ddprobe@lists.linux.dev>; Tue, 12 Mar 2024 19:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710271096;
	bh=ILSr2XxquuBib7h05CnS9QyiU4zM6Yb8a20iDpGioOE=;
	h=To:Subject:From:Date:From;
	b=kuMdYRYQNH8wz+Mnqjd5KSgzVKzGLmKbwn6UoPmIAJ8DWOK/roCf3CqaB81u6RhmK
	 F4J/pNvUBtvLk4i8toOhSbV8d3h/9DyXPaktGogNZkRguuC+PUNxwJX1coN21mdMWe
	 4CPTz+4/D7tAF58UYBXcBVn5ZSi6jlrUHgH30bxPiZRn5AwjII5lhz+/X3CwCKzIbT
	 Cfyml3pPdSJsOvxAxbVs+1zURksP6K8/7st3gqAmrTjtti6S+pgDovbjhSS13AFtNW
	 qv8oitFbXVMM0nRYYzIBhBqaies9voU4GSiACgHUVn/RgnMSdwUvtIeLPN3nnemYt2
	 NT5iNDgBYNStA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63DD1C54E58
	for <ddprobe@lists.linux.dev>; Tue, 12 Mar 2024 19:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171027109640.6472.6034970458595762745.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 527250f86a8512dc48016d4db07d88d4a30f2e22ab459705a951d2bf50b09ca9
Date: Tue, 12 Mar 2024 19:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710271096
