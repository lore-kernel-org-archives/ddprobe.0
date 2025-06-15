Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28CCC1DB34B
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749983395; cv=none; b=tY8Skkef+AKwIsTUUuKgg44bCINuH5+EQHkeMeCjl3eUSKirBuSn4zNWTEPGGHmc6EeOCsK3Pk+AT5UFncFt0kajBrhLYf6A6F9ZS6udhwm613VB2dPLlNGnJkU5+Bp+A3ltFw9b4QnF6/uu9TztPX92PoDJvSsdKbEkXvJccaU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749983395; c=relaxed/simple;
	bh=aldksTuXFvWdNAIUEdOUR2Mq9VryI4A81P0+Y+n/GMY=;
	h=To:Subject:From:Message-Id:Date; b=tN1fCRmaqo6gvrq7nbJqLLVGZrP8WuRqop9S4V0RJgGfvNC3LQjm4D5+75WvEHgYnCetFT0ySAF/8TSi2IJeMJQ5zqZIwA36/dlqReRhC3nOLXnza0midvGhKw71n8RfBVmTnqRdc3lZF2QAXpDt7DKrFLdb7P49tjIKdsT04XM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y25f5U/X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y25f5U/X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA39FC4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749983393;
	bh=aldksTuXFvWdNAIUEdOUR2Mq9VryI4A81P0+Y+n/GMY=;
	h=To:Subject:From:Date:From;
	b=Y25f5U/XNvRO7jXI0BOcvk79eUJM6thnZERlXWXShow7YDK2v91U13UgwY+B1WNbk
	 fzyizdKzi+wdUMDiJ+sE1Q7+lJXXH+qW7F19Ww71f7M09BGoAAbooKKbklyBAn49uP
	 Ns7hod/IPpdPZKVKmJIex9GuiHHSiToh1iNgi8ld7GfnGAvqowPavFeAtSWj8LEIdl
	 1OekCWKjOSU3WbkhQd3wBwdqU8hTEGii2yTlJo4nyGJOdTwtshPy9c3APev2AsXhY5
	 u92Z1XWLSQoWjJhFcOQyohNeyC1rcki2RbgG0/WwfMFF4k0CU986nOpI3jC767QatD
	 qOdhv8fWacXdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9240DC71150
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174998339357.1406.1499700116668665018.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f5a6073195316447bb642e13517bf6650a32b794038354f5cf5e4d6d7dfa480
Date: Sun, 15 Jun 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749983393
