Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B422189F5C
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 16:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737735954; cv=none; b=TARv2ODsMOP+0PxiXMwG6o1DsmSqgfKyMbNQhm5Zg8pH0eXo0M74T/WpmXoFGalhXWWDn2cimycE+PzxJ/AUf7gRuXbKc+DcLhSzHclwg18V+ai7/07eMjXmZMgIHaJAYJ5qgiH0Rkj4fQftkFsMQt+SxPEZzR3HAzbT5wlEgjY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737735954; c=relaxed/simple;
	bh=o6pSS47j0hOvLF3jh5v935PcRy2lhNIyXXPOp+i1HLQ=;
	h=To:Subject:From:Message-Id:Date; b=W0Z+vcXXfGdNMCjZOVuOzWOMxTEicr+zzxp1LmcqbllUgryTdGfITYXp0lOT6ia6xUWp2Q+twULKJ5rnP/rTzuF7ZoW/zmE0zHtWccZRrDBZxX2bgYnE/J9DbpU+9zhYsF0pwrAeTYyhfGahwkV1MvhGZk1sXN7vPpZmwCHJMJ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Oy3G+t51; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Oy3G+t51"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2D35C4CEDD
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 16:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737735953;
	bh=o6pSS47j0hOvLF3jh5v935PcRy2lhNIyXXPOp+i1HLQ=;
	h=To:Subject:From:Date:From;
	b=Oy3G+t51Q0v3i99WKOKnaTttCg5KSHIVN8jqFyj8Z/D+B0whVKnmFm9Ng3kra5VLH
	 p1veLrq/p6OFFv6yD/eXrxSayTNQPZyQHsZKKD8ScnUfCLMf4oefjkJV0+kXkFiLS8
	 4AKIv4l5W2jnduoXizJM5UuxsD0QTo4WLvHw2tqD3ZkCPmDGXv7iGey5vf6lRzmF6y
	 CavzJHjOSOAkARuA9H60T0yqnmUsty9dEzn8KdNfdGt2u2IdXkdWSL1mQyrOqfhOnc
	 SB8OeTdteTOO8VePYlnO1E9QtGubW7siNU5SMzT/5CJRd94M0/H7hVZQPrmWtFOZYw
	 HZFjAJ5hnyoSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98DB3C02181
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 16:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173773595361.25771.13461555841341601083.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 302ba65546fc99bc62064c117399b9779fc4bfb8174ca66252a5e1296dafe852
Date: Fri, 24 Jan 2025 16:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737735953
