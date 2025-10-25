Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 304C327E7F0
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761386994; cv=none; b=DwT3fyN53eQSPcT6W6KAzpT4GkInoQCQuhlHOTx9OvkYwngY8OmvOPqcFC+t2D9wpN7wanYEjC7TtCFjmAxHLRbOLBi3NhH94Y3KvNSryArlsXUhK2O2Ev3arI5yO1A3aJWoSOGSmNZ+AAmGy23NKsV8Fx1NUmp0sXgebi2OQTc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761386994; c=relaxed/simple;
	bh=0/XlnhPWqZrarFSVEZN4fEVylfowf//rMRRrewnwzvs=;
	h=To:Subject:From:Message-Id:Date; b=HckIjZnltxPANBPfFY/YlaU4vK/0Yc1ZgH0CPUhXenvBdkkD1BtZWc2rQA88V5oFJj5fevElFUeUiA9pfo1bpbMH5KOFZjjdiWBsrloWGl7gU0b+RLjOAJ/PDuFDESrfUdGLKgtNbZsAUR+Maowj/EUzKs+qJUJ1N1jdPpMtkvo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OkOyyCrv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OkOyyCrv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1610C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761386993;
	bh=0/XlnhPWqZrarFSVEZN4fEVylfowf//rMRRrewnwzvs=;
	h=To:Subject:From:Date:From;
	b=OkOyyCrvM5WvYELZZmM/nOR7hdF0V+dix1m3lwqLIT+VQVyNmN5dwe96iPJ7V9qQf
	 /SWpBBcB9J44wQVolZg3EocpSsKQpJRlWYBMTn3v4VVFm96th5UyBB0Uj0/b2+DAsS
	 orWrKmjI0isCg0U+DcOOi46hksxYcfBXSDAFFe1MPlwrFTm2Il+UTMJ65VdeVwWPxx
	 6C9cvLud+jNOnKfbC9Yttg1+MaEvMOIkrPPJUszRdoSmufIEhae9IiWFOUWgf/FLFC
	 IOTykT0yeBZCOwQxA10fSkVQF1I6aLNCJhjDVHzNP6i/dwZY3E8x8UTNL1Y/O199ly
	 KbKPqoC3/5JQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0383CCD1BF
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176138699357.5173.7218496535576239757.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed8a78201ed70899105ceced00b012bb83ffaccf2d03bc576945a4cf9b532a3f
Date: Sat, 25 Oct 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761386993
