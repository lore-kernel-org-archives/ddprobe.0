Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F9282609EE
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 10:15:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775384134; cv=none; b=g1TXtlMXaY60zX25ReYJ9Xxi1t64zLm1tsLcFNh6lD5anv4v2K0rfErJlAaHlIiYEHQeaWa7kq+dx253lE3VcBp4rt3u9oyQqOrysqWDBjGknFsQMukE+Mjq9VRKK4sXEA8oA/D7gG9rzhQV7s/5oiopHnprh1DC694FJMvNiII=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775384134; c=relaxed/simple;
	bh=gbCLSHTSj+QZw0kp5lD9iMHTjDjQXtY3ZADAGJNhtLs=;
	h=To:Subject:From:Message-Id:Date; b=TYLqW9oeh6WsOoRwnRprGB6kn9H+kGpLN7zkPQ/Jn/Wg8g5UbkrHnD7To041Mx6smL3d2KprWuc01wb9pZRYLS7USCHnm86U+SM4E7NaQFJFpjsTGdgu/jT2Sz2fRCOQaB36sA6ZROOLdn8zX20CdI7zxWMpuzSAmmRbE/j7wRg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nsqZ28U2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nsqZ28U2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C47F0C116C6
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 10:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775384133;
	bh=gbCLSHTSj+QZw0kp5lD9iMHTjDjQXtY3ZADAGJNhtLs=;
	h=To:Subject:From:Date:From;
	b=nsqZ28U2yiTuI5E/b//JU2kVTq8Xg+JRkBgne9v0sQ5biz6iqs6WpeNsyt671QcLD
	 ZTnp3Bc+j5LpiSk6BHnnzBgbxTdSOVPI0BReUW2HwGKHe1520DY76ppLM5R2wQZjPy
	 1WndlUQNQ+uIxiOYetNs8Kv+PaoZ3wU70F80cmqSny+UmcOxpfsYQVwcKTPFyBiroi
	 0krJszv5VvRUiKkhaudaeqUWGxXxK+Tjy/pv+KHowqL++wIYDN60GdrpjMYsJAfoAF
	 tdmQ7mDPZ9VIqzLyuo/c7L6C7DLHKVvqA6Zat4KjDEgYJ9tr+ewQ7KPZ1qLsHCZXSv
	 /KIyjAG+gJgHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE49DE64019
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 10:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177538413369.6744.16025760634530177506.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83a797335578a543d00947d0db67a17c3597a60f6c0a6c930f0c89d6aafc9f99
Date: Sun, 05 Apr 2026 10:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775384133
