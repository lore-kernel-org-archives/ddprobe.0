Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BB252AE90
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759396194; cv=none; b=m5TQQ6WVZyOIfYPAwlFaERWd3PuMf+Hvf2uzTSVS/RWD8ZtH0XqGThvBXVlbkFWGjDAkr1zXbovXm1OvTb3ANkohaqkkuQVvZtecXFZC272c0m6SrcSkxPU56PVb+5VeplRwlw5Vyb+L/R9mqLSZC3/Hwu8wD060qvHNIJQadP0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759396194; c=relaxed/simple;
	bh=u37SxOh++i3TdLWV5xY0wsLq195noSvVR9tzVuIjLqE=;
	h=To:Subject:From:Message-Id:Date; b=OB2WPdG2CKGsw7TioDEBsR/lQSDRjO+xXE4otPuF3Y3dkl3asEi+UjVhXPcAvBsv2qr/D1U5rJl47UZGSm/qnfjE40t5n2ckYF0la5LOfYLYVijZsiaOExm/Bo5yVwvDgP+YPStPsV3bYiGvQphjFPe/pktwyfVfvvFLLT/2gNw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HqNlxt71; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HqNlxt71"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A54FCC4CEF4
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759396193;
	bh=u37SxOh++i3TdLWV5xY0wsLq195noSvVR9tzVuIjLqE=;
	h=To:Subject:From:Date:From;
	b=HqNlxt71UewZ4htDrry2/2fW/FLcTVA0Rprj6UMYa1o/DRARQKAYR6tHTpMu5Qty1
	 bz/18Hy2MItCB/7ipGkERWmBr9m+YvhQiztWdpFQqBosbfK8GsamwUnju3HK46U3qk
	 0kJCTY0MAko5FUuZDqLxUV26QMRXRzpa9yB6+hW4UaIAqXezg0gyRi6l5KqXgnVR9Z
	 oX59sqfH8WCok5O3vn6bkxDHwVEy1pzrjYOtGBLZ6wgm/+93/sYFGb+k4Ec16rEHQO
	 yM89iaSgWa5w5+wJT2YGOwPN3438apeo4WKwHe2YHo6BywvkZFg+cPgL+xo+UtLt/K
	 r8erx3O0s/OGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90EA0CAC5B0
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175939619358.499.6435243583636386441.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62c288cb5664a6abfefeeca9521430166984df183f6386ce4d549ad1d5855395
Date: Thu, 02 Oct 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759396193
