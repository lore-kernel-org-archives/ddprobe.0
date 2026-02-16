Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AC4923A9B3
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 10:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771236294; cv=none; b=HZlmh24ACswpxMbsj6+nO2jlXAU9S/lU1ccrCbpKTSQIlL0M4IRiu/0e/S2zcDB+/z8RWX5HQL09LYJmwoundq8JsNExhDfu8jqVlQCU88Bz9f0glhpP6dc7erUkoRpTyD1v3vsrydHdjMwfil4Q4LxIPENaxeDHZdXomEAb5zc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771236294; c=relaxed/simple;
	bh=3SDp4hRDL2B9VrNz43cLanL4FyhBq8P1qKt9G3X5q+I=;
	h=To:Subject:From:Message-Id:Date; b=qL73ltUTZYbD9NWRdpQYn6C/nJUSCeX70yxoY7LYfu+RLQV7rbXlFvei9EEV/c2OpTuANXAIwmyywb/QHk5rYTJ1la02odYj3v6SFTTIDi5h458BFCUfsf7Cc4JGM4WA23lqEnlyUxHcT0lEeaIC0w/oCV8cMEHItwnpMdDKgLU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oGn1MIO9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oGn1MIO9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A52C4C19422
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 10:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771236293;
	bh=3SDp4hRDL2B9VrNz43cLanL4FyhBq8P1qKt9G3X5q+I=;
	h=To:Subject:From:Date:From;
	b=oGn1MIO9ODHD1exPPU+FzvTmCGXSVVeB7v8bcCkL2tmOD9RT+vujYAKql7PY/tBh2
	 dpSf0XbiDiT51Lv/hshllfxaYsxVXstA/6d17/7ndg/HTzNR4XYOegzLK8wVT6qmkJ
	 ib/apHq8OkHNaZbWAK5htargyLUQ0xnJXNh4U6j2u2tPJSDNjcYcPadsxiRFsmHcL/
	 ob3anqevoLWmv2VzyDFTaBo1Y3wNXuzugvKGNH2XwFhCQUWpW45PeEzu/C0phUgfD1
	 aCOxmt+Eay+yhLogfPHqH82nijnZq8txbwfNzN6wFamC+0wOGUNQFkDq/frerbME96
	 OBdcqsBnEfQ4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 931A0E7BD85
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 10:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177123629358.21260.5972406575966890575.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72056e50f51bd85bcecdfecafcdd72929225642a163bb3f4b9d95ca7e6f2bb56
Date: Mon, 16 Feb 2026 10:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771236293
