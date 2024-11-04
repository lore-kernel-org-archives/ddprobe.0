Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D8CC19D062
	for <ddprobe@lists.linux.dev>; Mon,  4 Nov 2024 08:35:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730709354; cv=none; b=bqssuuKLBUd/F4HHRh43W7hz3Tw1DvRm9ePesb6VM1+3sldj+ZgiP9wlnXwpUUQ+OnRL3607qZKyHVZcBdZqysWsrTeyFJgFDLLSiWyTWAWQlsaCqszqwQCB5DbrnF8vJn/GdgEN58EpBOWzWq1X1da+Q/Btsp+bRYPDSkSpSHQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730709354; c=relaxed/simple;
	bh=NUXMa7kwQHdcTrRtCm2j2g3e3Yi+AC1fTBfrZCjtoPs=;
	h=To:Subject:From:Message-Id:Date; b=JDThZJDzL/LruJv7zRrTgdQohQBJI4AnkUwAi91QVnZtpp3o9/VE8BWEZTvjcdK++l3SfUVsz41a8jXmyBCSv4qnYE5DS+WnLoG63ypf5x566N4nq0sx+lNmQVCxMjI8AH5z5RYFMOguuW17wEBgtFPR0bEJvnQcVZH5qt6EvTo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GZCSqg98; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GZCSqg98"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE53DC4CED3
	for <ddprobe@lists.linux.dev>; Mon,  4 Nov 2024 08:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730709353;
	bh=NUXMa7kwQHdcTrRtCm2j2g3e3Yi+AC1fTBfrZCjtoPs=;
	h=To:Subject:From:Date:From;
	b=GZCSqg98TsrjGzKe68fwItDr+h7ZIjtHJnkwcoXMO7qHI0ToplUrvejHg0Fm+Yqb9
	 XB5UAy5Eq0DbC8OVyxwP1EOYi0MgkhHM0HTAIkmBmpvUnCXfPQPrKd7A/xLuxZiWP0
	 +HJwMaW8ywg1XIPYFCbie3k4pkQwv7blYNne8OL9+PIrjPHdtbGqDi1NynpE6f2nk4
	 wNbQzusmnB1AvWPUFLQpGUAk4CVogq6fsX7vw5tPA0vL4mwKpCWRucHdEnmGIekV8p
	 l0hLvLzJQklNO1EOomqWX3cH2uMV7b0JunpVvuKrWdlE/dstyIqb/O2ezxFWHhKomx
	 zNdeC9j5vPHiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE069CFB422
	for <ddprobe@lists.linux.dev>; Mon,  4 Nov 2024 08:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173070935369.7803.12738126726110211442.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba1cb579e85abff735c3f0e04eb27ef6599cbc9ed7b18cbac6804d74f20281b5
Date: Mon, 04 Nov 2024 08:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730709353
