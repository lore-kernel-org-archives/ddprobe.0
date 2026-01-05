Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37D252D77EA
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 07:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767599034; cv=none; b=gxZiaSV+KZOS/FqK76ESznoQvOqEYBvJiqLyc28osNenicYORo6PbteqQ5X0n7eEoR4jAAJJTqi3yRjYvEdZOOP4we+XsYtcZVDcjB5sZ7W1z4qGijF+7sL6rjkoA5iQt5jb77v9p6DFWlLVDtIsmIlJ9J3CsghuJiBgQjeeoAY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767599034; c=relaxed/simple;
	bh=9G5G3bvXPzH9Cg8fmHi4nJt4OOtniktAyjo50yiJF3w=;
	h=To:Subject:From:Message-Id:Date; b=rJ3ZLLMnj6YJqkv9q1sFDOmpL4n4x8B+Yuc9OSn5b8SMJIdPENOdPa8ZzDe4UnRWH1iig7lXfeIX8aacXT0G5FN5tk29TKl7x6RyfDq507f0ifrHUgWId3zFl7srUC//33UU94voqgUVckxaUoUhb6XT6vRLRPzwfc4KKKLTR78=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QkXgrz/+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QkXgrz/+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B033EC19422
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 07:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767599033;
	bh=9G5G3bvXPzH9Cg8fmHi4nJt4OOtniktAyjo50yiJF3w=;
	h=To:Subject:From:Date:From;
	b=QkXgrz/+aZXEyVT6R45cgaHpD3FTUtOETpZRWHbxWc6VYzVXxcUWJ76NbEyGCp8LO
	 Mv4pTZ8M/zieTtZMEpXeQqS7M83CT5l4fJoPnXxoxOF5Mp2SNG1b8+FHXJwAWAqF+0
	 NaskTYjZuyFAgNZ5j8c7vhs19mY2ZRzw2Oy/amyA63KOovoL4j24k581EkwskwuB5a
	 R7qkEjOSrMPXqZNWWIDJbLHJ65jCCkH8FQj7B9CVpw7ccT9OqS6HfG0vDE9H3f28Nu
	 jnIftlEREfwqIkne43RWV0zqxmlHJipHiSDI6CiEWqa8XmUT95PPctBOFWfVlIOfYC
	 HUF5UBD0iq7SQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BDABC2A072
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 07:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176759903362.31284.9192253625114183816.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a06d159af50b0c9d6d39779b314da0f7f92f2c9962dcbfe55f0148944c377d29
Date: Mon, 05 Jan 2026 07:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767599033
