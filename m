Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A30D81723
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 12:46:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720615583; cv=none; b=hg5qX4ojQOg1jhL7hJBLeeso4zsqqEG0Fsv0L/juMS0yLzjtAtiYsS1PyAn6YPlsskiVPUZVmNb+BdGmpGSgg5lx8Ax0J2ScTqjJaSvFyT0cfwiu11U6FkHdG1+G/AF5uEsH7YvduFn7mKmrKx7hhuZOxw4LU5P/DNwaZ2SOnHg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720615583; c=relaxed/simple;
	bh=ab6S7AxUXfRX7krNDQlW4Wr5/dRQUKHUV2Q+RUcCleo=;
	h=To:Subject:From:Message-Id:Date; b=s8al0RBit7TIEbfTpXdhtqX/pOQCC2hbVjUpX+gkE2SGqOchK2+ruA+S8DgNMKjWSM1ZaXB55Wxf4rKDLV+FbDFc9d+/QBIjWxl9QW76EMPwem/1StRYS86t0rwPZD5brfdV82xnPi1uzq6OOY5CWdpCHKWS0K+TbTY6aXVOmwM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AH8ZILtU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AH8ZILtU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6855C32782
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 12:46:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720615582;
	bh=ab6S7AxUXfRX7krNDQlW4Wr5/dRQUKHUV2Q+RUcCleo=;
	h=To:Subject:From:Date:From;
	b=AH8ZILtU+PUMEZWLlw//s2tH8EEr/ib8I49oyEaRPGK8J7cn4F5aOHzDD0wTVcj6x
	 6mPE8JN4pWoJWy6xn8O787D+vvgJr9mZW+NUt9t4kb0BcthPYDRkXPU3mhfFLoO7aU
	 1Ap7jgRj50O0DERGavUWgQExGHGW+bfEkApzwInDsnn7w7ChaYrE6mHkf59ERC9y+C
	 ONSnchW9JJzF+Go6TREk5URgOSlVlhYxJEt6lh+6uyHmtd+Tv1Z+22Mj8TLWdR6Sgk
	 Z/S/frnHIDBamCjTBv/whIkrZ9nmcfHSURHWMcU+OhA+vyXmpDEeMxgBqAoMrsXRBQ
	 LeG5jUKdRKqzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB326C3DA41
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 12:46:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172061558282.4554.14632532778086957651.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6a871142d50ead6be8885ca46af35ccdc4eeb5d0ff20f4e5c8c993af05872b7
Date: Wed, 10 Jul 2024 12:46:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720615582
