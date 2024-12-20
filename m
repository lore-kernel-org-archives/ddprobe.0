Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3608221D59E
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 19:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734723954; cv=none; b=fLGO2YFZ/ewZmAu7qm1RtIkXhzMyBDekWD3lo3sCD18NR9p+877PtCojkQP8yV+M5iocHwx6BsjpMvqC9tlB/+Lok4F9DbgJqFQZjdVOvTBeWaoJMNHslZXpO+MldobtUV5XnWjlFQ5UHW8xUYFwycwgH3x/2uAAmHRcNeIhqyk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734723954; c=relaxed/simple;
	bh=d0YNO4w1BU1TExi0jxLI5HlnD/HyBpAe+/H0U231vks=;
	h=To:Subject:From:Message-Id:Date; b=sh+89WX1CHhsahWUuSJrfpgSW4ZSGja4ctmhmLY2YN2zkjSfNWUWe0WWwtatbmI3KBZnD5CBUbZd44ShSs0DKowpUxC7ssUrkxx9S0XkHeAPTXS8/PASPNhDC39IqwUNqAOLvFKGNG734l0IxPa46XoC1zlLIb/yuAhFg4iveaw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W2AKk/lV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W2AKk/lV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCF4BC4CECD
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 19:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734723953;
	bh=d0YNO4w1BU1TExi0jxLI5HlnD/HyBpAe+/H0U231vks=;
	h=To:Subject:From:Date:From;
	b=W2AKk/lVnPqEmYMGGMvCwjSHDKkZQLe5pDHr9toeUQUIVJs0tPF97+2pWrtvS1GU7
	 KlFF7N5onZlZSuSa780n3Ca2oDn55bQhYUwcyvbwgkycAIQvQYTykcvUVMPdWYF2O3
	 Vh2xpJ5ShKaCQ9xoLLxVTMJ30UWfV9CWEaDq7A3avhcmsQE57o8VvpclKqJ63Ynik4
	 Y8tCE0QSsJSqdY9wo4DvAcWWq1spgQ4d49ZccICewlq8yMwYimnZp7oSvugAHHDBJO
	 dtCuVtSsFbY72oqRmS2KBrUV5m/xn5AM2hsecEzBk/c0eFxtCO1qwurT4qF0XwqpuT
	 ChGPZh1aRP1ig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFAFEE77188
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 19:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173472395370.9372.4337963588894843351.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3214ff56a5e49daf9b45122b266396be06f31a4f66bcb37c0b4276f838782e43
Date: Fri, 20 Dec 2024 19:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734723953
