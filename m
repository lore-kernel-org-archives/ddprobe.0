Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6279A345ED7
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 13:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789392034; cv=none; b=hiPfxFAai7esYe+tyWOQ5dcCnbpqcRVA589L5XdiFgYua2FIdY4nXs3pyvv0qjS3DtIFvaBaXc9bRVckEruZPglivDXqQJtMBYRU0xXf6UqkoGSwtbEF7kRcK7c9NTt5Lwmoa8va7CPp4TrWgjZ/+e58iSQ/LcrEboda6BGabZ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789392034; c=relaxed/simple;
	bh=ZjunH8sGSw/+bVuuLkCTVWk7sI89CBfIFuCMPgGNCys=;
	h=To:Subject:From:Message-Id:Date; b=NPPznQcgY+Rtcf2YwCDRfJn4qRD4Q+I72HmJNlOeWcVBY8KybTUCS10je8ocWNKuf3lzQHTXOjK/t89G74S6ye9v0YPX2nIn+ExApgeDDDHNTZ4+0tHQYE+vv2A8CPOvAQIE01Qt/2+wNfr3q99L3Hw2oLmW/UvrLXdOayw3B60=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FDUYod3f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FDUYod3f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D38DDC2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 13:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789392033;
	bh=ZjunH8sGSw/+bVuuLkCTVWk7sI89CBfIFuCMPgGNCys=;
	h=To:Subject:From:Date:From;
	b=FDUYod3fqmKoCiRaC9Nzn4usBTDUyo3eACYgme0VDvaY1VSQyeg3UPXV/UighdZwQ
	 tb5PnmbawlPAnU4T9Y7MzIdpn4HDmllxhZQyD+0MCLSF75gvI0SsWLFN5k5DCtnnr7
	 cY3tiBVhOVnR3J4SGAgeEYEcqRhXUmlnYjZA87jBjlrK5VASYUaSe+JTudMe+T1XW0
	 PceIZbECYZKsXMoCDgyqHIJ6kAr/xARLHw92pvrQNBz9B5xc/GCsAaU8lO5AV1Jpja
	 gdwNrbOnUFsxags13piUOSZv3e+ogkrwuk53X7iAkULyxE0UCnzBmadc/67A5VOrxm
	 cJTh/AujOxPcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE6B6C88E64
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 13:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178939203369.19971.4992395818526744025.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d958349f1eb67bc8d6b6d74451084c2c8483a254af6df921997b0288ee791a4f
Date: Mon, 14 Sep 2026 13:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789392033
