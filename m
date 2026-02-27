Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FD7225B1D2
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 09:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772186094; cv=none; b=FLZymRzrA50WlKJ9liXXrqFGbo/UBQvY9PkS+Vpy4o6lGYQ1fUPX4Eowtr7c4gdDjp1Xbh8P1iEeV8vCl8U9kYJG8E4E0DHEIA5mERIU4g8Ek8sLC6Fk2cl4cs5dFqZgPpwxOVG6jlNYy4OH6wtExOsMvRA7QdtaYFgikk3QB3M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772186094; c=relaxed/simple;
	bh=huQMphfRYWh5h9Eln+AduzoYwzUJkZEWKXUCj4ekaA4=;
	h=To:Subject:From:Message-Id:Date; b=Kt7LYlg52J8XiXjHTORvKgOQmPAmT2WukhZJpSOZnXuGhJfPEF2uHksjHjcjZ5QYoCh3wiHjJIgcs2qF98ErWfyRtUmQK2XtdIQ+AjdYEmOJzAPmyWPvUCDsIUkzlnBZBZShzuKrb8QUXwFeAzwsusaTX5joiuYrtDTO0dOlHeE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=djZevNUA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="djZevNUA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0097C116C6
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 09:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772186093;
	bh=huQMphfRYWh5h9Eln+AduzoYwzUJkZEWKXUCj4ekaA4=;
	h=To:Subject:From:Date:From;
	b=djZevNUAaGe548xRnaA6EJnq6OVFqdkqnH7D0TQlnWkv6ukwms2Shx05OcrC4In5/
	 Geopj6ne4SqPhl0gmtQRlQ4Qkyh0N+lophGYODJoNDQlFUf/JoOIUcuPjhRBn5SD1K
	 YfYZNj869RuqeGRGCRrvU4MNBryoJp9bk7gGJngDUx34xtJdmpav4+yvdD+SivChWL
	 rE8TZ1mxmanRx9g5T726/onSqWVxp9DehijnzdSbNdsvPnizl2muLH4WxShWKrOYg+
	 6nTM4g6jYhvOVb7Lz19JshXhqxuo4xKTCxtVmYRDQwlXkRXazeKHZe8ucoO6NJB00W
	 JIzxkzjBA4zUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9004DFD5327
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 09:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177218609358.24918.5369592805704664549.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d16fd380d455bb655d35eb2d19c28e060908c7aa65fe83a8b8bee24de0db7da4
Date: Fri, 27 Feb 2026 09:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772186093
