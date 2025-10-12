Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 448FF1FDA89
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 16:39:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760287194; cv=none; b=FM5uenjpP9woONT0iT1Qj1u+EM99A03o2F+iCLuWKy5HdN7cKAPpLyZOPQlaXiJ3Vg8db2507PCRPuQR8g5XdT9Gb4KeR9c68xswVefmoGJ7HUDHXDfGCHg5FVfxUwjLvESeapaqvLe56bRx1rAp41XeLpZUzJfvoGjNtB4D924=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760287194; c=relaxed/simple;
	bh=lKKPX1axtnDaudEa65yeudDXS4wknWdoe1N2Ahh1GfM=;
	h=To:Subject:From:Message-Id:Date; b=N5obu5ENpm3hIHuagSfJkLwzFPnW8qw8wKIaWBKRZ/orT1ussDfgfQ6pq0468QnhuULkSK+crre9FQ0fIDkp/IieRUURA63MXAgAvPzQLQhZzGYfJhDAoW+gb0InPHZbIdtjmX7dVOs7fZyOGl99DMeK83hJQuGqSr+SVgjTXxw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UPJkfEmA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UPJkfEmA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9295C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760287193;
	bh=lKKPX1axtnDaudEa65yeudDXS4wknWdoe1N2Ahh1GfM=;
	h=To:Subject:From:Date:From;
	b=UPJkfEmANb6yp+Iweeoii525/OZIWYxN0yKWpC05+ZsOpdTgR8zq93NoMBlJZoGpr
	 fQJ3OkwwtN0pQ2t7MHaDVlchwmlfdrX43HlJx4UFih2zx8hL3urLyXjSqXNmNO+TfU
	 5ah6IKSrtkV0wDpV7E818Q6aACCGn6sjFjwDvxBA665BVMxhJc1ls4makyPUrtuGSy
	 FcR6G2pVG3xueXQZLL+Bjz9rcuVvf1IoloiuG6CWOTbj3nzfKc04Yi9+bq0StgpOqo
	 xuByLYHtKQGCs4roMlW2+SOBnKCTfNURKmTb1vr6tKtQ+Wepl+8z9Jz3eRjZVXbgnu
	 Nha50COBDVaoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95B97CCD187
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176028719358.19037.12665193440268179297.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1994070ccdd4e3ab19ea802c1464b118b450aa0f35f48009603f0cae6c6bebb6
Date: Sun, 12 Oct 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760287193
