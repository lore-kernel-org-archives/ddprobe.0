Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C480A2264DB
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761456594; cv=none; b=tDMmpWRuiF4x2IUfhMR0EzZH32IQbrCjfD4z98pRymJTvFVqTvEI/5MPABeNU+5nheekru0PJc/QnriWgitQbVt0Id6chNGpDdBEkLk/2XWlgGi+8bFgtGycNBPOZcZLZfI1ODNDkph7GC/NpFB8JCLY0PvAFUaMRqDHyKlatJc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761456594; c=relaxed/simple;
	bh=RADqf9Ly8YuTbYOWbLXp0S0lCcxRbqkVHZJSaUQiTxQ=;
	h=To:Subject:From:Message-Id:Date; b=gFovFDjWgBWeGWyAXlzi/pj9nUsE5P6Nx7+Tki6vuMkJE8TBP/AhlG3VHhUA98m3nkbd42XHUyIPR+AstAQPXa/cZgKt5Qaq+dnm59CqvBM0ypbhXXp0Gleg+CSbBFAsvgoq5eGG1JnSmssIMWCW1n6SgbfRh9gidKz/dTBdW4Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S+rlSbd3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S+rlSbd3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8C08C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761456593;
	bh=RADqf9Ly8YuTbYOWbLXp0S0lCcxRbqkVHZJSaUQiTxQ=;
	h=To:Subject:From:Date:From;
	b=S+rlSbd3RH23qmW7CW1uuXQ86rN6WMBJRn15KweOHX3BUpEdVdvBdKa58DktFg7oY
	 R2cumVtawxkIYe0IrLjwaNO7rCWJlhDmsp1gSrlV97xeYRywLv0NXa4i1pPM8W3Kr4
	 G2SP3n/WjlO3i90octNUCwfGnMbFbUZnUdFZQhxoYGl/Fl/AVVqZhJwBIgJL+qV33L
	 d6eqI4F3HK/W1W9GufnRFWWiwc3KWxYehgu0lF2g43fOhYYdaL68QR1hsBWk27dDCp
	 jXz9HwtmjPbgCi7GGMA+jvYptjifLtQESGHk6X76nNcBqAoCPSAAzeIzYMI8gMbaIv
	 wmPW9wVpg+47g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92774CCD193
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176145659357.26672.10879590536708017353.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a6412edcc68060ad2a43487ad0f965811db370ccce513ed2a4a0984d216cda5
Date: Sun, 26 Oct 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761456593
