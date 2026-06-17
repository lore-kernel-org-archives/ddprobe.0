Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 247C839D6D5
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 06:26:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781677594; cv=none; b=IRHMzBzcCjvnLAPoK5E2wEv31ltLQcEkwVMfwQzpR4ds346NNMJfxK4X7MC+NnVr8zUUXjNWQWHUDbJuvnAqi6tZgEABskbcSrHkASQ/spDbh8L+WmzyJSVq4k7inH5mqLqbuHkmcBTIBo3mb7FgY1bH3Wv35WFYbKxZgHDLEIc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781677594; c=relaxed/simple;
	bh=s9np8Mf7v5yjosd7zhcL/nI5tGl+lN/Gq9OvgFv0x/0=;
	h=To:Subject:From:Message-Id:Date; b=PNWDnBxjQl9ecPO5mO5t5Oru/5zgyzhwwEjTGKENFXKWiA+eNLg9YSIeF655o1bwa7Wf9oOs8ftOe3Px0fiu2hA2w0E38npbKch41PhbKTIZ634W3UqM2DlOO5wG5O66BMT1znGXewOKjwj6C18voT9MMNmDlu5Ru4D39n8dqew=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YPuym9eX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YPuym9eX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9D06C2BCB0
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 06:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781677593;
	bh=s9np8Mf7v5yjosd7zhcL/nI5tGl+lN/Gq9OvgFv0x/0=;
	h=To:Subject:From:Date:From;
	b=YPuym9eXhgSa1Y6GVbq5CL8/bvaDhZVnCoztvz4V/R0fRhepoNfu9qRsu5GWiLlFs
	 J2GAGtSliyDJthFClTvPf8RKZdIWOfKinkx7kMQxi9/fvYspAJW8YOUQJLnPjquf7n
	 1t6n+q9rd5hgtS+hHvPRZvY9ZaxB5C8Y4f/ZSmuzudZ5ti3ya3DkG0tccv4CTRWfQk
	 DdRMGKJTFYdWNFXLksORezSl/FOc5pjbAbsztdHQMoInqcczy9jtJJEmtQe0IZZH2+
	 MLBFMVd79ALgVUoKNk8BrX2SuEdzJKn3hWyu53IvmiLKpapSrspWL7sxjy4L/dYMnc
	 1JIm44vy25zjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA6D2CD98EE
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 06:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178167759368.12384.18018084698397042701.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad5f32d6e28d5873c9350c0f614b963dcdee4367e32dc78b0c32255b8f4def84
Date: Wed, 17 Jun 2026 06:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781677593
