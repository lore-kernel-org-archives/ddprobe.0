Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35AC21AB6F1
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747175395; cv=none; b=s2Tr/HIOgNnZprkkBzU5x01QeSGSvFdoR8kxQkg5PgGJZzpdh5RY1hAgF6oZZosYhW5lTGFXWwvhFTGcj+G4OZLeQgb3mzjgwWKSpPRhy6B9qdFdYIKRqVZIm7klA6xQKY7bQNzb1TmUyxzM+73mq+GwhPHeIotuelNM/hOzNiE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747175395; c=relaxed/simple;
	bh=pfidWPxq/5o/4FjGt7eqYQGYVrCYwxhTf3zlE9PUSb0=;
	h=To:Subject:From:Message-Id:Date; b=PMsk0FaQLbEltvyyJvxdwSKTxG8hW3lxHgCqAFUaldHzMRlZY692q5Dh49GJFao/FdJJmHQKXlxeMxSexaUFyYRw290OQvSiPsxK7NravyQyefosbx+6UBIcJ17TYeH8vCmHFgmgAZ7gSlbZk4CEzalpCQViiAAaMmPdqEMPWbI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YzLD2Ufo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YzLD2Ufo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9206C4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747175393;
	bh=pfidWPxq/5o/4FjGt7eqYQGYVrCYwxhTf3zlE9PUSb0=;
	h=To:Subject:From:Date:From;
	b=YzLD2Ufo7Gd5zsS1wgJPfafw7SHQXYUAC6YenuiJjToWs25IvISo+u+2OD50lDlh4
	 xVTA6sD/t75qVwM/aB2vGmFWW+5Yjfzk/xw4AFHxv4CVAM4in4WQYzDloksIPi2i50
	 5h4kTKG06OmVLHX7ARk3buTfHs0T7YGE9UMagvVl4ceYOFOhGWp5LLIkrGhT45avr8
	 KXE6o+uKGQT8rPmjVxfWrVJ7885HLkAVpMQfaQSBne7eL+c4e0A0/lHFEZBV9INODd
	 2cLhdNCV77cNcVnuDagQNi/XhT88zGxWs8J6JA6mqg0yNio/Qs2h6M3Ke5QsWEhHIP
	 8z520KwyZKZHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9518AC3ABC3
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174717539358.3459.12380307823966933650.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5b723c70362f28aca41531bfab87edeb225792716a1fc58fec8b8c2c91e878b
Date: Tue, 13 May 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747175393
