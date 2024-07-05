Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 675431C6A0
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 05:05:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720155923; cv=none; b=rtAJLNj/oMc+QufieU/znAGs/oQal6SHvigIDhdomLUmj7Marx2EUyG8RFkImwkfcRMyHOjahjxf9JAyjbUausWncO8SJeyjSpKF1oZzaaTeKimr0F2BtLyqMH4ZLy5o9F6o2FsIFnoRkTWdTeX5f08Bh+zD4MCFsWUGL0GleIQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720155923; c=relaxed/simple;
	bh=k7RmwT5jcfm66rfH3Tva6BJGS9wVEc0FiVwgFpzL7EA=;
	h=To:Subject:From:Message-Id:Date; b=dR9STlIO+kcBRWhgy/SIcasKglcXc6WdRbSfuaiNoP+VhE5SpKJL2Vkhfcj3yOSeb9yJCvz/ucVePNohzqmwsMtHKaCBvbrutQMfG2KAgA5WOzMUZtQxnkB5MXccZ7hOYnnzBEokcf6LAUCuw8sSXFS3scdcVswDQUCP3FmSaok=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f+Mx6e0Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f+Mx6e0Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD50EC116B1
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 05:05:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720155922;
	bh=k7RmwT5jcfm66rfH3Tva6BJGS9wVEc0FiVwgFpzL7EA=;
	h=To:Subject:From:Date:From;
	b=f+Mx6e0QjFAgWUS48iFcKKNvQ7URthGuPnH96D0mUjvA43CW3bQIcUE9wMUmnrSti
	 oEXrEA4CcoKMgnzooS5G6mK11jZaD1JAIDBbXX19uN4fD74th1aHxLu7wnq0rP3B76
	 VpiVtKIjTxex3keWWAnq9ev7VT9+O9Pf6r8ZTTDWNhTgYDEKQDF3bZqEvHnYEglBxz
	 VbErNIn1fD93JZuQhdYNmeJDbGa4A8JKPIwrtqR27gSaib11LJTmaZLD8duPOl9l1q
	 P7o89J7MjDK3GCOLMAgb9MtoBC/4PsRhyXc3LcI9mDvDxM7aAf393QAZULsriN3Mk6
	 IlYJxlQukBbfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4BD8C30658
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 05:05:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172015592279.27243.13301385877485322422.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50ce774bcfc48db87625ae48730d3c4add333ae1103038300d55de4bbfb50154
Date: Fri, 05 Jul 2024 05:05:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720155922
