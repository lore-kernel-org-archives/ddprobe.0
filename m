Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A4E91EA65
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 00:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776732454; cv=none; b=EGPFvdYUv6Sjgj3fZ2NiXwomN4d/csMN6KaOG+Ic7bHeasX7SfHiRIcK2QCVJd8DPmmadkkmNMwmJihb/nXFUCS50CxS1X7iRzw7i7MWyugpx8m3Dfpc84CDkLf8wSEGPhjT+GOAU8jvB+7T7nzgwR2h1R8bFz0rRKvYYYmlQNM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776732454; c=relaxed/simple;
	bh=CndXHH7xsuVWhIqC7lI+2GjQfDSC70v9++K1JuWXaUk=;
	h=To:Subject:From:Message-Id:Date; b=JEbkdKRMQRGGbV6qrOXkNMbaSYKpPtA8s1qTsx3VoNz0lS6nZpNJT+3SJaEf3iwBJbE266VqrDyum0QBQ8WeCoNp1kJMKjxPB0j3mL0HWn1l9v0O8e2oR6E9BnvRskRKU3gOOrtXo95lIZrRo1014JpqdwC2Cqi4UvX56RyX/4w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YWQ98zvn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YWQ98zvn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C244CC19425
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 00:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776732453;
	bh=CndXHH7xsuVWhIqC7lI+2GjQfDSC70v9++K1JuWXaUk=;
	h=To:Subject:From:Date:From;
	b=YWQ98zvnUXuUtEwF9DTdOS5YO95YovtDruSB3gCKJ4udlfRHqQzZYR7FJy8gg1JMu
	 FWnOGNwB5AtnDAQRQn/B/FXcH8akjsX3UFw4pSnObWsZIL3SwvL+qdoY5J0rxyBgGP
	 s6tetTOLkxd0G0VNBK8qw6KCekxozdLkg7HJOpNQd6dDa2zJJ/Qrj+yjRf/ckjGBZA
	 tsid9cPbliV6TSti3ptEpd3tLE06i0M5Hu/kB4GQ6AFFnPLmjvBIcMxNWPCJQ5NT7K
	 cKOY9t/6fHuYdGWPAEi+VdptdQnCV49RXsRV1fq4LE5fCojd+gRQVs+5nMvQuu2sKt
	 GI/QqiygUmNKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACD11F5A8CA
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 00:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177673245368.29221.2481620095267918744.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b11397c44b12fd38704e457ada0cb7eb26a07619aa3b9edcfa7f1aa7d05db27
Date: Tue, 21 Apr 2026 00:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776732453
