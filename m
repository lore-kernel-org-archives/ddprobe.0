Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CE161AC896
	for <ddprobe@lists.linux.dev>; Thu, 15 Aug 2024 11:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723722954; cv=none; b=no7heL05c5sRvwylOcRiYZmG+adKlfarcnUPxvlDAkygLOzshv+zT00dc8np1iA5xKvBnZj0nbmZWMjf+fR41N/p9gm3o/JIdAPP5vpWq4QgxIgs3dlEp0/6rcHpadShB3MP/709SBPWD1Vh++kwW4fBRcwXCKFmMjGTwRGW8qA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723722954; c=relaxed/simple;
	bh=8B2ntfRDfewldRRQEa8n2uI9RhNoRgLZ9So45iEwo+Q=;
	h=To:Subject:From:Message-Id:Date; b=kM+5CHWPIyIaMRksAX/aewxlLGZllk0QdThFCi+JWUVbXWlype5Qg6NrFToIeSwcD0LNOHFgPRbr4Kq2XQiSzjXvB2UldrW89jwY1ic4QYbWnpj9RO3A7M4EJRrb7lWFzySB64ADr6OkDGdBiscI67yLpU54Ct4uvkNs6eyAFoQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DSYEI5Um; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DSYEI5Um"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABF27C32786
	for <ddprobe@lists.linux.dev>; Thu, 15 Aug 2024 11:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723722953;
	bh=8B2ntfRDfewldRRQEa8n2uI9RhNoRgLZ9So45iEwo+Q=;
	h=To:Subject:From:Date:From;
	b=DSYEI5UmON8rwZiKIwjPEn0ndLDTGmctrv+fll9ViPXc5CSOpj3M9mbILpxi+x4C+
	 93j8H4YHz8zcZ9aB/OKMghdBFUVaZBuG358t0rSdaRvnV94ioJFk6qriELSmI45X4m
	 vleLumzqmcx9XYEmrWrvypkKMeJtWre8F9sdN6zI2KlEKXve1C9MUkyr/M9LSmVnch
	 WptqkEBmInOUo2bDdG/SxsetCPxzWgjKYyYfyFBBkGLQNe5afhK9v+YJlrhioy+HqQ
	 YT1q9FaaE9YRYiQRYWT9lINxAncLVP0qq2ZxCdi3nuF61dEdkHF1ac6GTKY1X+LZBF
	 JVbyVnl8jrPAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CC81C3DA7F
	for <ddprobe@lists.linux.dev>; Thu, 15 Aug 2024 11:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172372295359.15634.17198202238098665007.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37b4538211708cb63c230fa0fe408d6feeca70360418a8c880a3fb20a81500b5
Date: Thu, 15 Aug 2024 11:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723722953
