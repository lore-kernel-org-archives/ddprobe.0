Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D16918E1F
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 20:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728160554; cv=none; b=QHt+6N9ycUP0O++g7QIIYhzWvjSL+L0meqnSBUuIcv0CxhM5vIfOnESmCkXJDAwDpZ5PQw45wqJ7ri9p5C1STB0QgpX8JTv+jFBGhfNvP7lpyPmGuzPv/YGPu4k9qhTpXirKtsQStAOuXCI9BX6e/Vs0bsDbcEis5wmaAW2AsWM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728160554; c=relaxed/simple;
	bh=zegwgkyb4I6qM9x9x1QIdYa6VAr1UpWOkWMZYuKQZy4=;
	h=To:Subject:From:Message-Id:Date; b=pawyRtpxzwQuRQaHNHIabU9p1SMqMPh94HoY196Uvf7zuGhRmK+AEyZrukyk9r6R8GRkElFG0MBKevKdBd8ej9dG+6qG1xaivg6cMfEwvkqnppVNlOb8gHYVIoP02vcUrO/ftlGip51W8uKMuWlqjBIwALiFOfxCPruihNXpOzs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WVnDT8D5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WVnDT8D5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1C46C4CEC2
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 20:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728160553;
	bh=zegwgkyb4I6qM9x9x1QIdYa6VAr1UpWOkWMZYuKQZy4=;
	h=To:Subject:From:Date:From;
	b=WVnDT8D5mdepnrm8d2EOf2Sxwxg4/MrKxS+mvpJF1tecSjq8DlGnWpFclb2/m5lBs
	 HXYA6/AzR/5ooxV8S4rDb3TW7OXIosKzZefnNJUdadgK4+goOcBDOFVaNv8nBiainy
	 IklTHZ6lKoGZg7+0kF2jXQx88bm49dfndcbkRv+QktXGPGMDINRmu8C3tW8QMZoS96
	 8F/o8GChVGxUPqzbb60jTcHvj6F3CJSvKVZyWHHOpEoQadLwEibQe5jOiPbBAnsQpP
	 wrkunIC7Y0FzSPIZv5dPhdOD9tGl3yWFZMl1l02pKJeFUh//NT3LrZgsM0p/QUxlej
	 AZDjaH9L2u9vQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95B92CFB43F
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 20:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172816055360.2532.15341941033596935130.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6e1b0bcfeddedb9420f3c0fb388262bc6bbe0c5cc6d20a056b462c232d7115d
Date: Sat, 05 Oct 2024 20:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728160553
