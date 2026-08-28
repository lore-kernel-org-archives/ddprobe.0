Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F8A9369D6E
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 16:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787934034; cv=none; b=ZSxVtLwxUj+M1UfIMbGKlT0r2cG6+E4dyuIgv0N6WSTkbchuKSHTd6Q+aPncVuMdKPvsOo8PmsKYDZ4I3XlWgAZ+MvV8nVhBU+SLqfAFH6/PFru6noInkkwFvZtHys47iIclF5i4f3tk2m3tyDngWr6XTj6FXr44ffeUGSpqVcI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787934034; c=relaxed/simple;
	bh=Zyn+S6IN+mGHngnRty2MTM2mgLUDOcuMEx/6U7dc1Ts=;
	h=To:Subject:From:Message-Id:Date; b=pzGLA04fLyJtEdZCcV2KzXesGAfFLUEqM5tTEK7Z/jj/88eeb1kA7WQ7WJkQx9QB+lo8Qaw3zd7u9ih08M4EQ+P5IqW4bPtrF76hTRWfXFUUKnHtJLGJHzddOcu7nLMGEmVKIIHkjyfQB4MQHz6sv5xseiD2nlJYYrEmhWgtOiI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=upya9I9J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="upya9I9J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D176BC19425
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 16:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787934033;
	bh=Zyn+S6IN+mGHngnRty2MTM2mgLUDOcuMEx/6U7dc1Ts=;
	h=To:Subject:From:Date:From;
	b=upya9I9JIr7hbUllowtKW6e69W6VsGIHA9sWRM5szxZq4yoKSxCheT8fr+NubsGQY
	 cwFEXDN5TX5aJPJ0rI9H9CF1dvbiRSwRC7+XnkD5eubOK8WPYwkj9Y7Hw0J/nDmoFn
	 YrOH6J0Bdv72NYzZ569KeT8M9EENMjDTLKkOnu1oHnr9XP3r43A98n6rfDob52ahnc
	 GHwa9J9igkzEO8D8OSev2BgmWrhuzeRIcbelsQbTJsLwjDHKkeXD6K/mF4b76b/RH/
	 4P26pK0lL5AjGhcyw3eUWzuTpg9KB6MD971AjzY6zl5dDFgf7RZq5Dm4m6F0DjPsGa
	 aKlnlK37Qf1eg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACE8CC61DBD
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 16:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178793403369.578.10121050097885870226.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8d3f50745dbc3a0152de382cd3276f2ed594ab9a809bb15a5e4c2ea18cad904
Date: Fri, 28 Aug 2026 16:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787934033
