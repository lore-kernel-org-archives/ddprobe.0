Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C93B24886A
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 19:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776799054; cv=none; b=uKIGLlQZ19m6bG3EQk4R6e5fQ7O8ssuyJ3JiT7ThWO4KD4ngU6uhFlHN9k804vryTMUTUMjgGwHkWk//Ho2OgFvG7tqKlsZK1qQdJ4u5lTPDWQoMEbkcDd9hVCwh4ZtKNUXX+G+7nf6sZ35XpIW/k/tYb1tdfiKSUYlbBfjhYYE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776799054; c=relaxed/simple;
	bh=JaWA3/zfOgofB6U9DOMkpnI1V8EB0y6n6B8uyuPvIUo=;
	h=To:Subject:From:Message-Id:Date; b=qEqzeozTSdF3kj3HmsjxTXWXy3GtHzHrX5gfkghDABVruIrZStbgSUhK5qFTZUnggnbJjXuj+JVwTmTfqZtMiuOGmtZkZq/2/VSbuSjRrgKGy8e7rB83RxXxwHmDfN8JxdgpZqUgW4ckv7OJ4RlgMvRPY//m2L+yHTIZ7agBopg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZLtVxOOB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZLtVxOOB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0FF6C2BCB0
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 19:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776799053;
	bh=JaWA3/zfOgofB6U9DOMkpnI1V8EB0y6n6B8uyuPvIUo=;
	h=To:Subject:From:Date:From;
	b=ZLtVxOOBZR7tgWUKx5eD+64IHDnICsx+2XcDhaf/T67vvr4rA77oKsoNiT2XWzi6I
	 nX7C2qyD1Cl/ma4C8ueazvLT4ejBrnzCiekPEZVrGnrvz/IHcm50ZJM3Mw2ihwnZIN
	 PU22gFCu72mjzlFSSwLBnWuib/9r8EKYRhcU4xE9Qc4zEOpQr7OVIJBrYBSKlmaQ1K
	 vIKFICPbiHqVNj6JhpxzKdP5vKJ1aPaXpYD/Ul2GtXjwGy8s7kzouQ45yn0tFd9kaG
	 BtuITT34kjiC/QJqMMtMGMEal9mdtz9qLKO2S09BAXIIDIpQ+PPZOMybxXOkTYjgIT
	 uk/cY1YUT0rGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC1B5F94CA0
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 19:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177679905368.21351.16088215420407425363.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: efdee85600c6ce15d60ef7254ca16ff6df6ebd38aa12e89f3dbf121288ac2620
Date: Tue, 21 Apr 2026 19:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776799053
