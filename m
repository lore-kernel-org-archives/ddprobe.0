Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25F8415EFCD
	for <ddprobe@lists.linux.dev>; Fri,  9 Aug 2024 12:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723205754; cv=none; b=E1t1YIyWXKjQFd7FgKfpNSHTiyRMCOwAlwQqQYKjUoSujhowuraqU4ZZxq1/74Ie+o9VUlJXNhtubrYPZL2bsviGDSgqUMxU7sJBQP+WQk1urkqAIHQ6rpOjCUhjeP5CEUjSln8/BIiWNvVr+bRQ8h855pO/S8FhRtGebB88K3M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723205754; c=relaxed/simple;
	bh=ueSWvayB/cPGkiaKJHlpXdwddInnD2aX64w3K41kX5I=;
	h=To:Subject:From:Message-Id:Date; b=l8xH50hqqpU+8BdczRtnTNpvcF6MCz4nQ30MSl02KnN98vc+TQJ8niFXP/o6gKboCyoF3Y0cgZcFm+KUsY8Zm6g4wWzT04tnyDezvdWa50zyHNrN5nw3LJaqE5prh71n4S0sIrIrEb+Ny5auTrWIE2f9HqMKgTdmkjc3PxNR4VE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l2p8qDDc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l2p8qDDc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA935C32782
	for <ddprobe@lists.linux.dev>; Fri,  9 Aug 2024 12:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723205753;
	bh=ueSWvayB/cPGkiaKJHlpXdwddInnD2aX64w3K41kX5I=;
	h=To:Subject:From:Date:From;
	b=l2p8qDDcSBY4qR6YEuRwUo1pwmGjEjwUQUZqQmtKj/27PY6L5J8gzWBSN5NVSUaQ6
	 buHJ/9EZaaRlZWydtQuguaqUSIL3jm5ehctDUxd1SbpvAxE7RM/hsEL0ifx4XWUq0D
	 CQZf6H7bMIirE49aGZ2Yq2fEbmP1JbR0+HnrJlyLhK6CQeU53t7Oz8wAjPNDjv8H6S
	 FXZbTrcHJpvq0Ajez9l87sJyz8PuWqHNrjjgkBHFBY7i2MKT5wXzb1qsDsTO4WBS+V
	 tfpsZYA3IPzoa5HA1KRHgjQ6OXV7XgtBApq0Rsq55mFWDLIPbU8Bz/Q2CtgDF9p95X
	 DnBgKhGcPmz6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95475C52D7C
	for <ddprobe@lists.linux.dev>; Fri,  9 Aug 2024 12:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172320575360.715.12823866930138320499.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 024ed092a4cd51ad655df25a5447bd721dc29fee13d38df408d38707ac825ead
Date: Fri, 09 Aug 2024 12:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723205753
