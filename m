Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57FAD3B27C8
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 19:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778699434; cv=none; b=mac25x1tUtaJiWTceMCC3f84HRpJY0tGVGIFfDUQkzSSKeqjCa9a2qSD1W1rRntfo3gCTxJK9JWwszhdswmNIqYBxLmkATYz8IZQOai3Gt4b7Z0Wr0VfCH+D/DFIvwqZXSO/RBfir7SaEQZJIgR5//pRvuRzjAQof5kSULuNlzc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778699434; c=relaxed/simple;
	bh=1aqJ3VitQ+2KxeSMjs40q6FquqfmzDXeFYjSX14aJ3w=;
	h=To:Subject:From:Message-Id:Date; b=ehGXlC0NQ66sn16Sp/kyItg/eOFGB7W5e47XG6MGCHZUwviZMEvN92HGAP/9/OicvytPgwg3I5Df97LrR36U5PuPgCJQVNjEIVtrdSShLSqqSpARtCAlhoKldUotwMfso6VavGO5I4Csd1u/mxvC0N4jYkpA8Qd2h6Hz+6VmR+4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FzEHJ8gu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FzEHJ8gu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA74DC19425
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 19:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778699433;
	bh=1aqJ3VitQ+2KxeSMjs40q6FquqfmzDXeFYjSX14aJ3w=;
	h=To:Subject:From:Date:From;
	b=FzEHJ8guVbQla+OKpNeZESm+G7tXdWVU6M24Yw4rdmJHRH/1OYR7GYi2hvcR5SZpH
	 TdrQgcwLjAsHiwOEJsir4NnF2NfF2dOxHYNnCUfvnbbhaqNCFd0DuVoKkQPaLbbjW8
	 fn+uTwQvWr//Capa61HSpBYbSDfwbCKc1Cq1JmWSRkJjVJpgEYFJPs2jK10U82lA++
	 9Hx2KUuEHZF9TLMT0UYIulabm1GXcG+v793RDfGpVuaej83+W1RZy8pNCkV5GpS0yw
	 h/WY81jjmhVOEKTockIQJwgZHShTLH6z9dU332zEYkRTbgR1yL6OwfXMHS5xTmBE9Q
	 k3rmP2thp18Og==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC977CD4F21
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 19:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177869943369.12117.14738143233623982980.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: caa3938af0d6c5c74882e68f499479c56ad5569e4ee3da8b72538ce43986ec23
Date: Wed, 13 May 2026 19:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778699433
