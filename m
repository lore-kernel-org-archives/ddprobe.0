Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B78E2FE04E
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 06:45:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775717134; cv=none; b=ZU0oPvvT1qzL6KCLsYqfP8TulPKqE6pCyhgjO9w+apvSmYqxSzv/O+Wk+ZUCe91cMedfEg0e90pcnwsXXIYdMkFtNx46CWLNcBSMJUyhGIktcgSTmw2HIUm95FrV8eQgZNbkTHo/9ToaEx7scGluIlFwCNlmb2KY6alFLwuSixs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775717134; c=relaxed/simple;
	bh=wW1oznR0wG4IdYy4W793CLOv+/0lW3Uqst98sxGTxNw=;
	h=To:Subject:From:Message-Id:Date; b=V3zf7cGdvgWoYEevEo+vdexXI4TAJnU2xsNGpV820yZ3r98SMlJeu+Oj1DYG+LXmEfUNzBHjML3r7mNFjD5FSi+/ChW2rqOM4I/di44dCB3VketuoLyfzDB+vx5hJT+h0FFNUFRjEywMeUWYyMmBxK6V8MKEr3oo1cs1hzpw3co=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M1YT4WLf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M1YT4WLf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C672CC4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 06:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775717133;
	bh=wW1oznR0wG4IdYy4W793CLOv+/0lW3Uqst98sxGTxNw=;
	h=To:Subject:From:Date:From;
	b=M1YT4WLfvJ0Ds2mIuYlBjAgjr5xPFIlWhsfxzmlqJpCwsKJ8z8vJe+gJs1giMJQcH
	 XGg0p+nlpX6dZ9nR3UcXTgUq7g3Sy+PeBcHzvH2g+CrqqZ9mkNdLn1XsHeenQC/nuA
	 pRHs0LpyPKuFkMIh/bSFNYHVqoiGjIybcRNm5koGGeHBu3KqM9ARpK/ZWgZYfP873T
	 rNLooWXbXYQe1C2yKGL5WtMItVGuNcJi3pdJ9Z8Xlu8yIgcHKfKnIxrEzS+QplENco
	 NiuVeDsq2Mfq897UC0sI3XA2Ml7QPo+dj+jSl6h/lJQlvkX6ruJ/QYrAVQW5+hFhei
	 oVt8MdmzTiJjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B13A2E98FC2
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 06:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177571713369.3544.11534253628798741542.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d48aaa4583f74ad8230509cff39b430aaf8e20256b6b17c4c85a07032a3bb59
Date: Thu, 09 Apr 2026 06:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775717133
