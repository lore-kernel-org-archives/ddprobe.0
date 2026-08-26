Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F4F738BF9C
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 22:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787782834; cv=none; b=Ytb9S3clRVsOPkU4djAP08wKQrgxcS/SOYYxuRTLOrtcWdZlKrV1bvG/7S9APvGbYGwAfJkfbiXpa1Lb6n6DupReembpo9eQwo7Kr7xxillE7Dt1bsbpPo1d591va7ne5VjnUimiQCVJsJi2CvrGxS8ySVKB6+wTRbxHZ5+HCso=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787782834; c=relaxed/simple;
	bh=Qh9EWruvRYjFM1yGV0CgWTE3OY6V60ElBmMHMvjHur8=;
	h=To:Subject:From:Message-Id:Date; b=TxNoJEHgIrX8AbqLC0NIfAAjLYK3fuBqOkwVZjDlZ4qZ6mQUP8C6VMov1XyDKvbSM6zZvyFLSxmv6dE7Pbmpq0SDr+mXnIko775eFyrgtcTD6P2EfYm7GFW90/Kdgf6vh7SHJIRxmNKnjxce7BUky5jVFB+HxPl4IFwY+xdHbTI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UZ4w6ZzE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UZ4w6ZzE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5331C2BCB9
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 22:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787782833;
	bh=Qh9EWruvRYjFM1yGV0CgWTE3OY6V60ElBmMHMvjHur8=;
	h=To:Subject:From:Date:From;
	b=UZ4w6ZzEdsurwnHtwtt6O3SGewyK16lQcaPWYpajtiqcxlYgI9uUao9T7N3eAgRxH
	 xevSbSp8NnTaY07kYISQlLqT4opn1IUUywZ98wPhtoQqJzegyT57tLV7GDoz/Smka0
	 uLkx/YKlFyKbKUT/GhlsQucIzxrCHG1kfH/GQQPdvbY3PqfiTk0QWEsI3IT7Is+32k
	 NcFcuG9GiJ+zILMiTcEMGMq+8kOfaDzv94N9TrTlGAUqWbhnAZPF9+Q1wCvG1saMFs
	 DucZW8nRAptksPQmyIHDoAkIqVf+LqAL54r6SUKmVqVh0EieOHPdlKUAy8Pj45uWRq
	 u3TjFBlhvdXJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA50EC5DF97
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 22:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178778283368.27403.17704068577646877686.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bbd3016ff9d01f2f6b1705c87f81f8ee06ad43da4240b56003c3cb82abae338a
Date: Wed, 26 Aug 2026 22:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787782833
