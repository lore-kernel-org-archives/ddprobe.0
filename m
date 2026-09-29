Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A7F22D781B
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 01:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790643634; cv=none; b=hLziBcWWIBqRXqF/NbRxgg6tT7W2KtCt7PaHdIo3hFtCIcqocch8PXVtBbhI18gMUT2o+oxoxrAb6/gg4jpbM3TCZ0RyD5buLs4Fin0isQoRpXWHtdtew6/L7B7F2bfp6nG3ziIZRDXc60TD4TREDNsMoPgMHAk6SOennkxIEzk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790643634; c=relaxed/simple;
	bh=yNsBlvj0wkufSaFaMOysBsIKd6RdK7shhV/AEaHoSqA=;
	h=To:Subject:From:Message-Id:Date; b=UYCZ2kpLCxNRx4d8tzhcKR1zTsdNdYJhM6HwvGmqCHbmuw26JO0T7DQ4/igi5HdKQcM5KptIricwXyoDaVnc44TkSDnkAbsD4UaCv314LWAy3Ax7elFyi7l+DTn6s6Xs5WaCPvSd87Ob0C/86MnT1Pl+vkCNcz3Az2DJ5Jmwzzo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R2Uehcyl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R2Uehcyl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDF2CC2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 01:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790643633;
	bh=yNsBlvj0wkufSaFaMOysBsIKd6RdK7shhV/AEaHoSqA=;
	h=To:Subject:From:Date:From;
	b=R2UehcylOMIYPGaNUWHo73GCo0vbA63o64zF0fU3cCODzolcN1A9eltIDR7tZR5Xg
	 PI4RpTS78UncErLRggy5BUekJ689b0VZvCKeQgqr2XAMcjWItAaN9lqNK+3Y862UAG
	 hnDuC8cADNjANaohaT9c4kAwoy6uv5ZnOQXB8cRtHsd5OriYGOJ10FbODGgFfRIw7j
	 IH+iPQqsKKBaN8FXCE2ZXQg+8rneiXuBXmtm54LTKjdGBBEP436+ZyQvuD0EhR1cRX
	 3MLVBM5Yz4m46UT92LNlR8ff+9ZwottcwTBJKANppE05m3879XLuDeKzGLZaTaJHB4
	 rtFydHudBRbDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA3E4CA5FAB
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 01:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179064363368.14189.12547986998698950636.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 030f6baee1ce01a0e44dcdae4ee897fc272b25477adbf3f69186e4ef71544e3e
Date: Tue, 29 Sep 2026 01:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790643633
