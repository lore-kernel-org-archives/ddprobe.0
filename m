Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54144221F39
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759177194; cv=none; b=BXuOMQYGf3fg3k1tBIys1bkzQz6+sxi871f/xAwlkKQ+y517/fS4pzkF5JGVQNanh9lkgN99K5hJq5LXt4+j5Pcmn1+srXFKjXNedfKn4Sv0u1GTgsWgLgHo+7WYy+RfLFSVUD4FSbEpXmOjdihVCSGYofsK7tTNzg8fAMIn0d8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759177194; c=relaxed/simple;
	bh=0/SJFmgslEy9ODMfC2f3Y78sObLg+c3eLiN8GvdPDlw=;
	h=To:Subject:From:Message-Id:Date; b=Ib5iK7KHzui9yNbF18fn1dCXlcs5jTmx/pizslDL9Q+WEOH7NgqXUPJ4HkBZR8FIj+6+YRUs3YGEm+LN3vaONmsSgJ0deea/NqTC0QHdiAo6hxuXipRDZoXgnCTdkamT8CwwnhAU59uR94uabzV1QtiBdb/briuGoZNMoo4zsNA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AHB4KWJ6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AHB4KWJ6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7E11C113D0
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759177193;
	bh=0/SJFmgslEy9ODMfC2f3Y78sObLg+c3eLiN8GvdPDlw=;
	h=To:Subject:From:Date:From;
	b=AHB4KWJ6QJN9ucEPBSb2OyRdIwoaR5M+dZCM/fhi5fHzEsTWF+W0xZ2ATgMH1Jvyg
	 8QsVp9VyZ9A10lEQCYlUDV/0sYRzTDevE4YPGCyWuzbZmIQoBIjt6IPNNzgjjXyBiJ
	 pgwH5wcJMbLyKvf9OJfM/9T2YzdjhC1viO3mBmTbdZsgB9pOB4ILb54Qjc/YE23yFS
	 2pF/Ky/GifPadcDh5t4S2kvBtxt01djslPI4koXLrN6nkRS2e+wMpoL/qrrTJ/TZyz
	 w4MhvIK04NVwv+BZn1zbhvSdS5PH17vhwYUojQVy4aKBPXhyN7qIcGLpyZNG3oYlfy
	 6xvDRfM2XGpMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93604CAC5B0
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175917719359.2835.17490374960407598644.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 155fa4b10ccf9a7d9bfdeb39c67a4406e8c08f3a0c7f7a556b71674597f62be6
Date: Mon, 29 Sep 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759177193
