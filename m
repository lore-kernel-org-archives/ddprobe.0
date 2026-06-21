Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6464A37B002
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 22:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782082594; cv=none; b=Vx6WVbQyVuQJ9bgMnaQ4AckdlXXJeWu2IWCWNulOlVfLd7nbKvo+IOSJKOXy1Qh61tvo2oJ3bBDHTxcBYZ2VuDMys0nKfOdT4UdRs5s5jksa6YzMcFW/qG9tqRUyhpDjM3+KMJovZ2pIkwmby1VrMOwH0dL3Eize3tChIwscp3M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782082594; c=relaxed/simple;
	bh=EMUAjKbvRZqLyV6+SJ27bZXzkybc0wqKYTVQnBHfaUw=;
	h=To:Subject:From:Message-Id:Date; b=b3w3+RMT9YUoo5zp7ixfCSJrdgjUsCknEOpWDkBhZwWARu8vnJzPf4nYr7xhUbrRSiPdJ8jpDqka9wz/ehIWiNeJ25gS2EdogaXzXFDb3IF9k0heJTYoFes3+Vttqnt7yZkdphRCwE/5vUUFPCeGWXnoev8rVN/qv9B9aD4M+/o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LhMpzmgf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LhMpzmgf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D61A6C2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 22:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782082593;
	bh=EMUAjKbvRZqLyV6+SJ27bZXzkybc0wqKYTVQnBHfaUw=;
	h=To:Subject:From:Date:From;
	b=LhMpzmgfOwX382ZYj4QYBdGjKolwIqtAe7XSLUyYI4YqZeJtZPBQCZlqrd1NXGjRF
	 Gzmydow+9Mc/n7g9aJQJ7MtcUo2TpqsEseCP3xwWBwaFALYmxGfD0cFr8zCmuZ8dIc
	 6c/elglIYe8kr2cUUneL9qXwSNUtgPvRSdAbH6h6xBj6Al1JA6ysrV1quHCZtSLZ7y
	 Y2T4BxdmB6UwFZR34lyRz2Pw0TAL6Senk5JJ4kHjm1Ze4lL/YND3wHs04MLAR/ADif
	 Qwuqu3UOg1Mo1TVNibUgOilrc8SF8Utib5oqPaiq5/vrwdZbFvPgckw3A+f9V5754I
	 aqIZV+u+rfuOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA82DCD98F0
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 22:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178208259371.24066.3034023889502556229.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 671b9f22f5d8b5b60438d005de9216c586f19d7df3e997784518f69586a8c875
Date: Sun, 21 Jun 2026 22:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782082593
