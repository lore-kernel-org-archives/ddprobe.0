Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5B48310782
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 16:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771691093; cv=none; b=mm76z8TcpYpRWmveJ+s7tmgApnxZizSUXUzUt4SqgNulZwlPvqOE+M/XYEfLq2cr6hvBkuscfsDH6f+cuSwT7073tnRrdyZYETFsDSkMz7zDHfO5f95Cxcf3LKuuLdwEVpsWxjRnnmK6BN6eS2zFQ51L/B7OprII/mPTRDrJ/VE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771691093; c=relaxed/simple;
	bh=SSbomb1M9baDZ5QryLretRWAdUAnlxaBEP65naW69ZA=;
	h=To:Subject:From:Message-Id:Date; b=WKK92K2MfIvEM3iHN8v/fyutNCmE197FMPRGEFiML4WlR+1caX9tg/skYBng8KH21tIjzFthqltSZqPC2JgBWJMwx4A5EzRrT35kDNbrQi7YUNQlF7VJC/taDqkX3M6yWw0PlAPQm1qIP9i/vT4JIRebGUrqIBCVS6RTSfW9I7I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K6rBE5fG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K6rBE5fG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0CFCC19424
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 16:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771691093;
	bh=SSbomb1M9baDZ5QryLretRWAdUAnlxaBEP65naW69ZA=;
	h=To:Subject:From:Date:From;
	b=K6rBE5fGeClU8bD3GUkA2ZhSIt2Hhp/PusJXKAV4qTn+tOUDb1k4hP5ziyaLmqieU
	 Sa26vnzS6jySoaLBYHViK81QreKmzC3ktT8JrQ601/bAGDIUOf2gOnRUraeFku4Cun
	 7zMi/i5SCnZQIFSXgfZ/Ck0BkkHo8j3ZPn8IO9/7smpd26pkhpzvf6d/xbXECAJPWu
	 IqmWgEnR8tN9K7XfZqLcVlw2KeErb56gx4NMsmN7GhVuhdv5NFZ89q3m/0WW5ECe08
	 QcnfTNgVUla/ILW0Rhcyv01KuIH0sD2ijrLNcP1MdvPzn8kobGotjApcDgnEVPQT6Z
	 AW61XyPrVdK7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BDD4C5AD7B
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 16:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177169109359.1397.14299690887524326798.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c129b2184ffbe01281ebd2aea5b9b6474af7aab10789de23a47ff82464739e6
Date: Sat, 21 Feb 2026 16:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771691093
