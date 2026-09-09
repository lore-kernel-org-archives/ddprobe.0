Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D74847A0DB
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 08:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788943234; cv=none; b=PwN5LOidEiKKgaj7qzaqrMPXaE6Mp+6DkxLW1dukdmnpp+dcPlNua+9pB8FB74XebS/yBXH3ieyEM/+6ErAPSMntndhOwbm88NU52QGBh1HUmsLcaLhpNVNzDGWdnGMxXOXvFxQrqmRQE55fZyIZekMDAlbxooaY7rYsjqaeGG8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788943234; c=relaxed/simple;
	bh=NleorsmE0Lv60ri4Xtto0hoTndOkDws9zlZdhx8IwpM=;
	h=To:Subject:From:Message-Id:Date; b=la2wcSUby9SwzwPDY4mqUXaOm+iAjGRT/hle071vhKQH+yAMbfO5OwFxq893P1XJKrBrxtghzUPyBp6fi8OBO3u227UcxLwB6nnOk35/j3al9IqFfpkxrrGjjLdXBRZ7CKR8zqW9a9GcZj/Itg7z1NBw7MGWd5qhuSP1YBVpyRk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h/seQazo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h/seQazo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1B31C2BCFB
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 08:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788943233;
	bh=NleorsmE0Lv60ri4Xtto0hoTndOkDws9zlZdhx8IwpM=;
	h=To:Subject:From:Date:From;
	b=h/seQazo+JmnqF6iAdb8rPWpttoSXaOLFGJvg2ISB+P/gXcKa7KApsdcnRbgrWUsq
	 WN4A2l7SdPvdtsBtv6qnilwrsfYnxuw6ZLAMS+EZ+fdOI5dIcuYxImGZm7LUb6fzbU
	 l48+gvXF0THRrE27I1meLm6fEvVTrP3ZhcYSdxOAkBy3rhh80iY2S+RR+/7H3B+Z5/
	 z7iFdJJnfublVIKFwFvLikBQHl1BeVgqCm/2TSkvHBai/oSyOw4+g1nKrOGmSL+Bqu
	 uPqDhyJpDqgKkGgB3RJ/FaGbBlSfef+NEBkkZroSqUwlCoG5qKwdcNzUu1vQHA5FgN
	 uEa19rG2kQU7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9ABDC79F8C
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 08:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178894323368.29630.1044456537404807897.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e2d98f13853c073ffb9dba7dbd688f3cf53ad9be839bdc2cf34d50a744080c9
Date: Wed, 09 Sep 2026 08:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788943233
