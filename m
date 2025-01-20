Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C86481E503D
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 15:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737386753; cv=none; b=GOS1G5FghIoaQuJv6jbz5sM0zIPgqNHWwFWttbJzEute8Mzajdw/TZhR+jqiodwMjueQJNgJ7cwhMFyWfGE7CtnyazsxCPYJ67ALkCJAmEJLwNUz8f7fHeRbotm+/E+rWYYKpD1pe/ab2fCvMdLKmopf7WkRKbTIUygklks0zhg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737386753; c=relaxed/simple;
	bh=jnXxRJvrj5bJ+3KsLWSvEmb6I8o8Bol1KvSK+UFmefM=;
	h=To:Subject:From:Message-Id:Date; b=YcOTcw3QkuYIwnJ8Qe1OJbnRWMEd8RyCq5IFjhwJStz8b/ViqVpyTxrmBIV8JEOoS9vyrz0JUojO0XOqESl0Xh8q4pBtibLZbBptEFlTfqtIomQmO0LkHyjMqsPqEWS/Rgyc36xbOhH/tTbJLSO64CPy8cQ/EDYdx5C3x81d4hY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vDqeGOjE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vDqeGOjE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6B78C4CEDD
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 15:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737386753;
	bh=jnXxRJvrj5bJ+3KsLWSvEmb6I8o8Bol1KvSK+UFmefM=;
	h=To:Subject:From:Date:From;
	b=vDqeGOjEosus/AliDRNa/NKDLf3pAb++tpMMeUnQ7H/DERnJMjnADcu9ruiN8w9pW
	 6nC5wVxy8avVu6afkpmP66f/M0vKW1EPvbo4NzvIf0oSSwY8i8lX9HI/z4tVK8GwR2
	 iUduJ09aWP0x01Rq5nKdpNGtWyoPbf8e/y1jmvrecTQY7bMy75Nukju/shMR1mbHba
	 uwTKzk+MgnsD8cZXqf+d2w/JkDKzmIBMVXY6RFxfeHQ4SRm7t3tsxZq/+YtEs3bKk7
	 si+/ZJKHJZtBjRh4a9o1LVauHW05VMaFB1upxtBuIIAfoSLEW+LgeVbJ/wcsqu4Y2M
	 GwFG5Gs/JTzeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9365CC02181
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 15:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173738675359.14482.8355483059774986168.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c27079fde93caf441f1c740386bc35058c55b62d7aa6fa27f079242fbd0bf468
Date: Mon, 20 Jan 2025 15:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737386753
