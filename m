Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2893519994F
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 21:29:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751318995; cv=none; b=Pw8hiIHxgLWTI/iy/8Yb0icgt9jIaGlZkDEBNpyWlx67OZsgCHVWerenakm7T7bGTtRQJwjJBgdwD2XHNq0BS7NI6r1Vgv8OCqcUtPNUY3HKWySzOr3GDhOeKGQae9ia5ci4WNuEizMHFvn41aoYY24yb+1n+BjXwG4EYET1e6M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751318995; c=relaxed/simple;
	bh=/Ei8WVqUf8X7cVj74EDgNLtf1Lu2/lYASp28rOy60PU=;
	h=To:Subject:From:Message-Id:Date; b=C0fG+nG4aRK7alEqihog7qdXsPinvLT2KK0gf/20mKyRKr8ZhIHLUjhTSCozA7GtK2hX6PqX/vhxMVXr4h07G+OB7uWz9DZxvz4KUreGPmPQ2WgW7GcbTYth+y/6xYAGA9PXoG9AFgY67H7skk8E9QkkF6OVz5CltT11vN8UFaM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XP8OGIXg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XP8OGIXg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A734AC4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751318994;
	bh=/Ei8WVqUf8X7cVj74EDgNLtf1Lu2/lYASp28rOy60PU=;
	h=To:Subject:From:Date:From;
	b=XP8OGIXg9jpqJNk/AVrtiCSHoimH5V1h2V41BA2NGzmJeiGhWda2z5v5Hk70YODo2
	 X0rVo1l5w72OoAB3V8LEvPkUS0x9hxUnPG2MkkPGNAz7GChQMTGfBhDZka4nCxHkwo
	 53AMw9HfthzXTjHbmrIB9ULn6sTP4/KahswyzElnXwHtmAruNrJ2QSb4robjNRjC8Y
	 kiFoMAOBGEX5bWuBaQyZgntzm8FlwjUJv/a+Io6AW/Yxdo21R4/hj1KlHRHtz+RjQZ
	 qp4uHBEoB9W1p1/UYDSkBbFpDIduMzu3ShU2N9slf8q8wx9wvmN8LNQ0McgLzo/z/O
	 P4A2s41vz0O4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94072C83030
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175131899358.28999.14650303402609869832.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d96bac6e8871f3369f42711e860efef6ba87850c2dadb649e4d5fb14628b39a7
Date: Mon, 30 Jun 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751318993
