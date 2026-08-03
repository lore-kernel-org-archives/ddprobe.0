Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32197377EC2
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 10:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785751834; cv=none; b=tdvoXn+z0ctHLPX8xWtbbf7m98v/nhpgUcReDUEK5hC26oXFVD6Ci8OYiHsq8nj4245ubypsRmKdRP9pbTewLscDma+3tqPKaiaJLPxoZ+S70QyngezhYPcUtyDTJP+1h00nI5BdAIk6qwa7c2BaK9jygZGbC8YJT78vk79cflo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785751834; c=relaxed/simple;
	bh=KJjCo2xeetivHtcH0Ybb0vDWOL5aBk0Tq5tAWLk6K1M=;
	h=To:Subject:From:Message-Id:Date; b=c5MZvG4pBLCu5b4EyqjbM4ZFMK2UBU0yGNS/pCePqHDENpMHi/mNnH2Lb/Bq5xkT5z1Un7PhWwjSntUQWXAFzvpBv3AucZUqNi3eGLOV3CYqWu8F0aBGsZq1ZSeWPfcLlFh5HFng6b2O2H0Kh73fELaOQ+cgi0AYIwxQFK5lTAQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t9i4v3Xm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t9i4v3Xm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE0B3C2BCF4
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 10:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785751833;
	bh=KJjCo2xeetivHtcH0Ybb0vDWOL5aBk0Tq5tAWLk6K1M=;
	h=To:Subject:From:Date:From;
	b=t9i4v3XmJYlJiKOGXJzS+SS0H3gcZCKfd8CvPnYXPdpsigWspn8EYqMU1eoFMMsfM
	 +paS6gGo9Nuy/S1D+bXoOd327wuv3R5ng3kMTR/i291YXw2Yp7cIez3HZGj3IlA7da
	 m5UyexSZX3AteD8mVYq6EnS+XhZK55Rn7SeMyepz37WDVDFGWlf2soeyNsq/EtgQor
	 GrSTcHZfN7MbqOh3OsjCov+NH6al0E3LS66GxZZ7X6BvU0IHzfIvip0HIx7sLeovsU
	 tRdHPhpHHfLyrIJlJyIaD7e64qNkT6gz7IHetoNPoRSuhV2TlHDOuMvMhFiSW03Jh9
	 NlVeOkShjmhcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAB9BC55184
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 10:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178575183369.10400.17731171653578766414.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89258774ed85a76db4e7c1b39525545096c3d947782d1b50642bb96cc1740108
Date: Mon, 03 Aug 2026 10:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785751833
