Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33CC014BF97
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 06:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776581254; cv=none; b=Feh3VWk33IrV6DPTg+Gl0A0B6q2JGj6OHqnaGp85/q3O013DAhYla5cM5YgH3fYws6AQUJ2+ExU4GicxZeFmrRdijrxOJXpgXCvM37t/ziDHOT4VqYcE4iraWc5Ryup+raLNw+pHH8UrIxevwjKV9R7HuWGvsddUKBN1PpkSIi4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776581254; c=relaxed/simple;
	bh=QPWJ8AWDHMTlIyoTdZWDETuWKfD57voMzD6BaWTPEyw=;
	h=To:Subject:From:Message-Id:Date; b=cx7zm6pTO2JuqhBkuTmkD/U3/8UjN6vZV8LYz0ubFRFUOBrVnSULgyD0UUDbZgB0tIb6eDZCJqlujz9iE5YOEDe8mq2NSHh7Z34aETBmqIlozRjR0MI4yyN77/mznU0pFx06y3KtB6/nP1ccp5s1OfrSGAw0k6bSxlD6KlwM4yw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qF/UsUiR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qF/UsUiR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFA49C2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 06:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776581253;
	bh=QPWJ8AWDHMTlIyoTdZWDETuWKfD57voMzD6BaWTPEyw=;
	h=To:Subject:From:Date:From;
	b=qF/UsUiRZin8Xu4WvHo64SDsF513kwRb+IcdVji+oqe59ZVACm/XegAMeeDXi1DRy
	 hPRB07HZNA9TdNU7MvWMlJ/gwjO7IPt/m91RFsdj3cZvZga1y7ggvb2enRclnow6VS
	 Cx9DTdoaMRvrd0YgMGGswDzGLfXlGjwWsVZMbfHCfwYBfJyCaa7OZSFC9AmTqBC/cy
	 Un5qwQVPZVAaUBjM3A7Lz5nolzpfMl4t178mIVWFtWvpKBcZu+cyhHrOXmQQjlQork
	 pcn5bZiEHyenfktFDM81twNOsyucPL4dkM9gCFWPZdJs3nbTFfDW3nG+FC3GEXWEAY
	 FUykcZ7r3e4ZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B015FEA7188
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 06:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177658125368.29593.13654993901854851730.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 216d0474d430fe7d104211d940a07f2dd93f719f0235af322a73960d9b6bef40
Date: Sun, 19 Apr 2026 06:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776581253
