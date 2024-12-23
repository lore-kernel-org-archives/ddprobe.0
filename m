Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA01213FEE
	for <ddprobe@lists.linux.dev>; Mon, 23 Dec 2024 23:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734995753; cv=none; b=k/5m/Clsys2zGnfLDhSZe1p5jLxJv6QGIbLyZl0X1NGsRNNt6FcbZZ+cm4gwGz/ZIbiJVTp2f9ccfdYRreRnMFwVb4Hcj4k9XyAQW01gQbDB+PVqAVgRpkvxx/25IiBeGFjKAC/TZywrpDNpWnZF6typNs+p40pjwgWlJkftY78=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734995753; c=relaxed/simple;
	bh=iz41tiUjVQH8FgdfU4vQ9Pq/tMZ8l0DmATh3JhiM1S8=;
	h=To:Subject:From:Message-Id:Date; b=YnsiKmd4pnn2PU0j4AT5gFBx1wMjUOWYSVXhc03GhCr5bMBeN6I5CBoMm6+g+LCia145ukP/zXzdRy4ztq0VIEjFQA4W7tyz8BROnJLJCHFAWF2s0DD6HHuC+SdJ46JpmN8BgrvHq/GKhDAX1zcYBfVdWHI+wPcair1kc6RdPJo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lTNDIX/N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lTNDIX/N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9A7CC4CED6
	for <ddprobe@lists.linux.dev>; Mon, 23 Dec 2024 23:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734995753;
	bh=iz41tiUjVQH8FgdfU4vQ9Pq/tMZ8l0DmATh3JhiM1S8=;
	h=To:Subject:From:Date:From;
	b=lTNDIX/NVgKXkKIU8Q/mMALkldepUC56anQErJsoSH56BpTGS0dzFJCxKr7ANop9u
	 G43scKY9vtUAWixDBARw5oipzc9MlH1aLn2NwtNLfsel+hlr6juD5BX5Scp/MOQCiA
	 YD+3ErDA9uKxUW6VPfETIUKiDuzv4pbDWbhGRRUlzAPrMOlsf/DoYY5XfRQz6E441v
	 HCbiiRQYryEae9YsCdh773Z/D4KKJZ5NlTvfGk/XkONQ5Lxgh8PmFPzZk/+ah15miy
	 X5nf7OEqgPTguQ+JICMU1Q0vusn5MZDo15GKgsXgWUWIX+DemeVlnOIOBQuvuGJ1+8
	 MCdr4rb6sozkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8B6BE7718B
	for <ddprobe@lists.linux.dev>; Mon, 23 Dec 2024 23:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173499575368.17788.5691253507207988140.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd0b4cad24cabd30d6d13ddca517392af48571235b76fb65547e131299aebd33
Date: Mon, 23 Dec 2024 23:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734995753
