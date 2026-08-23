Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 491AB24DD17
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 17:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787505634; cv=none; b=n446PrXpgfmBYhZm1yhZ7VmeF7WNK52npdHPH5KGkW+s5VBaoFe+p4SD7TlrhTzF14PrBYsXpJfUs4PYASFKwLYSeM2n+vC0cvIgB5PS63WLZ4LFnQDSGzWViY2V/MCA6yKporrH+7ML5/QtPygaz1CwYSBQ7wS3B+zq00CtnHk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787505634; c=relaxed/simple;
	bh=/1/v4NNoRELVMPwRyuUqNpYWf5IOPglzqjxzh31EOTw=;
	h=To:Subject:From:Message-Id:Date; b=dkkdSZikA8w+gv/Bk+WYiZ/9ofUjV/mojTQAWvEZnk+ItL1wlVSEb9FommZs76drngTkzhwXG6ZWJFGbT1UzLFErlTrj7j0wVSwKrZnb9RtlWuqPhIxlTbnAyx4qOas641uXe6JBYR4HIcS8aJDN+NCiae//mtQ/F+df1zlu4Pc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r4awg8ax; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r4awg8ax"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4735C2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 17:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787505633;
	bh=/1/v4NNoRELVMPwRyuUqNpYWf5IOPglzqjxzh31EOTw=;
	h=To:Subject:From:Date:From;
	b=r4awg8axGth25h5o887r270PegALKWiy8m6PYQTMbpUSiMCohKxbJKrpm7AjtUFoO
	 Wt1i/6CykGIyBHO24x/d/cpCh4pCjj3ujLKv6mpPIc6o1xC4709CRoBXUVkc0qDvA6
	 KeUJvqzuvZvYB3t+dWZSMToqBBRaRpyPE+m72AtWFGf42LK/m9rfAyON8u8jP9bA1p
	 bk+BH7B2nO3vRzUDRVgPCE7vvwkOjne1JwOYKyr1X0feBfEv6piet/G8CcDCO/W1PN
	 iXzf/7x02PLzr/EltOmO6IN0pNlt6+if3ZhbCTQKpLHDHM3y9k12pTeD3lLKK88RDU
	 lCDzNTDFpZEFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADB57C5DF81
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 17:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178750563368.12599.9175694950979299450.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 298afcd4862e683ff8b546e421eef4c86813adf6b17e9bc16e6cd7a35c0cec3e
Date: Sun, 23 Aug 2026 17:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787505633
