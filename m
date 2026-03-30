Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DDA1C39D6C5
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 19:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774899894; cv=none; b=emjm8Q5h8yUzTqX5bflhIYYvLaHRomkPnDOQnSnQxHlU0Fx7rwJr7qibKjsWvc8PAEXYEHg9n1If+RakrHYJGjMAYUWMJL4htmFSK3fQ8pJKZuDHYA/rGL2NW/Oe8PdxbRhq2CED6K3Ez3kws2/fJTsfUQAAOIpTuM0izizlY1k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774899894; c=relaxed/simple;
	bh=aBVUB465I6KCKfRsSQtfJx4+ZsRaYe8P7VAKVr+kgtI=;
	h=To:Subject:From:Message-Id:Date; b=FHDjgGomgHF5SVuoGCH5sqY8Ix04M+457c577yZGH6uF0fLedSONXbVMztYFcWaklaNAblAVIvkLsGEzCgwwGO6jxjMI6tLvwcko1UjGzOgbv7YSvdlZXxbOxBqTgWMp15L0ROcH4zePTHA9W0lt2EsPpw19YrWrFrsfXs7CM7M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PtjK32Iy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PtjK32Iy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0322C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 19:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774899893;
	bh=aBVUB465I6KCKfRsSQtfJx4+ZsRaYe8P7VAKVr+kgtI=;
	h=To:Subject:From:Date:From;
	b=PtjK32IyjgA49dQcZbT3iX6+NQ0MRxenQaNVJfKDS8MUrfLEuReOJD5EjHtXADM2f
	 JXTr0ot13misTcpGaFn2Ns4MKbq4djzD480t+nxPj1DhqvGkHAMbKdlNoz2fpbWrmk
	 rwKSwFvZDaz/Kc41ST5xwfpHtPzJVrUcCbb2fCrBDGITEYnhYHDt66N4776Uf98fca
	 zp0DhMkud1nycUqWflCAd8BEmsFUviiWOyej6QXs5GzyU/98Jbi12/A1lMxlWHqAs2
	 JJr9qEnBpWTcy+qdBNTFXDj9RqqZeFTh6j5o/PwEZIJOkk0uJnUcCXCH1KGbajytkH
	 VyDEHoP44cpOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 916041061B1E
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 19:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177489989358.25600.9946270261080292231.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12cfdf7658c920b34392243a79cc4f2ddc188ed529fb63d85b696a69d1fc5542
Date: Mon, 30 Mar 2026 19:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774899893
