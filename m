Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11A66244692
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 14:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772202294; cv=none; b=qLllC2NlC8Ry7eOvbUaPgLVGBR5RLfb790TgpTc6hhF310SRS/mQxWfETypYQfgRoteNaCi2IdbADQsDIrNXtsoIRj4wKDzr4APvmDrw36f2u7FuiKewH1dm11pm64jaVyoah+mucHbFdUHhD0YQlSEUiEwwRQY5TC6co/Wlics=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772202294; c=relaxed/simple;
	bh=ccSI/icKD/1a6YwhBOS0xZTTIA+Bt7UXO/GxaSS3pXw=;
	h=To:Subject:From:Message-Id:Date; b=VMTjiND/kqG0+UveBJL7+GkhhaFUE6/X43QtkyMoqscCcJDk1+5KlcoJLB6syc7lNl5kqX94o7GWqVrT+42SWnp7LnhA/NMbSOQC+3bqh1OKdP4VcObT6nYq07KqTZDxi8GutIjCxC3C+fnZb3CTC/5ZvqkVhHl/xOK/MCg3mvM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UZvJQiyR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UZvJQiyR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A48FCC116C6
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 14:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772202293;
	bh=ccSI/icKD/1a6YwhBOS0xZTTIA+Bt7UXO/GxaSS3pXw=;
	h=To:Subject:From:Date:From;
	b=UZvJQiyRFX5kyxFYyNKZqAk3QbVvZhECjhGDIX5Tg+W55g5Wr9+lrVmBoiJV6lD+7
	 OsyfDEx16UGWwn52k1OGJhOq7QwU7ytUUUu9kltLwF6UDbap6VoFR6JNvGyfuSJDnU
	 /fXHeQzgwaYCilKAu4iUgkIE1uIFUMaJIPya1B6bFmblLQwmLI2pJwFfGCFa9KLACA
	 2GihU9lMgOuKXj5bBsy7yjtupTqV7C2MNDQdPDbbcbEWiiez8vyFvKehBpL7ZgvcGf
	 6aOpuDR0D7oMm1wUaRzv1GpGJFU1RnQFDcu9hsWU7RA6cODIeL10GAKgn+NV4sNAb0
	 IR4Ezn1ICaDYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FABEFEFB56
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 14:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177220229357.1794.9852322317331400426.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 140826c159c7728dc343037e5ed43a962d0c08360783e04575fb17231fd17c64
Date: Fri, 27 Feb 2026 14:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772202293
