Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78FB046AA9E
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 18:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790273434; cv=none; b=WdqXgIPd6yOn3feyU7dO6bwxRr97I0GIdTQBPqCeI91CgOBacC3wVeoAvkpGcipxhiG9m55mcdLqZLqN9uGVDQAA4FZG5DAHPf1bmDAvjNob91n3+IPHHk7cGpY7u6RZjXEYBrOKhBx1Eassv8lBYAhOTqhm9zKinPTYmY1x2Kg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790273434; c=relaxed/simple;
	bh=sgEuYefJnmx5/sWkwE8oZhl0KS91PZMhhp/Fh8BgEwU=;
	h=To:Subject:From:Message-Id:Date; b=O1h8EESJXbbY+FJIyE4WmW4UxTKFHYVPuVsCN8Mi2Aqjz9M+ZalpqQMgiY3ph3dFd6g6cac/YJTy+e9BeYDBwf2BXTkLuw4V02KMueOqeVMUoVlh4LRAaYyNXParWUg3BHzrHlaQEBIEFsFF68rrLXx6UvSSuMuamP08PdfBbhU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SZuulk+L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SZuulk+L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0D4EC2BCF5
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 18:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790273433;
	bh=sgEuYefJnmx5/sWkwE8oZhl0KS91PZMhhp/Fh8BgEwU=;
	h=To:Subject:From:Date:From;
	b=SZuulk+LoMPoGJbR3FqymQNwGVhgetiTgrCPdA8ieHpBtxNUl/TXgRnhGXed3Rx4z
	 u3/99RkRq+lmT8fdorqh7PpOZ8I6LLkdq2n9bH/Q8IuEz/alYnk4AalUUmJxglGjgi
	 2YP1DVD/cyqKRzxk+71JkLQDKQb1KilcBNfJU+whlPjMae6BKVnm0g/jIV+y/7uo3N
	 8ZEfgEjTKG7Glos2BlZdELTS8hOjAAtL1csJluPGbENbiS4l9gszm7lf1zU7HXE6bG
	 3cHG/GaEr8SIuhuc6Wu3PqpK51N2lv+3NTF2tXvdcDAMyo1KE6xdcTtJ/cw+lg/JSs
	 iuoLun0beRGGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB261C98318
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 18:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179027343375.31672.17801166101146093816.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1037ee9efdf277a0e51997d15533499829fe1585fefa27cb7ad31c136e354cd6
Date: Thu, 24 Sep 2026 18:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790273433
