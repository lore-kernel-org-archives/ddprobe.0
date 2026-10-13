Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F7802C11DF
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 12:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791895234; cv=none; b=pmdwJGUT3wMBK31XCZU1FvEbqlSzjzDRwZ/SPxXyYW127DlWdAaM9y2UjH8yTtZav2QgMaO0XQNiKCBD3Cighmb0gre+FW1mLf85KWZ+mrzLaa8YdZnClFVs7rvf3vz+lv0Pmy4nuB6jzv1pdR8UvCZpntH7J+P8bWcpNBu5W1s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791895234; c=relaxed/simple;
	bh=CJDBCP2VvFpa6ItOovmTquLeD2P9DWMYJIqvJR1rLN0=;
	h=To:Subject:From:Message-Id:Date; b=ZOPDee6Cv1LM7PjfSMO0+wa1vMu857dtyClu6kEylY/+Uspg+LrrD6TqRS+Vjpge/3CC3l48tO97aqB885PDbpzQEcjZp5Pq2fir4CfybALmDV2ZiMtGF3ILT6356XB3xc37Nu2ZULaPp2/AyGT9/bceK7u+g4Swqd5N3kUxjyM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IYMiUeQH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IYMiUeQH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1F0BC2BCF7
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 12:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791895233;
	bh=CJDBCP2VvFpa6ItOovmTquLeD2P9DWMYJIqvJR1rLN0=;
	h=To:Subject:From:Date:From;
	b=IYMiUeQHO021Vd8dtuZvZ6E63+Tszku6tdbvk1E6gsLhLfDO35jUmkKwWpuHbSN9l
	 Sn9jSislqHFilOnlmA+u5QmTxMw5HSbBuOOM0zSxSdZK1+kMMpSg8jRv2/ueKt6wsv
	 7mVtj/njgenKGCwxYFr0uELZQT7+jur6q6o9kC9FWwBw086hS300crzS0Ui2b6ZtlP
	 06iNvTKnFrhOnSpEtnslDIuVH4gOrwoWD2UJ1lvq77E8tsthCrpjofXiD4AEDXzkeW
	 CsCA7TcsbBV3JJyjz1J5l7pk5Znm+Q+XSP9pAGUzHtdXjNw87P0Im6JoAcfubN87I2
	 MWchnsQJSFyTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF5DECC6B03
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 12:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179189523370.9268.15540977534171389831.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81474d8cdecbfe387f9b434b50daa6e979425e87e1772a6b176e50276fc9f855
Date: Tue, 13 Oct 2026 12:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791895233
