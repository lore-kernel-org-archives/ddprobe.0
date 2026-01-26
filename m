Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A53723F42D
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 23:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769469234; cv=none; b=HGcNCZ3FipSN7LNkB1KwGHdEZvK/NpebbLoLPmpV/P/wN2vvjxeaoBBqAWIPOWr/VhW/clfglsY9PAaQ9zfVPcaCNdgBZ+sEl9eW2EoS+egQL6ZoyqfXsKUhxX2spWzoWDkb7neQ6+CWlPVXD4PJg4aABh1shvaTwLqTGZS4VUw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769469234; c=relaxed/simple;
	bh=LAwZhEY7bv/NIKwra8EarsJKr9N+i6Mc0BeVNaoOKcU=;
	h=To:Subject:From:Message-Id:Date; b=uwZ+HKy+36zeJ8ZV0zU1d2oCuN3yDhHhXTUkXw55Ib9BrrQ6BnwhfrUXqVLTuLxxMSWzest+KSBBVvLhnHKl7E7v2/T/9lN9BmohXhsXhBZsxIZiA3HxMtGfqESAGQ/ylfrn0A8UqXh9uoBl7WH2861FKRn5TgDdrItga3K86fQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q6Rmb6WU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q6Rmb6WU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8549C116C6
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 23:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769469233;
	bh=LAwZhEY7bv/NIKwra8EarsJKr9N+i6Mc0BeVNaoOKcU=;
	h=To:Subject:From:Date:From;
	b=q6Rmb6WUgjpOAjB3s4ddyMcybbn+X0cyvN7Lna5h1yFLDDZ7uUxBII66mBSUaxAnG
	 lX0LqRZWKye0W2X0+RbhzneHUFtGIlBpfuaRulK/0XP/isQePmp4I6r/8DMz7ivAk8
	 locNQzX+0kFsZMDlllG2NYBq+l9koa8bS76NCFa9z4aocCJfOIuwkCAqeG8F53TkWE
	 fojw/3hsfWATuTjaNF8npaeSLVrWZYv0jKCH6R2zLNSibfoBN+ilGBFV9Qt/To5P/6
	 WqrUAS7X9/C0+Tq/raD9XMF23jH9CycML0LY1Q8i1qBJUVytBQaXNxr1iy5+IvF8LB
	 kE2XLH4SvOzRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96C80D19520
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 23:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176946923360.15136.15235931685532531637.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2631d1c2cbc91df6e69e8555754aa22146921b7ea56249ba6300fc7c98568593
Date: Mon, 26 Jan 2026 23:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769469233
