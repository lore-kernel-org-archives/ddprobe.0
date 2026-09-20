Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35956371899
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 20:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789936234; cv=none; b=dItvZwxSaF6dFxkHHHUPdj5r1nGf4u6LJR4vSZ4v/HGWNsgOBy8zKj88qhdyP/Jxt+HNOcXmbUQ8BwKtIdPPpdupAbUtydN8IwFyT1ngpXnwFfD0fgFYuNVcYgjMl2+6Ppc5Uw0GHSI07gxsYuKnrxGP2WjGXtZUqR3ktO2yChI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789936234; c=relaxed/simple;
	bh=+YFrPJnVxTkCZVs0NwBrNOIvdiiOxmJxzH+2orTj3Os=;
	h=To:Subject:From:Message-Id:Date; b=iw1jfZfrsLjCKGz8foyoPm0t4Xsln+1pqNeGOK0nVNflVExhcFZTg+E+pftNmIvRxE8hvGO0nBkptDhKkkVKGsVxTRbj0eyt5zu+jjLd9Qpik5Rzi2DEPMuc1r28iDfsOWAM9AKZyDn8XMUQ4fY8gyP5xXULtBf86kYSKpCqIwE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dBGoiWtj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dBGoiWtj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDD1FC2BCF5
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 20:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789936233;
	bh=+YFrPJnVxTkCZVs0NwBrNOIvdiiOxmJxzH+2orTj3Os=;
	h=To:Subject:From:Date:From;
	b=dBGoiWtjSvPyjWqfZH2lW8NdrBEqC4eHDhMZQAzuKhLME4Ijy4O/Gv9bDQ4o/VfUu
	 5ioXZWeSLO8igW2oMWzW1mGbMrczE0TvvBlli+GdPw0DaxMce2Vu6hXrSeaqRfwKaK
	 MEM+TPIta3lXJfviPsMPmmwzD6wV+Zm8LxB/e7YLhUT9Mc6nT+h3hUnH7MrkoeMkbX
	 aw2HhppIA1pyB7bJ482VoS9suLNiJZ6bKJkk1CnqLBYAaJH4SiQI9dsovFW6dqjNqk
	 NNDEDBV7UwNA3q7O7pDNEDc5DQ4f589Uj7SUOm7ycCBsICfU8Qj7I1+34HcBXhQ6IZ
	 CCLxJotM7M7ww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAFB3C982DA
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 20:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178993623369.19121.7013067289975886224.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75b51fd71a376aa4b4de92dfbbecb1964a07802b985ac8b0c10d5aa3bb53f194
Date: Sun, 20 Sep 2026 20:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789936233
