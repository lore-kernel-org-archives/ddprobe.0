Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F906175A7C
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 00:44:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780274674; cv=none; b=Z7y+k/Q7944aC0Vuv819oBiGcEF+Br8KnbHmrSVJ32FREBt5noyHXSg9ryijNgh3vdRBxwMYtW/IQ0YUKzBpNuqRje0ioOtCedDz1F15xp1AvbZIuShnIDzEZ0fH0xMTDP6AsytB9mQCf7fssKKx09wkBWrYDHhXX3WyEup5cRg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780274674; c=relaxed/simple;
	bh=vJKdQjNGxpZugp7pjXvGjpkk01UzOu3wp1VmRAzT7QA=;
	h=To:Subject:From:Message-Id:Date; b=gCkgPYuF+W5cAnpy52p6jxArwhIZurJwN2VQTfN6+cQnU5hC4kNF50hYrSCEJeOhECPp8G1SrrtQn9wzB5PTVIw06iQbEE8FZnj0Wb/ghE/Qq3CH6EoH7BOa7I3AMpmzMmrrybjfavWhsnZxwPgYc65fUw1Z+1zH+ces5FsThaQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VQhZSTJX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VQhZSTJX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E155AC2BCC6
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 00:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780274673;
	bh=vJKdQjNGxpZugp7pjXvGjpkk01UzOu3wp1VmRAzT7QA=;
	h=To:Subject:From:Date:From;
	b=VQhZSTJXrLXIP8PDHenI/ev/jHBLSPkXQhuvaa1ZuzTGeBxw63jAz8L4h66k7A6bB
	 tzDlrurM5XVzU/3Xy6Lznh6u71/P3SCbeDDgcczXHPhRwOnPYoNiljSuWpP+vx9yAb
	 up9BtBWLg1PjZ2XN3Y93IBGMEurs4L0Q8vjbaGPo06dJ6tZhhyryvk9MivWYii+str
	 RYPl/ehTqumZtS2ZwkSujJRwLVUR/O4VeYQ7Py3u5tJUeJb7O2hmG0iH3B8mJqUJQz
	 RSxg5wJBtuYKiGH63Z6ZZ2lHNzuaBfVC+CQqzqdAuloZVR5DGZUBhEC66Dqs/kop1L
	 TtM/1EPZPnTcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B38FECD6E56
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 00:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178027467370.18998.16280275945040385297.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5942ce8677d28569018110040aa13e250dd88477b165ffde288dfe336ab0117f
Date: Mon, 01 Jun 2026 00:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780274673
