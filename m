Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2701B19924E
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 16:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728579354; cv=none; b=sLnOBy1DyXz0RAHcrNpHNTugjiG/gi1uc0+a1Uhdd4MhLtCdLL7KO3N4SbY8GioDlqmNegbiPStXy4D3nWNng0J/p+g/OMUG8hw8P9wAmiOzm2g18Xhg7af/rI/li/yOVavh33AzuBG7LxaLL9FFJGSjrZ029Ponb9ZhqiTbeHU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728579354; c=relaxed/simple;
	bh=kUo/ZHtKx6aiOFJFbTovdRQgUJqYpWamZj2Pd8cVx+4=;
	h=To:Subject:From:Message-Id:Date; b=tusMEB4lASPuRl9FlQxeRWKbG+TzT8AX1CvaX9tdHbgxgqjwTQak4VQzO6Uss9GgR5qVXLLqmet54eF4ps1Vuf83Y6d+wId3tkxn+rRGhLPR7sfiOpkJF7RevNt1Kwc0V4t7sTSnS3hfK7JN5qzRPlLYWsLFircGrH1AjnpXtys=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k5awoPB1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k5awoPB1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9A6DC4CEC5
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 16:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728579353;
	bh=kUo/ZHtKx6aiOFJFbTovdRQgUJqYpWamZj2Pd8cVx+4=;
	h=To:Subject:From:Date:From;
	b=k5awoPB1AILtHIwwctHXqOxqwSx7RGztIwIsU+TQlSUBYEerhZgim2EiqJEJmTvgW
	 bGPh3L5UQ8kIy2RyFNN6mH1fGDw60Rw60bgYwtcDFlD/uLvUFi9IiR+6pCKpzq4tTk
	 bJkOY89Xu6wFvDewzBl7dB7U5DsB/9Bczqn9tySgSbWyLUic+qMtCdQ0kD4yW1zB7i
	 dGHirGzzrM35zSOMGkJ7CNpjc/HaJYAqhFahFGqBzCOOyyey89dfS4rBAtWLctFE4v
	 fIACobN9L3c9fbhq3KTyJIMhJdYE96ghwKZFxOkrmYZVCi6e3nnXCx0/ub3jFwCYvw
	 kgf5JKadKbNwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94FA6CFC5E7
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 16:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172857935360.26711.3782658399200042527.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44b3d484d18117d0d4f303f5b1bd9a96f2990c770a860a618ec9784b680c49dc
Date: Thu, 10 Oct 2024 16:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728579353
